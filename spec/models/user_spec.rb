require 'rails_helper'

describe User do

  it "is valid with nickname, email, password" do
    u = User.new(nickname: "Иван", email:"tk89@gmail.com", password:"654321")
    expect(u).to be_valid
  end

  it "is invalid without nickname" do
    u = User.new(nickname: nil, email:"tk89@gmail.com", password:"654321")
    expect(u).not_to be_valid
  end

  it "is invalid without email" do
    u = User.new(nickname: "Иван", email: nil, password:"654321")
    expect(u).not_to be_valid
  end

  it "is invalid without password" do
    u = User.new(nickname: "Иван", email:"tk89@gmail.com", password: nil)
    expect(u).not_to be_valid
  end

end

