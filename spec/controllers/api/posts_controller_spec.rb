require 'rails_helper'

describe Api::PostsController do

  before do
    @user = User.create(nickname:"Максим", email:"maxsim.ageev@gmail.com", password:"123456", password_confirmation:"123456")
    @posts = []
    @post1 = Post.create(author: @user, title:"1", body:"11", published_at:"")
    @post2 = Post.create(author: @user, title:"2", body:"22", published_at:"")
    @posts << @post1
    @posts << @post2
  end

  describe 'GET #index' do
    it "renders with json" do
      get :index
      response.body.should == @posts.to_json
    end

  end

  describe 'GET #show' do

    it "renders show with json" do
      get :show, id: @post1.id
      response.body.should == @post1.to_json
    end

    # it "renders 404page if post is not found" do
    #   get :show, id: 0
    #   response.status.should == 404
    # end

  end

  # describe 'POST #create' do
  #   it "does something upon post#create" do
  #     post :create, post: attributes_for(:post)
  #   end
  # end

end