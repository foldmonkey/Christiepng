require "rails_helper"

RSpec.describe User, :type => :model do
  subject { described_class.new(password: "password", email: "panda@hacker.com") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to be_valid
    end
  end

  describe "Associations" do
  	 it "should have many products" do
      User.reflect_on_association(:products).macro.should   eq(:has_many)
    end
  end
end