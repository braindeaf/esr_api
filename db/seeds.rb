# Import some test data for demonstration purposes.
FakeDataJob.perform_later(klass: 'AbsenceRecord', quantity: 500)
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_assignment_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_competency_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_costing_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_disability_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_element_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_location_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_organisation_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_person_eit_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_person_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_position_eit_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_position_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_qualification_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_sit_record.DAT')
ImportFileJob.perform_later(filename: 'spec/fixtures/files/add_training_absence_record.DAT')
