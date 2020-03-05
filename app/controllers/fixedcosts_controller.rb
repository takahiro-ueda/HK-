class FixedcostsController < ApplicationController

  def index
    @fixedcosts = Fixedcosts.order(created_at: :asc)
  end

  def show
    @fixedcosts = Fixedcosts.find(params[:id])
  end

  def new
    @fixedcosts = Fixedcosts.new()
  end

  def edit
    @fixedcosts = Fixedcosts.find(params[:id])
  end

  def create
    @fixedcosts = Fixedcosts.new(params[:fixedcosts])
    if @fixedcosts.save
      redirect_to @fixedcost, notice: "固定費科目を登録しました"
    else
      render "new"
    end
  end

  def update
    @fixedcosts = Fixedcost.find([:id])
    @fixedcosts.assign_attributes(params[:fixedcosts])
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目を登録しました"
    else
      render "new"
    end
  end

  def destroy
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.destroy
    rdirect_to :fixedcosts, notice: "科目を削除しました"
  end
end
