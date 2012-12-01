class UserVotesController < ApplicationController
  # GET /user_votes
  # GET /user_votes.json
  def index
    @user_votes = UserVote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_votes }
    end
  end

  # GET /user_votes/1
  # GET /user_votes/1.json
  def show
    @user_vote = UserVote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_vote }
    end
  end

  # GET /user_votes/new
  # GET /user_votes/new.json
  def new
    @user_vote = UserVote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_vote }
    end
  end

  # GET /user_votes/1/edit
  def edit
    @user_vote = UserVote.find(params[:id])
  end

  # POST /user_votes
  # POST /user_votes.json
  def create
    @user_vote = UserVote.new(params[:user_vote])

    respond_to do |format|
      if @user_vote.save
        format.html { redirect_to @user_vote, notice: 'User vote was successfully created.' }
        format.json { render json: @user_vote, status: :created, location: @user_vote }
      else
        format.html { render action: "new" }
        format.json { render json: @user_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_votes/1
  # PUT /user_votes/1.json
  def update
    @user_vote = UserVote.find(params[:id])

    respond_to do |format|
      if @user_vote.update_attributes(params[:user_vote])
        format.html { redirect_to @user_vote, notice: 'User vote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_votes/1
  # DELETE /user_votes/1.json
  def destroy
    @user_vote = UserVote.find(params[:id])
    @user_vote.destroy

    respond_to do |format|
      format.html { redirect_to user_votes_url }
      format.json { head :no_content }
    end
  end
end
