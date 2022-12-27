# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetWithdrawTargetResponse Model.
  class GetWithdrawTargetResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :target_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['target_id'] = 'target_id'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        target_id
        type
      ]
    end

    def initialize(target_id = nil,
                   type = nil)
      @target_id = target_id
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      target_id = hash.key?('target_id') ? hash['target_id'] : nil
      type = hash.key?('type') ? hash['type'] : nil

      # Create object from extracted values.
      GetWithdrawTargetResponse.new(target_id,
                                    type)
    end
  end
end
