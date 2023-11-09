# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Transfer response
  class GetTransferResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id
    # @return [String]
    attr_accessor :id

    # Transfer amount
    # @return [Integer]
    attr_accessor :amount

    # Transfer status
    # @return [String]
    attr_accessor :status

    # Transfer creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Transfer last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Bank account
    # @return [GetBankAccountResponse]
    attr_accessor :bank_account

    # Metadata
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['bank_account'] = 'bank_account'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        amount
        status
        created_at
        updated_at
        bank_account
        metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        amount
        status
        created_at
        updated_at
        bank_account
        metadata
      ]
    end

    def initialize(id = SKIP,
                   amount = SKIP,
                   status = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   bank_account = SKIP,
                   metadata = SKIP)
      @id = id unless id == SKIP
      @amount = amount unless amount == SKIP
      @status = status unless status == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @bank_account = bank_account unless bank_account == SKIP
      @metadata = metadata unless metadata == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
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
      bank_account = GetBankAccountResponse.from_hash(hash['bank_account']) if
        hash['bank_account']
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP

      # Create object from extracted values.
      GetTransferResponse.new(id,
                              amount,
                              status,
                              created_at,
                              updated_at,
                              bank_account,
                              metadata)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end
  end
end
