class BoardsController < ApplicationController
  # 掲示板の一覧を表示
  def index
    @boards = Board.all
  end

  #新しい掲示板のフォーム
  def new
    @board = Board.new
  end
  
  # 新しい掲示板の設定内容のデータ保存
  def create
    @board = Board.new(params_board)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  #掲示板の内容ページの表示
  def show
    @board = Board.find(params[:id])
  end

  
  # 掲示板の削除
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to boards_path
  end
  
  # 掲示板の設定の編集ページの表示
  def edit
    @board = Board.find(params[:id])
  end

  # 掲示板の設定の編集内容の適用
  def update
    @board = Board.find(params[:id])
    if @board.update(params_board)
      redirect_to board_path(@board)
    else
      render :edit
    end
  end

  private
  def params_board
    params.require(:board).permit(:title, :editor)
  end
end
