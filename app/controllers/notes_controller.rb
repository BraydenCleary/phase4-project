class NotesController < ApplicationController
	
	def index
		@note = Note.new
		@notes = Note.all
	end

	def create
		Note.create(params[:note])
		redirect_to notes_url
	end

end