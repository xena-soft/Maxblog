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

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq 200
    end

    it "returns all the posts" do
      get :index
      expect(@posts).to match_array([@post1,@post2])
    end

  end

  describe 'GET #show' do

    it "responds successfully with an HTTP 200 status code" do
      get :show, params: { id: @post1.id }
      expect(response).to be_success
      expect(response.status).to eq 200

    end

    it "return post1" do
      get :show, params: { id: @post1.id }
      body = JSON.parse(response.body)
      expect(body["title"]).to eq "1"
    end

  end

  describe 'POST #create' do
    # it "creates a post" do
    #   post_params = @post1.to_json
    #
    #   request_headers = {
    #       "Accept": "application/json",
    #       "Content-Type": "application/json"
    #   }
    #
    #   post :create, post_params, request_headers
    #   expect(response.status).to eq "201" # created
    #   expect(@post1.title).to eq "1"
    # end
  end

end