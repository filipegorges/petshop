module RecordFilter
  extend ActiveSupport::Concern

  class_methods do
    def search_for(filtering_params)
      return all if filtering_params.nil?
      parsed_params = JSON.parse filtering_params 
      query = ""
      # if parsed_params.keys.one?
      #   query = parsed_params.map{|column, value| "#{column} ILIKE '#{value}%'"}
      # else
        parsed_params.each_with_index do |(column, value), index|
          if index == parsed_params.length - 1
            query << " #{column} ILIKE '#{value}%'"
            break
          else
            query << " #{column} ILIKE '#{value}%' AND "
          end
        end
      # end
      where(query)
    end
  end
end