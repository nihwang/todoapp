class TodosController < ApplicationController

	def index
		@todo = Todo.new
		@todos = Todo.all
	end

	def create
	end
end