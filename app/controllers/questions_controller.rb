class QuestionsController < ApplicationController
  def ask

  end
def answer
  @question = params[:question]

  @answer = if @question.downcase.include?("i am going to work")
        "Great!"
elsif @question.include?("?")
        "silly question, got dressed and go to work"
else
      "I dont care, get dressed and go to work "
end
end
end
