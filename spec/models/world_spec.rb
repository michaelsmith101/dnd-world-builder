require 'rails_helper'

RSpec.describe World, type: :model do
  let (:campaign) {Campaign.create!(title:"New Campaign Title", description:"New Campaign Description")}
  let (:world) {World.create!(title: "New World Title", description: "New World Description")}
  
  describe "attributes" do 
     it "has title and description attributes" do
        expect(world).to have_attributes(title: "New World Title", description: "New World Description") 
     end
  end
end
