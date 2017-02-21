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
    @question = @user.questions.create(question_params)
      respond_to  do |format|
        format.html { redirect_to root_path }
        format.js
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

  def show
    @question = Question.find(params[:id])
    respond_to  do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end

private
  def question_params
    params.require(:question).permit(:option_1, :option_2, :user_id, :avatar, :avatar2)
  end
end
