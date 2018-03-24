class MemosController < ApplicationController

  def index
    @memos = Memo.order("id DESC").page(params[:page]).per(5)
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to controller: :memos, action: :index
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to controller: :memos, action: :index
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to controller: :memos, action: :index
  end

  private
  def memo_params
    params.require(:memo).permit(:title, :text, :image)
  end
end
