class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  def new
    @portfolio = Portfolio.new
  end

  def show
    @portfolio = set_portfolio
  end

  def index
    @portfolios = Portfolio.all.order("created_at DESC")
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    return redirect_to new_portfolio_path, notice: @portfolio.errors.full_messages.to_setence unless @portfolio.valid?
    @portfolio.save!
    redirect_to portfolio_path(@portfolio), notice: "Data #{@portfolio.name_company} was successfully created."
  end

  def update;end
  def edit;end
  def destroy;end

  private
    def set_portfolio
      @portfoliopo= Portfolio.find(params[:id])
    end

    def handle_record_rot_found
      redirect_to new_portfolio_path, notice: 'Maaf, halaman tidak ditemukan!'
    end

    def portfolio_params
      params.require(:portfolio).permit(:name_company, :company_website, :description)
    end
end
