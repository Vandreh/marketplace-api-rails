# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # before { @user = FactoryBot.build(:user) }
  # subject { @user }
  let(:user) { FactoryBot.build(:user) }
  subject { user }

  context 'Users' do
    describe 'When respond to email, password, etc' do
      it { should respond_to(:email) }
      it { should respond_to(:password) }
      it { should respond_to(:password_confirmation) }
    end

    describe 'When email is present' do
      it { should be_valid }
    end

    describe 'When email is not present' do
      # it { should validate_uniqueness_of(:email) }
      it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }

      it { should validate_confirmation_of(:password) }
      it { should validate_presence_of(:email) }
      it { should allow_value('email@domain.com').for(:email) }
    end
  end
end
