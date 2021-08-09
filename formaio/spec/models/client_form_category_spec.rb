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
require 'rails_helper'

RSpec.describe ClientFormCategory, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
