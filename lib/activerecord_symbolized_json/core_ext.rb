module ActiveRecord
  class Base
    def self.symbolized_json(*attrs)
      Array.wrap(attrs).each do |attr|
        puts "will symbolize json #{attr}"

        class_eval <<-METHODS, __FILE__, __LINE__ + 1

          def #{attr}
            super.deep_symbolize_keys
          end
        METHODS
      end
    end
  end
end
