# frozen_string_literal: true

class CompletedController < ApplicationController
  def update
    @todo = Todo.find(params[:id])
    @todo.completed = !@todo.completed
    @todo.save

    respond_to do |format|
      format.html { redirect_to todos_url }
    end
  end
end
