class RecruitmentsController < ApplicationController
  before_action :list_recruitment, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  def index
    @recruitments = Recruitment.all.order("created_at DESC")
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    return redirect_to new_recruitment_path, notice: @recruitment.errors.full_messages.to_setence unless @recruitment.valid?
    @recruitment.save!
    redirect_to recruitment_path(@recruitment), notice: "Data #{@recruitment.first_name} was successfully created."
  end

  def show
    @recruitment = list_recruitment
  end

  def edit;end

  def update
    if @recruitment.update(recruitment_params)
      redirect_to @recruitment, notice: "Data #{@recruitment.first_name} was successfully updated."

      render :edit
    end
  end

  def destroy
    @recruitment.destroy

    respond_to do |format|
      format.html {redirect_to recruitments_url, notice: "Data #{@recruitments.first_name} was successfully destroyed."}
    end
  end

  private

    def list_recruitment
      @recruitment = Recruitment.find(params[:id])
    end

    def recruitment_params
      params.require(:recruitment).permit(:first_name, :last_name, :email, :phone_number, :address)
    end
end
