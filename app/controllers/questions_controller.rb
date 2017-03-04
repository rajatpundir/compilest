class QuestionsController < ApplicationController

  before_action :confirm_logged_in
  before_action :is_superuser

  # READ ACTIONS
  def index
    @questions = Question.all.sorted
  end

  def show
    @question = Question.find(params[:id])
  end

  # CREATE ACTIONS
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(:description=> params[:question][:description], :answer => params[:question][:answer], :one => params[:question][:one], :two => params[:question][:two], :three => params[:question][:three])
    if @question.save
      flash[:success] = "Question created successfully."
      redirect_to(questions_path)
    else
      flash[:danger].now = "Question form error."
      render 'new'
    end
  end

  # UPDATE ACTIONS
  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to (questions_path)
    else
      render 'edit'
    end
  end

  # DELETE ACTIONS
  def delete
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:success] = "Question '#{@question.id}' deleted successfully."
    redirect_to(questions_path)
  end

  private

  def question_params
    params.require(:question).permit(:description, :answer, :one, :two, :three)
  end

end
