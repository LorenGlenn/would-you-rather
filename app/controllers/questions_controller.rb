class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @user = current_user
  end

  def create
    @user = current_user
    @question = @user.questions.new(question_params)
    if @question.save
      flash[:notice] = "Question saved!"
      redirect_to root_path
    else
      flash[:alert] = "Question not saved!"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    @user = current_user
  end

  def update
    @question = Question.find(params[:id])
    @user = current_user
    if @question.update(question_params)
      flash[:notice] = "Question updated!"
      redirect_to root_path
    else
      flash[:notice] = "Question not updated!"
      render :edit
    end
  end

private
  def question_params
    params.require(:question).permit(:option_1, :option_2, :user_id)
  end
end
