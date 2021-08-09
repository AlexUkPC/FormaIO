# == Schema Information
#
# Table name: client_form_categories
#
#  id          :bigint           not null, primary key
#  color       :string
#  description :text
#  icon        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ClientFormCategory < ApplicationRecord
  has_and_belongs_to_many :client_form_types
end
