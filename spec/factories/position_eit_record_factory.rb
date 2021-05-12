# == Schema Information
#
# Table name: position_eit_records
#
#  id                            :bigint           not null, primary key
#  Position ID                   :string(255)
#  Position Extra Information ID :string(255)
#  Information Type              :string(255)
#  POEI_INFORMATION_CATEGORY     :string(255)
#  POEI_INFORMATION1             :string(255)
#  POEI_INFORMATION2             :string(255)
#  POEI_INFORMATION3             :string(255)
#  POEI_INFORMATION4             :string(255)
#  POEI_INFORMATION5             :string(255)
#  POEI_INFORMATION6             :string(255)
#  POEI_INFORMATION7             :string(255)
#  POEI_INFORMATION8             :string(255)
#  POEI_INFORMATION9             :string(255)
#  POEI_INFORMATION10            :string(255)
#  POEI_INFORMATION11            :string(255)
#  POEI_INFORMATION12            :string(255)
#  POEI_INFORMATION13            :string(255)
#  POEI_INFORMATION14            :string(255)
#  POEI_INFORMATION15            :string(255)
#  POEI_INFORMATION16            :string(255)
#  POEI_INFORMATION17            :string(255)
#  POEI_INFORMATION18            :string(255)
#  POEI_INFORMATION19            :string(255)
#  POEI_INFORMATION20            :string(255)
#  POEI_INFORMATION21            :string(255)
#  POEI_INFORMATION22            :string(255)
#  POEI_INFORMATION23            :string(255)
#  POEI_INFORMATION24            :string(255)
#  POEI_INFORMATION25            :string(255)
#  POEI_INFORMATION26            :string(255)
#  POEI_INFORMATION27            :string(255)
#  POEI_INFORMATION28            :string(255)
#  POEI_INFORMATION29            :string(255)
#  POEI_INFORMATION30            :string(255)
#  ATTRIBUTE_CATEGORY            :string(255)
#  POEI_ATTRIBUTE1               :string(255)
#  POEI_ATTRIBUTE2               :string(255)
#  POEI_ATTRIBUTE3               :string(255)
#  POEI_ATTRIBUTE4               :string(255)
#  POEI_ATTRIBUTE5               :string(255)
#  POEI_ATTRIBUTE6               :string(255)
#  POEI_ATTRIBUTE7               :string(255)
#  POEI_ATTRIBUTE8               :string(255)
#  POEI_ATTRIBUTE9               :string(255)
#  POEI_ATTRIBUTE10              :string(255)
#  POEI_ATTRIBUTE11              :string(255)
#  POEI_ATTRIBUTE12              :string(255)
#  POEI_ATTRIBUTE13              :string(255)
#  POEI_ATTRIBUTE14              :string(255)
#  POEI_ATTRIBUTE15              :string(255)
#  POEI_ATTRIBUTE16              :string(255)
#  POEI_ATTRIBUTE17              :string(255)
#  POEI_ATTRIBUTE18              :string(255)
#  POEI_ATTRIBUTE19              :string(255)
#  POEI_ATTRIBUTE20              :string(255)
#  Last Update Date              :datetime
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#
FactoryBot.define do
  factory :position_eit_record, class: 'PositionEitRecord' do
    id { Faker::Number.unique.number }
    send('Position Extra Information ID') { Faker::Number.unique.number }
  end
end
