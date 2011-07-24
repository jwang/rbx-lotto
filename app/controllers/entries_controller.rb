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
      redirect_to(root_path, :notice => "Sorry, only 1 entry per name is allowed. Don't be evil.")
    else
      redirect_to(root_path, :notice => 'Thanks for Entering the RBX Lottery!')
    end
  end

  def show
    @entry = Entry.find(params[:id])
  end
  
  def pick
    winner = Entry.pick_winner
    redirect_to(root_path, :notice => "Winner is #{winner.name}")
  end
  
end
