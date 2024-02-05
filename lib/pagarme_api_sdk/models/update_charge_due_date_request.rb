# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Request for updating a charge due date
  class UpdateChargeDueDateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The charge's new due date
    # @return [DateTime]
    attr_accessor :due_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['due_at'] = 'due_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        due_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(due_at = SKIP)
      @due_at = due_at unless due_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      due_at = if hash.key?('due_at')
                 (DateTimeHelper.from_rfc3339(hash['due_at']) if hash['due_at'])
               else
                 SKIP
               end

      # Create object from extracted values.
      UpdateChargeDueDateRequest.new(due_at)
    end

    def to_custom_due_at
      DateTimeHelper.to_rfc3339(due_at)
    end
  end
end
