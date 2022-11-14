# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting a access token
  class GetAccessTokenResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['customer'] = 'customer'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = nil,
                   code = nil,
                   status = nil,
                   created_at = nil,
                   customer = SKIP)
      @id = id
      @code = code
      @status = status
      @created_at = created_at
      @customer = customer unless customer == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      code = hash.key?('code') ? hash['code'] : nil
      status = hash.key?('status') ? hash['status'] : nil
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      customer = GetCustomerResponse.from_hash(hash['customer']) if hash['customer']

      # Create object from extracted values.
      GetAccessTokenResponse.new(id,
                                 code,
                                 status,
                                 created_at,
                                 customer)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end
  end
end
