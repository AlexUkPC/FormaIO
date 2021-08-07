# == Schema Information
#
# Table name: client_form_types
#
#  id          :bigint           not null, primary key
#  description :text
#  is_activ    :boolean
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ClientFormType < ApplicationRecord
  has_many :sections, class_name: "ClientFormSection", dependent: :destroy
  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
  has_many :client_form
end
