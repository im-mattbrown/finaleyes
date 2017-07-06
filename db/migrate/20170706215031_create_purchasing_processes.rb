class CreatePurchasingProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :purchasing_processes do |t|
      t.text :notice
      t.text :publitcity
      t.text :parties
      t.text :deviations_and_exceptions
      t.text :preaward_conference_information
      t.text :duration_of_offer
      t.text :response_costs
      t.text :proposal_rejection_and_waiver_of_informalities
      t.text :discussions
      t.text :inquiries
      t.text :problem_resolution
      t.text :reimbursements
      t.references :rfp, foreign_key: true

      t.timestamps
    end
  end
end
