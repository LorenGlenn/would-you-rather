class AnswersController < ApplicationController

  def create
    if params[:option_1]
      @question = Question.find(params[:question_id])
      @user = current_user
      @answer = @question.answers.create!(:user_id => current_user.id, :option_1 => true)
      @question.liked_by @user
      @question.save
      flash[:notice] = "Answer Saved"
      respond_to  do |format|
        format.html { redirect_to root_path }
        format.js
      end
    elsif params[:option_2]
      @question = Question.find(params[:question_id])
      @user = current_user
      @answer = @question.answers.create!(:user_id => current_user.id, :option_2 => true)
      @question.disliked_by @user
      @question.save
      flash[:notice] = "Answer Saved"
      respond_to  do |format|
        format.html { redirect_to root_path }
        format.js
      end
      else
        flash[:notice] = "Answer not Saved"
        redirect_to user_questions_path(current_user, @question)
    end
  end
end
