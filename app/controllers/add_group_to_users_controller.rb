class AddGroupToUsersController < ApplicationController
  # GET /add_group_to_users
  # GET /add_group_to_users.json
  def index
    @add_group_to_users = AddGroupToUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_group_to_users }
    end
  end

  # GET /add_group_to_users/1
  # GET /add_group_to_users/1.json
  def show
    @add_group_to_user = AddGroupToUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_group_to_user }
    end
  end

  # GET /add_group_to_users/new
  # GET /add_group_to_users/new.json
  def new
    @add_group_to_user = AddGroupToUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_group_to_user }
    end
  end

  # GET /add_group_to_users/1/edit
  def edit
    @add_group_to_user = AddGroupToUser.find(params[:id])
  end

  # POST /add_group_to_users
  # POST /add_group_to_users.json
  def create
    @add_group_to_user = AddGroupToUser.new(params[:add_group_to_user])

    respond_to do |format|
      if @add_group_to_user.save
        format.html { redirect_to @add_group_to_user, notice: 'Add group to user was successfully created.' }
        format.json { render json: @add_group_to_user, status: :created, location: @add_group_to_user }
      else
        format.html { render action: "new" }
        format.json { render json: @add_group_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_group_to_users/1
  # PUT /add_group_to_users/1.json
  def update
    @add_group_to_user = AddGroupToUser.find(params[:id])

    respond_to do |format|
      if @add_group_to_user.update_attributes(params[:add_group_to_user])
        format.html { redirect_to @add_group_to_user, notice: 'Add group to user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_group_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_group_to_users/1
  # DELETE /add_group_to_users/1.json
  def destroy
    @add_group_to_user = AddGroupToUser.find(params[:id])
    @add_group_to_user.destroy

    respond_to do |format|
      format.html { redirect_to add_group_to_users_url }
      format.json { head :no_content }
    end
  end
end
