class QuestionsController < ApplicationController
  def coach_answer(your_message)
    silly_question = 'Silly question, get dressed and go to work!'
    silly_statement = "I don't care, get dressed and go to work!"
    if your_message.end_with?('?')
      silly_question
    elsif your_message.include?('I am going to work right now!')
      'STOP TALKING AND GET GOING!'
    else
      silly_statement
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if your_message.include?('I AM GOING TO WORK RIGHT NOW!')
      "That's what I like to hear! STOP TALKING AND GET GOING!"
    elsif your_message == your_message.upcase
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  end

  def ask
  end

  def answer
    @answer = coach_answer_enhanced(params[:question])
    @answer
  end
end
