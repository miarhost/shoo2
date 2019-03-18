module ApplyFilters
  module Base
  extend ActiveSupport::Concern
    def apply_filters(options = {})
      options.reduce(initial_scope) do |chain, (k,v)|
        self.class.filters[k].call(chain, k, v)
      end
    end

    def initial_scope
     ActiveRecord::Relation
    end

  module ClassMethods
    def filter(filter_params)
      results = self.where(nil)
      filter_params.each do |key, value|
        results = results.public_send(key, value) if value.present?
      end
      results
    end
  end
end
end