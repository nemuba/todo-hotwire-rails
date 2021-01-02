# frozen_string_literal: true

module TodosHelper
  def completed?(todo)
    todo.completed ? "list-group-item-success" : "list-group-item-dark bg-dark text-white"
  end
end
