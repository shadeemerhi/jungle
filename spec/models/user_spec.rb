require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validations" do 
    it "should validate that password and password_confirmation match" do
      @user = User.create(first_name: "Shadee", last_name: "Merhi", email: 'shadmerhi@gmail.com', password: 'testing', password_confirmation: 'testing')
      expect(@user).to be_valid
    end

    it "should validate that password and password_confirmation match" do
      @user = User.create(first_name: "Test", last_name: "Testing", email: 'testing@gmail.com', password: 'testing', password_confirmation: 'testing2')
      expect(@user).to be_invalid
    end

    it "should validate a unique email" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'testing', password_confirmation: 'testing')
      @user2 = User.create(first_name: 'Test2', last_name: 'Testing2', email: 'TEST@TEST.com', password: 'testing', password_confirmation: 'testing')
      expect(@user2).to be_invalid

    end

    it "should validate that the password has minimum length of 6" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'test', password_confirmation: 'test')
      expect(@user1).to be_invalid
    end

  end

  describe '.authenticate_with_credentials' do

    it "returns the user when login credentials match" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'testing', password_confirmation: 'testing')
      @user2 = User.authenticate_with_credentials('test@test.COM', 'testing')
      expect(@user1).to eq(@user2)
    end

    it "returns nil when the credentials do not match" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'testing', password_confirmation: 'testing')
      @user2 = User.authenticate_with_credentials('test@test.COM', 'testingwrong')
      expect(@user2).to eq nil
    end

    it "validates user in with the right email but uppercase" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'testing', password_confirmation: 'testing')
      @user2 = User.authenticate_with_credentials('TEST@TEST.COM', 'testing')
      expect(@user1).to eq(@user1)
    end

    it "validates user in with the right email but with whitespace" do
      @user1 = User.create(first_name: 'Test', last_name: 'Testing', email: 'test@test.COM', password: 'testing', password_confirmation: 'testing')
      @user2 = User.authenticate_with_credentials('  TEST@TEST.COM      ', 'testing')
      expect(@user1).to eq(@user1)
    end

  end
  
end
