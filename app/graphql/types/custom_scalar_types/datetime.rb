module Types
  module CustomScalarTypes
      class Datetime < GraphQL::Schema::Scalar
          description 'Datetime type'
          STRING_FORMAT = "%Y-%m-%d %H:%M:%S.%L"
      
          def self.coerce_input(value, _context)
              Time.zone.parse(value)
          end
      
          def self.coerce_result(value, _context)
              value.strftime(STRING_FORMAT)
          end
      end        
  end
end
