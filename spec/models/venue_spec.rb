require 'rails_helper'

RSpec.describe Venue, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:famous_dish) }

    end

    describe "InDirect Associations" do

    it { should have_one(:user) }

    end

    describe "Validations" do

    end
end
