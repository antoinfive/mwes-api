module Api::V1
  class AccountsController < ApplicationController 
    def index 
      @accounts = Account.all 
      render json: @accounts
    end

    def show 
      @account = Account.find params[:id] 
      render json: @account, serializer: AccountShowSerializer 
    end
  end
end
