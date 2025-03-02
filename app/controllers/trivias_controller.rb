class TriviasController < ApplicationController
  require "csv"

  def index
    number = (params[:number] || 15).to_i.clamp(1, 15) # limited query to only between 1 and 15
    
    # fetch trivia data then store to session as json
    @trivia_questions = OpentdbService.fetch_trivia(number)

    # storing only specific fields to session to prevent cookie overflow
    session[:trivia_questions] = @trivia_questions.map { |q| q.slice("question", "correct_answer") }

    # checking stored session questions in rails console
    Rails.logger.debug "Stored Trivia Questions: #{session[:trivia_questions].inspect}"
  end
  
  def download
    session_questions = session[:trivia_questions] || []

    # format response
    respond_to do |format|
      format.json { send_data session_questions.to_json, filename: "trivia-questions.json", type: "application/json"}
      format.csv { send_data to_csv(session_questions), filename: "trivia-questions.csv" }
    end
  end

  private

  def to_csv(data)
    CSV.generate do |csv|
      csv << ["question", "correct_answer"]
      data.each { |row| csv << row.values }
    end
  end

end
