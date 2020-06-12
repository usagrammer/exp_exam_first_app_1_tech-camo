require 'rails_helper'
describe PostsController, type: :request do

  before do
    @post = FactoryBot.build(:post)
  end

  describe "GET #index" do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end

    it "indexアクションにリクエストするとレスポンスに投稿済みのポストのテキストが存在する" do
      get root_path
      expect(response.body).to include @post.content
    end
  end

end
