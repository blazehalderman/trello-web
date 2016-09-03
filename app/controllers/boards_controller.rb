class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def edit
  @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def destroy
  @board = board.find(params[:id])
  @board.destroy

  redirect_to posts_path
end

  private
    def board_params
      params.require(:board).permit(:title)
    end
end
