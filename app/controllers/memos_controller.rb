class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def create
    memo = Memo.new(memo_params)
    memo.save
    redirect_to root_path
  end

  def update
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :content, :start_time)
  end

end
