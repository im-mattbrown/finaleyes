class Rfp < ApplicationRecord
  has_one :additional_document
  has_one :application_record
  has_one :contract_term
  has_one :dates
  has_one :definition
  has_one :organization_info
  has_one :proposer_and_seller_info
  has_one :purchasing_processes
  has_one :rfp_detail
  has_one :selection
  has_one :t_o_c
end
