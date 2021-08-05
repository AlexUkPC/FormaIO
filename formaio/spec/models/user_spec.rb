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