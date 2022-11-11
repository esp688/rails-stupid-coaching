class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(str)
    if str == "I am going to work."
      return "Great"
    elsif str.end_with?("?")
      return  "silly question, get dressed for work"
    else
      return "I dont't care, get dressed for work"
    end
  end
end
