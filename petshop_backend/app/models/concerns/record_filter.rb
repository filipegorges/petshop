module RecordFilter
  extend ActiveSupport::Concern

  class_methods do
    def search_for(filtering_params)
      return all if filtering_params.nil?
      parsed_params = JSON.parse filtering_params 
      where(build_query(parsed_params))
    end

    private

    def build_query(params)
      query = ""
      params.each_with_index do |(column, value), index|
        query << " #{column} ILIKE '#{value}%'" # case-insensitive match
        query << " AND " unless index == params.length - 1 # unless last item on the collection
      end
      return query
    end
  end
end