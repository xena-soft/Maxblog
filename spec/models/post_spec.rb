require 'rails_helper'

describe Post do

  before(:all) do
    @user = User.create(nickname:"Максим", email:"maxsim.ageev@gmail.com", password:"123456", password_confirmation:"123456")
    @post = Post.new(author: @user, title: "новости", body:"blabla")
  end

  it "is valid with author" do
    p = @post
    expect(p).to be_valid
  end

  it "is invalid without author" do
    p = Post.new(author: nil, title:"новости", body:"blabla")
    expect(p).not_to be_valid
  end

  it "is invalid without title" do
    p = Post.new(title: nil, body:"blabla")
    expect(p).not_to be_valid
  end

  it "is invalid without body" do
    p = Post.new(title: "Событие", body: nil)
    expect(p).not_to be_valid
  end

end