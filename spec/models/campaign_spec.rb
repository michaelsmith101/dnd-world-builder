require 'rails_helper'

RSpec.describe Campaign, type: :model do
  let(:campaign) {Campaign.create!(title: "New Campaign", description: "New Campaign Body")}
  
  describe "attributes" do
     it "has title and description attributes" do
        expect(campaign).to have_attributes(title: "New Campaign", description: "New Campaign Body") 
     end
  end
end
