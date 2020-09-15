require 'swagger_helper'

describe 'Api::V1::AbsenceRecordResource', type: :request, swagger_doc: 'v1/swagger.json' do
  let(:absence_record) { create(:absence_record) }
  let(:response_data) { JSON.parse(response.body)['data'] }

  path '/api/v1/absence_records/{id}' do
    get 'absence record' do
      tags 'AbsenceRecord'
      security [{ JWT: {} }]
      produces 'application/vnd.api+json'
      parameter name: :id, in: :path, type: :string, required: true

      let(:id) { absence_record.id }

      context 'when not authenticated' do
        let(:Authorization) { nil }

        response '401', 'Error: Unauthorized' do
          schema '$ref' => '#/definitions/error_401'

          run_test!
        end
      end

      context 'when an admin' do
        let(:token) { create(:token) }
        let(:Authorization) { "Bearer #{token.token}" }

        response '200', 'successful' do
          schema '$ref' => '#/definitions/absence_record_response'

          describe 'attributes match database values' do
            run_test! do
              response_data['attributes'].each do |key, value|
                if absence_record.send(key).is_a?(Time)
                  expect(absence_record.send(key).strftime('%Y-%m-%dT%H:%M:%S.000Z')).to eq(value.to_s)
                else
                  expect(absence_record.send(key).to_s).to eq(value.to_s)
                end
              end
            end
          end
        end
      end
    end
  end
end
