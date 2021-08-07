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
require 'rails_helper'

RSpec.describe ClientFormType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
