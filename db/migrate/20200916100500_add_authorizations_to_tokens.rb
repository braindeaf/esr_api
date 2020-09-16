# frozen_string_literal: true

class AddAuthorizationsToTokens < ActiveRecord::Migration[6.0]
  def change
    add_column :tokens, :authorized_absence_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_absence_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_assignment_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_assignment_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_competency_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_competency_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_costing_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_costing_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_disability_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_disability_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_element_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_element_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_location_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_location_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_organisation_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_organisation_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_person_eit_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_person_eit_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_person_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_person_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_position_eit_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_position_eit_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_position_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_position_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_qualification_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_qualification_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_sit_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_sit_records_attributes, :string, default: '', null: false
    add_column :tokens, :authorized_training_absence_records_actions, :string, default: '', null: false
    add_column :tokens, :authorized_training_absence_records_attributes, :string, default: '', null: false
  end
end
