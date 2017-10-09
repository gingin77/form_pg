class Stop < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      stop_hash = row.to_hash
      stop = Stop.where(id: stop_hash["id"])

      if stop.count == 1
        stop.first.update_attributes(stop_hash)
      else
        Stop.create!(stop_hash)
      end # end if !stop.nil?
    end # end CSV.foreach
  end # end self.import(file)

  # def self.as_csv
  #   CSV.generate do |csv|
  #     csv << column_names
  #     all.each do |item|
  #       csv << item.attributes.values_at(*column_names)
  #     end
  #   end
  # end

end
