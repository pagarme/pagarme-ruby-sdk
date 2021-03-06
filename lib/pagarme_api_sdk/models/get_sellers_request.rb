# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetSellersRequest Model.
  class GetSellersRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_since

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_until

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['document'] = 'document'
      @_hash['code'] = 'code'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash['created_since'] = 'created_Since'
      @_hash['created_until'] = 'created_Until'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        created_since
        created_until
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(name = nil,
                   document = nil,
                   code = nil,
                   status = nil,
                   type = nil,
                   created_since = nil,
                   created_until = nil)
      @name = name unless name == SKIP
      @document = document unless document == SKIP
      @code = code unless code == SKIP
      @status = status unless status == SKIP
      @type = type unless type == SKIP
      @created_since = created_since unless created_since == SKIP
      @created_until = created_until unless created_until == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      document = hash.key?('document') ? hash['document'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      created_since = hash.key?('created_Since') ? hash['created_Since'] : SKIP
      created_until = hash.key?('created_Until') ? hash['created_Until'] : SKIP

      # Create object from extracted values.
      GetSellersRequest.new(name,
                            document,
                            code,
                            status,
                            type,
                            created_since,
                            created_until)
    end
  end
end
