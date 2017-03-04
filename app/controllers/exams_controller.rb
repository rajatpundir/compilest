class ExamsController < ApplicationController

  before_action :confirm_logged_in

  def index
    user = AdminUser.find(session[:user_id])
    questions = Question.ids.map(&:to_s)
    answers = user.answered.split
    difference = questions - answers
    if difference.size != 0
      @question = Question.find(difference[rand(0...(difference.size))])
      new_answered = user.answered + @question.id.to_s + " "
      if (user.score == -1)
        user.update_attribute(:created_at, Time.now)
        user.update_attribute(:score, 0)
      end
      user.update_attribute(:answered, new_answered)
    else
      redirect_to('/access/logout')
    end
  end

  def show
    user = AdminUser.find(session[:user_id])
    if (question = Question.find(params[:question_id]))
      if params[:answer] == question.answer
        score = user.score + 1
        user.update_attribute(:score, score)
      end
    end
    redirect_to(exams_path)
  end

  def edit
  end

end
