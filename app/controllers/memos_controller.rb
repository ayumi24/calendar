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

  def crate
  end

  def update
  end

end
