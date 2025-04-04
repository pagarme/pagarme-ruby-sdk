# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetWithdrawSourceResponse Model.
  class GetWithdrawSourceResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :source_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source_id'] = 'source_id'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        source_id
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        source_id
        type
      ]
    end

    def initialize(source_id = SKIP, type = SKIP)
      @source_id = source_id unless source_id == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      source_id = hash.key?('source_id') ? hash['source_id'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Create object from extracted values.
      GetWithdrawSourceResponse.new(source_id,
                                    type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} source_id: #{@source_id}, type: #{@type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} source_id: #{@source_id.inspect}, type: #{@type.inspect}>"
    end
  end
end
