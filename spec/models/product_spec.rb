require "rails_helper"

RSpec.describe Product, type: :model do

  before(:each) do
    @user = User.create!(password: "password", email: "panda@hacker.com")
    @product = Product.create!(description: "Dress", color: "Red", category: "Dress", price: "100", user_id: @user.id)
  end

  context "validation" do
  	it "is valid with valid attributes" do
      expect(@product).to be_valid
    end

    it "is not valid without a password" do
      @product.description = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a color" do
      @product.color = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a category" do
      @product.category = nil
      expect(@product).to_not be_valid
    end

    it "is not valid without a price" do
      @product.price = nil
      expect(@product).to_not be_valid
    end

  end

  describe "association" do
    it "should have a user" do
      Product.reflect_on_association(:user).macro.should   eq(:belongs_to)
    end
  end

end