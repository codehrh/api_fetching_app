class DownloadService
  require "csv"

  def self.to_csv(data)
    CSV.generate do |csv|
      csv << ["question", "correct_answer"]

      data.each do |row|
        csv << row.values.map { |val| CGI.unescapeHTML(val.to_s) } # decodes data to prevent jumbled characters
      end
    end
  end

  def self.to_json(data)
    decoded_data = data.map { |row| row.transform_values { |val| CGI.unescapeHTML(val.to_s) } } # decodes data to prevent jumbled characters
    JSON.pretty_generate(decoded_data)
  end
end