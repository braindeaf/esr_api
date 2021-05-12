# == Schema Information
#
# Table name: person_eit_records
#
#  id                          :bigint           not null, primary key
#  Person ID                   :string(255)
#  Person Extra Information ID :string(255)
#  Information Type            :string(255)
#  PEI_INFORMATION_CATEGORY    :string(255)
#  PEI_INFORMATION1            :string(255)
#  PEI_INFORMATION2            :string(255)
#  PEI_INFORMATION3            :string(255)
#  PEI_INFORMATION4            :string(255)
#  PEI_INFORMATION5            :string(255)
#  PEI_INFORMATION6            :string(255)
#  PEI_INFORMATION7            :string(255)
#  PEI_INFORMATION8            :string(255)
#  PEI_INFORMATION9            :string(255)
#  PEI_INFORMATION10           :string(255)
#  PEI_INFORMATION11           :string(255)
#  PEI_INFORMATION12           :string(255)
#  PEI_INFORMATION13           :string(255)
#  PEI_INFORMATION14           :string(255)
#  PEI_INFORMATION15           :string(255)
#  PEI_INFORMATION16           :string(255)
#  PEI_INFORMATION17           :string(255)
#  PEI_INFORMATION18           :string(255)
#  PEI_INFORMATION19           :string(255)
#  PEI_INFORMATION20           :string(255)
#  PEI_INFORMATION21           :string(255)
#  PEI_INFORMATION22           :string(255)
#  PEI_INFORMATION23           :string(255)
#  PEI_INFORMATION24           :string(255)
#  PEI_INFORMATION25           :string(255)
#  PEI_INFORMATION26           :string(255)
#  PEI_INFORMATION27           :string(255)
#  PEI_INFORMATION28           :string(255)
#  PEI_INFORMATION29           :string(255)
#  PEI_INFORMATION30           :string(255)
#  ATTRIBUTE_CATEGORY          :string(255)
#  PEI_ATTRIBUTE1              :string(255)
#  PEI_ATTRIBUTE2              :string(255)
#  PEI_ATTRIBUTE3              :string(255)
#  PEI_ATTRIBUTE4              :string(255)
#  PEI_ATTRIBUTE5              :string(255)
#  PEI_ATTRIBUTE6              :string(255)
#  PEI_ATTRIBUTE7              :string(255)
#  PEI_ATTRIBUTE8              :string(255)
#  PEI_ATTRIBUTE9              :string(255)
#  PEI_ATTRIBUTE10             :string(255)
#  PEI_ATTRIBUTE11             :string(255)
#  PEI_ATTRIBUTE12             :string(255)
#  PEI_ATTRIBUTE13             :string(255)
#  PEI_ATTRIBUTE14             :string(255)
#  PEI_ATTRIBUTE15             :string(255)
#  PEI_ATTRIBUTE16             :string(255)
#  PEI_ATTRIBUTE17             :string(255)
#  PEI_ATTRIBUTE18             :string(255)
#  PEI_ATTRIBUTE19             :string(255)
#  PEI_ATTRIBUTE20             :string(255)
#  Last Update Date            :datetime
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
describe PersonEitRecord, type: :model do
  it { expect(PersonEitRecord.new).to be_valid }
end
