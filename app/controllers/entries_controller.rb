class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    #@winners = Entry.winners
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(params[:entry])
   
    if !@entry.save
      render :action => "new"
    else
      redirect_to(root_path, :notice => 'Thanks for Entering the RBX Lottery!')
    end
  end

  def show
    @entry = Entry.find(params[:id])
    #if @profile.nil?
    #  redirect_to :action => "new"
    #end
  end
  
end
