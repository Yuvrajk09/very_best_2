require "rails_helper"

RSpec.describe Cuisine, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:dish) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
