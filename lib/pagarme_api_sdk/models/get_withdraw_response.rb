# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # GetWithdrawResponse Model.
  class GetWithdrawResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :fee

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :funding_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :funding_estimated_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [GetWithdrawSourceResponse]
    attr_accessor :source

    # TODO: Write general description for this method
    # @return [GetWithdrawTargetResponse]
    attr_accessor :target

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['metadata'] = 'metadata'
      @_hash['fee'] = 'fee'
      @_hash['funding_date'] = 'funding_date'
      @_hash['funding_estimated_date'] = 'funding_estimated_date'
      @_hash['type'] = 'type'
      @_hash['source'] = 'source'
      @_hash['target'] = 'target'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        gateway_id
        amount
        status
        created_at
        updated_at
        metadata
        fee
        funding_date
        funding_estimated_date
        type
        source
        target
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        gateway_id
        amount
        status
        created_at
        updated_at
        metadata
        fee
        funding_date
        funding_estimated_date
        type
        source
        target
      ]
    end

    def initialize(id = SKIP, gateway_id = SKIP, amount = SKIP, status = SKIP,
                   created_at = SKIP, updated_at = SKIP, metadata = SKIP,
                   fee = SKIP, funding_date = SKIP,
                   funding_estimated_date = SKIP, type = SKIP, source = SKIP,
                   target = SKIP)
      @id = id unless id == SKIP
      @gateway_id = gateway_id unless gateway_id == SKIP
      @amount = amount unless amount == SKIP
      @status = status unless status == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @metadata = metadata unless metadata == SKIP
      @fee = fee unless fee == SKIP
      @funding_date = funding_date unless funding_date == SKIP
      @funding_estimated_date = funding_estimated_date unless funding_estimated_date == SKIP
      @type = type unless type == SKIP
      @source = source unless source == SKIP
      @target = target unless target == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP
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
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      fee = hash.key?('fee') ? hash['fee'] : SKIP
      funding_date = if hash.key?('funding_date')
                       (DateTimeHelper.from_rfc3339(hash['funding_date']) if hash['funding_date'])
                     else
                       SKIP
                     end
      funding_estimated_date = if hash.key?('funding_estimated_date')
                                 (DateTimeHelper.from_rfc3339(hash['funding_estimated_date']) if hash['funding_estimated_date'])
                               else
                                 SKIP
                               end
      type = hash.key?('type') ? hash['type'] : SKIP
      source = GetWithdrawSourceResponse.from_hash(hash['source']) if hash['source']
      target = GetWithdrawTargetResponse.from_hash(hash['target']) if hash['target']

      # Create object from extracted values.
      GetWithdrawResponse.new(id,
                              gateway_id,
                              amount,
                              status,
                              created_at,
                              updated_at,
                              metadata,
                              fee,
                              funding_date,
                              funding_estimated_date,
                              type,
                              source,
                              target)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_funding_date
      DateTimeHelper.to_rfc3339(funding_date)
    end

    def to_custom_funding_estimated_date
      DateTimeHelper.to_rfc3339(funding_estimated_date)
    end
  end
end
