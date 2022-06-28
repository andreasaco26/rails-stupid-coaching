class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    @coach_answer = ''

    if @answer.ends_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @answer == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = 'I dont care, get dressed and go to work!'
    end
  end
end
