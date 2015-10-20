require 'rails_helper'

RSpec.describe User, type: :model do
  context "access code" do
    let (:organization) { Organization.create title: "test", access_code: "test" }
    let (:user) { User.new email: "test@test.test", password: "testing123" }

    it "should be valid with an organization access code" do
      user.access_code = organization.access_code
      expect(user).to be_valid
    end

    it "should be invalid if there is no access code" do
      user.access_code = ""
      expect(user).not_to be_valid
    end

    it "should be invalid if the access code does not match an existing organization" do
      user.access_code = "chumbawumba"
      expect(user).not_to be_valid
    end

    it "should not check access code on update" do
      user.access_code = organization.access_code
      user.save

      user.update_attributes({email: "new@new.new", access_code: "chumbawumba"})
      expect(user).to be_valid
    end

  end
end
