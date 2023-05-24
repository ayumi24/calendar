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
    redirect_to root_path, notice:"記録しました！"
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to memo_path(memo.id), notice:"記録を編集しました！"
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to root_path, notice:"記録を削除しました"
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :content, :start_time)
  end

end
