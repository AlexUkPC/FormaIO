# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  phone_number           :string
#  provider               :string(50)       default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  uid                    :string(500)      default(""), not null
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
require "rails_helper"
RSpec.describe User, type: :model do
  describe "#valid?" do
    it "is valid when email is unique" do
      user1 = create(:user)
      user = User.new
      user.email = "adam@example.org"
      user.username = "adam"
      user.password = "parola"
      expect(user.valid?).to be true 
    end  
    it "is invalid if the email is taken" do
      create(:user, email: "adam@example.org" )
      user = User.new
      user.email = "adam@example.org"
      user.username = "adam"
      user.password = "parola"
      expect(user).not_to be_valid
    end
    it "is invalid if the username is taken" do
      user = create(:user)
      another_user = create(:user)
      expect(another_user).to be_valid
      another_user.username = user.username
      expect(another_user).not_to be_valid
    end
    it "is invalid if the username is blank" do
      user = create(:user)
      expect(user).to be_valid
      user.username = ""
      expect(user).not_to be_valid
      user.username = nil
      expect(user).not_to be_valid
    end
    it "is invalid if the email looks bogus" do
      user = create(:user)
      expect(user).to be_valid
      user.email = ""
      expect(user).to be_invalid  
      user.email = "foo.bar"
      expect(user).to be_invalid  
      user.email = "foo.bar#example.com"
      expect(user).to be_invalid  
      user.email = "f.o.o.b.a.r@example.com"
      expect(user).to be_valid  
      user.email = "foo+bar@example.com"
      expect(user).to be_valid  
      user.email = "foo.bar@example.co.id"
      expect(user).to be_valid 
    end
  end
end
