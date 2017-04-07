class ApplicationRecord < ActiveRecord::Base
  include RecordFilter
  self.abstract_class = true
end
