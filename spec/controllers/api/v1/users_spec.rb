require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  # let(:each) { request.headers['Accept'] = 'application/vnd.marketplace.v1' }
  # before(:each) do
    # binding.pry # debug
    # request.headers['Accept'] = 'application/vnd.marketplace.v1'
  # end

  # describe 'GET /index' do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end

  describe 'GET /show' do
    before(:each) do
      @user = FactoryBot.create :user # @user = FactoryBot.create(:user)
      # binding.pry
      get :show, params: { id: @user.id }, format: :json
    end

    it 'return  the information about a reporter on a hash' do
      user_response = JSON.parse(response.body, symbolize_names: true) # JSON.parse convert "JSON" to a "hash"
      # print response.body   {"id":30,"email":"jessica@wolf.com","created_at":"2024-05-20T17:39:02.219Z","updated_at":"2024-05-20T17:39:02.219Z"}
      # print user_response   {:id=>30, :email=>"jessica@wolf.com", :created_at=>"2024-05-20T17:39:02.219Z", :updated_at=>"2024-05-20T17:39:02.219Z"}
      expect(user_response[:email]).to eq @user.email
    end

    it { should respond_with :ok }
  end
end
