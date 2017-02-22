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
      expect(response).to have_http_status(200)
    end

    it "responds with json" do
      get :index
      expect(response.body).to eq (@posts.to_json)
    end

  end

  describe 'GET #show' do

    it "responds successfully with an HTTP 200 status code" do
      get :show, id: @post1.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

  end

  describe 'POST #create' do

  end

end