class TriviasController < ApplicationController
  def index
    number = params[:number].to_i.positive? ? params[:number].to_i : 5 # Default to 5 if not provided
    @trivia_questions = OpentdbService.fetch_trivia(number)
  end
end
