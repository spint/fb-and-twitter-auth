class UsersController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save do |result|
      if result
        flash[:notice] = "Account Registered !"
        redirect_back_or_default account_url
      else
        render :action => :new
      end
    end
  end

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  def destroy
    @user = @current_user
    @user.destroy
    
    flash[:notice] = "Account deleted!"
    redirect_to '/'
  end
  
end