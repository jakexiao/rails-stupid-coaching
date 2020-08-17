class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer

    if @question == "I am going to work right now!"
        @answer = "Great!"
      elsif @question[-1] == "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif @question[-1] != "?"
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
