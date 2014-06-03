require 'spec_helper'

describe "Todo List" do
	let!(:todo) { create :todo }
	let!(:todos) { [todo, create(:todo)]}
	
	describe "User can see all of User's todo lists" do
		it "by visiting the homepage" do
			visit root_path
			todos.each do |t|
				expect(page).to have_content t.title
			end
		end
	end

end