require 'swagger_helper'

describe 'Api::V1::AbsenceRecordResource', type: :request, swagger_doc: 'v1/swagger.json' do
  let!(:absence_record) { create(:absence_record) }
  let!(:absence_record2) { create(:absence_record) }
  let(:response_data) { JSON.parse(response.body)['data'] }

  path '/api/v1/absence_records' do
    get 'absence records' do
      tags 'AbsenceRecord'
      security [{ JWT: {} }]
      produces 'application/vnd.api+json'
      parameter name: 'page[size]', in: :query, type: :integer, required: false
      parameter name: 'page[number]', in: :query, type: :integer, required: false

      let!(:'page[size]') { 2 }
      let!(:'page[number]') { 1 }

      context 'when not authenticated' do
        let(:Authorization) { nil }

        before do
          module SecuredWithToken
            def authenticate_request!
              render json: { errors: ['Not Authenticated'] }, status: :unauthorized
            end
          end
        end

        response '401', 'Error: Unauthorized' do
          schema '$ref' => '#/definitions/error_401'

          run_test!
        end

        after do
          # Reset Auth after test.
          module SecuredWithToken
            def authenticate_request!
              true
            end
          end
        end
      end

      context 'when an admin' do
        let(:Authorization) { 'Bearer dummy_json_web_token' }

        response '200', 'successful' do
          schema '$ref' => '#/definitions/absence_records_response'

          describe 'attributes match database values' do
            run_test! do
              expect(response_data.count).to eq(2)
              database_record = AbsenceRecord.find(response_data.first['id'])
              response_data.first['attributes'].each do |key, value|
                if database_record.send(key).is_a?(Time)
                  expect(database_record.send(key).strftime('%Y-%m-%dT%H:%M:%S.000Z')).to eq(value.to_s)
                else
                  expect(database_record.send(key).to_s).to eq(value.to_s)
                end
              end
            end
          end

          context 'with 1 result per page' do
            let!(:'page[size]') { 1 }
            let!(:'page[number]') { 2 }

            run_test! do
              expect(response_data.length).to eq(1)
            end
          end
        end
      end
    end
  end
end
