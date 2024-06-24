# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting a customer
  class GetCustomerResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :delinquent

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fb_access_token

    # TODO: Write general description for this method
    # @return [GetAddressResponse]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [GetPhonesResponse]
    attr_accessor :phones

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :fb_id

    # Código de referência do cliente no sistema da loja. Max: 52 caracteres
    # @return [String]
    attr_accessor :code

    # Código de referência do cliente no sistema da loja. Max: 52 caracteres
    # @return [String]
    attr_accessor :document_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['delinquent'] = 'delinquent'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['document'] = 'document'
      @_hash['type'] = 'type'
      @_hash['fb_access_token'] = 'fb_access_token'
      @_hash['address'] = 'address'
      @_hash['metadata'] = 'metadata'
      @_hash['phones'] = 'phones'
      @_hash['fb_id'] = 'fb_id'
      @_hash['code'] = 'code'
      @_hash['document_type'] = 'document_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        email
        delinquent
        created_at
        updated_at
        document
        type
        fb_access_token
        address
        metadata
        phones
        fb_id
        code
        document_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        name
        email
        delinquent
        created_at
        updated_at
        document
        type
        fb_access_token
        address
        metadata
        phones
        fb_id
        code
        document_type
      ]
    end

    def initialize(id = SKIP, name = SKIP, email = SKIP, delinquent = SKIP,
                   created_at = SKIP, updated_at = SKIP, document = SKIP,
                   type = SKIP, fb_access_token = SKIP, address = SKIP,
                   metadata = SKIP, phones = SKIP, fb_id = SKIP, code = SKIP,
                   document_type = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @email = email unless email == SKIP
      @delinquent = delinquent unless delinquent == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @document = document unless document == SKIP
      @type = type unless type == SKIP
      @fb_access_token = fb_access_token unless fb_access_token == SKIP
      @address = address unless address == SKIP
      @metadata = metadata unless metadata == SKIP
      @phones = phones unless phones == SKIP
      @fb_id = fb_id unless fb_id == SKIP
      @code = code unless code == SKIP
      @document_type = document_type unless document_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      delinquent = hash.key?('delinquent') ? hash['delinquent'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      document = hash.key?('document') ? hash['document'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      fb_access_token =
        hash.key?('fb_access_token') ? hash['fb_access_token'] : SKIP
      address = GetAddressResponse.from_hash(hash['address']) if hash['address']
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      phones = GetPhonesResponse.from_hash(hash['phones']) if hash['phones']
      fb_id = hash.key?('fb_id') ? hash['fb_id'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      document_type = hash.key?('document_type') ? hash['document_type'] : SKIP

      # Create object from extracted values.
      GetCustomerResponse.new(id,
                              name,
                              email,
                              delinquent,
                              created_at,
                              updated_at,
                              document,
                              type,
                              fb_access_token,
                              address,
                              metadata,
                              phones,
                              fb_id,
                              code,
                              document_type)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end
  end
end
