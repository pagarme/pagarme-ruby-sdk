# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Request for updating a Recipient
  class UpdateRecipientRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name
    # @return [String]
    attr_accessor :name

    # Email
    # @return [String]
    attr_accessor :email

    # Description
    # @return [String]
    attr_accessor :description

    # Type
    # @return [String]
    attr_accessor :type

    # Status
    # @return [String]
    attr_accessor :status

    # Metadata
    # @return [Hash]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['description'] = 'description'
      @_hash['type'] = 'type'
      @_hash['status'] = 'status'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(name = nil,
                   email = nil,
                   description = nil,
                   type = nil,
                   status = nil,
                   metadata = nil)
      @name = name unless name == SKIP
      @email = email unless email == SKIP
      @description = description unless description == SKIP
      @type = type unless type == SKIP
      @status = status unless status == SKIP
      @metadata = metadata unless metadata == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP

      # Create object from extracted values.
      UpdateRecipientRequest.new(name,
                                 email,
                                 description,
                                 type,
                                 status,
                                 metadata)
    end
  end
end
