# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Pix payer data.
  class GetPixPayerResponse < BaseModel
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
    attr_accessor :document_type

    # TODO: Write general description for this method
    # @return [GetPixBankAccountResponse]
    attr_accessor :bank_account

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['document'] = 'document'
      @_hash['document_type'] = 'document_type'
      @_hash['bank_account'] = 'bank_account'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        document
        document_type
        bank_account
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        name
        document
        document_type
        bank_account
      ]
    end

    def initialize(name = SKIP,
                   document = SKIP,
                   document_type = SKIP,
                   bank_account = SKIP)
      @name = name unless name == SKIP
      @document = document unless document == SKIP
      @document_type = document_type unless document_type == SKIP
      @bank_account = bank_account unless bank_account == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      document = hash.key?('document') ? hash['document'] : SKIP
      document_type = hash.key?('document_type') ? hash['document_type'] : SKIP
      bank_account = GetPixBankAccountResponse.from_hash(hash['bank_account']) if
        hash['bank_account']

      # Create object from extracted values.
      GetPixPayerResponse.new(name,
                              document,
                              document_type,
                              bank_account)
    end
  end
end
