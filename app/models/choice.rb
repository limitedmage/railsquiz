# ITESM CEM, May 11, 2011.
# Ruby Source File
# Activity::  Final Project: Design Patterns Quiz App
# Author::    1165536 Juliana Pena

class Choice < ActiveRecord::Base
  belongs_to :question
end
