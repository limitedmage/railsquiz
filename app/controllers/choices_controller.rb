# ITESM CEM, May 11, 2011.
# Ruby Source File
# Activity::  Final Project: Design Patterns Quiz App
# Author::    1165536 Juliana Pena

class ChoicesController < ApplicationController
  
  def create
	 @question = Question.find(params[:question])
	 text = params[:text]
	 correct = params[:correct] == "1"
	 new = Choice.create(:text => text, :correct => correct, :question_id => @question.id)
	 
	 if new.correct
		@question.answer = new
	 end
	 
	 redirect_to question_path(@question)
  end
  
  def destroy
	 @question = Question.find(params[:question])
	 @choice = Choice.find(params[:choice])
	 @choice.destroy
	 redirect_to question_path(@question)
  end
  
end
