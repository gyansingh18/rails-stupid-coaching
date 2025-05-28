class ApplicationController < ActionController::Base
  # Your code here, if any
end
class QuestionsController < ApplicationController
  def ask
    # This action just renders the ask form
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
