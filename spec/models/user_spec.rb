require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) {User.create!(name: "Test User", email: "test@email.com", password_digest: "password")}
  
  #test for name
  it {is_expected.to validate_presence_of(:name)}
  it {is_expected.to validate_length_of(:name).is_at_least(1)}
  
  #test email
  it {is_expected.to validate_presence_of(:email)}
  it {is_expected.to validate_uniqueness_of(:email)}
  it {is_expected.to validate_length_of(:email).is_at_least(3)}
  it {is_expected.to allow_value("test@email.com").for(:email)}
  
  #test password
  it {is_expected.to validate_presence_of(:password)}
  it {is_expected.to have_secure_password}
  it {is_expected.to validate_length_of(:password).is_at_least(6)}
  
  describe "attributes" do
     it "should have name and email attributes" do
        expect(user).to have_attributes(name: "Test User", email:"test@email.com") 
     end
  end
  
  describe "invalid user" do
     let(:user_with_invalid_name){User.new(name: "", email: "test@email.com")}
     let(:user_with_invalid_email){User.new(name: "Test User", email: "")}
     
     it "should be an invalid user due to blank name" do
        expect(user_with_invalid_name).to_not be_valid 
     end
     
     it "should be an invalid email due to blank email" do
        expect(user_with_invalid_email).to_not be_valid 
     end
     
  end
end
