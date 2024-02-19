# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting an payable
  class GetPayableResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :fee

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :anticipation_fee

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :fraud_coverage_fee

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :installment

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :gateway_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :charge_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :split_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :bulk_anticipation_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :anticipation_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :recipient_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :originator_model

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :originator_model_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :payment_date

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :original_payment_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :accrual_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :liquidation_arrangement_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['status'] = 'status'
      @_hash['amount'] = 'amount'
      @_hash['fee'] = 'fee'
      @_hash['anticipation_fee'] = 'anticipation_fee'
      @_hash['fraud_coverage_fee'] = 'fraud_coverage_fee'
      @_hash['installment'] = 'installment'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['split_id'] = 'split_id'
      @_hash['bulk_anticipation_id'] = 'bulk_anticipation_id'
      @_hash['anticipation_id'] = 'anticipation_id'
      @_hash['recipient_id'] = 'recipient_id'
      @_hash['originator_model'] = 'originator_model'
      @_hash['originator_model_id'] = 'originator_model_id'
      @_hash['payment_date'] = 'payment_date'
      @_hash['original_payment_date'] = 'original_payment_date'
      @_hash['type'] = 'type'
      @_hash['payment_method'] = 'payment_method'
      @_hash['accrual_at'] = 'accrual_at'
      @_hash['created_at'] = 'created_at'
      @_hash['liquidation_arrangement_id'] = 'liquidation_arrangement_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        status
        amount
        fee
        anticipation_fee
        fraud_coverage_fee
        installment
        gateway_id
        charge_id
        split_id
        bulk_anticipation_id
        anticipation_id
        recipient_id
        originator_model
        originator_model_id
        payment_date
        original_payment_date
        type
        payment_method
        accrual_at
        created_at
        liquidation_arrangement_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        status
        amount
        fee
        anticipation_fee
        fraud_coverage_fee
        installment
        gateway_id
        charge_id
        split_id
        bulk_anticipation_id
        anticipation_id
        recipient_id
        originator_model
        originator_model_id
        payment_date
        original_payment_date
        type
        payment_method
        accrual_at
        created_at
        liquidation_arrangement_id
      ]
    end

    def initialize(id = SKIP,
                   status = SKIP,
                   amount = SKIP,
                   fee = SKIP,
                   anticipation_fee = SKIP,
                   fraud_coverage_fee = SKIP,
                   installment = SKIP,
                   gateway_id = SKIP,
                   charge_id = SKIP,
                   split_id = SKIP,
                   bulk_anticipation_id = SKIP,
                   anticipation_id = SKIP,
                   recipient_id = SKIP,
                   originator_model = SKIP,
                   originator_model_id = SKIP,
                   payment_date = SKIP,
                   original_payment_date = SKIP,
                   type = SKIP,
                   payment_method = SKIP,
                   accrual_at = SKIP,
                   created_at = SKIP,
                   liquidation_arrangement_id = SKIP)
      @id = id unless id == SKIP
      @status = status unless status == SKIP
      @amount = amount unless amount == SKIP
      @fee = fee unless fee == SKIP
      @anticipation_fee = anticipation_fee unless anticipation_fee == SKIP
      @fraud_coverage_fee = fraud_coverage_fee unless fraud_coverage_fee == SKIP
      @installment = installment unless installment == SKIP
      @gateway_id = gateway_id unless gateway_id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @split_id = split_id unless split_id == SKIP
      @bulk_anticipation_id = bulk_anticipation_id unless bulk_anticipation_id == SKIP
      @anticipation_id = anticipation_id unless anticipation_id == SKIP
      @recipient_id = recipient_id unless recipient_id == SKIP
      @originator_model = originator_model unless originator_model == SKIP
      @originator_model_id = originator_model_id unless originator_model_id == SKIP
      @payment_date = payment_date unless payment_date == SKIP
      @original_payment_date = original_payment_date unless original_payment_date == SKIP
      @type = type unless type == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @accrual_at = accrual_at unless accrual_at == SKIP
      @created_at = created_at unless created_at == SKIP
      unless liquidation_arrangement_id == SKIP
        @liquidation_arrangement_id =
          liquidation_arrangement_id
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      fee = hash.key?('fee') ? hash['fee'] : SKIP
      anticipation_fee =
        hash.key?('anticipation_fee') ? hash['anticipation_fee'] : SKIP
      fraud_coverage_fee =
        hash.key?('fraud_coverage_fee') ? hash['fraud_coverage_fee'] : SKIP
      installment = hash.key?('installment') ? hash['installment'] : SKIP
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      split_id = hash.key?('split_id') ? hash['split_id'] : SKIP
      bulk_anticipation_id =
        hash.key?('bulk_anticipation_id') ? hash['bulk_anticipation_id'] : SKIP
      anticipation_id =
        hash.key?('anticipation_id') ? hash['anticipation_id'] : SKIP
      recipient_id = hash.key?('recipient_id') ? hash['recipient_id'] : SKIP
      originator_model =
        hash.key?('originator_model') ? hash['originator_model'] : SKIP
      originator_model_id =
        hash.key?('originator_model_id') ? hash['originator_model_id'] : SKIP
      payment_date = if hash.key?('payment_date')
                       (DateTimeHelper.from_rfc3339(hash['payment_date']) if hash['payment_date'])
                     else
                       SKIP
                     end
      original_payment_date = if hash.key?('original_payment_date')
                                (DateTimeHelper.from_rfc3339(hash['original_payment_date']) if hash['original_payment_date'])
                              else
                                SKIP
                              end
      type = hash.key?('type') ? hash['type'] : SKIP
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : SKIP
      accrual_at = if hash.key?('accrual_at')
                     (DateTimeHelper.from_rfc3339(hash['accrual_at']) if hash['accrual_at'])
                   else
                     SKIP
                   end
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      liquidation_arrangement_id =
        hash.key?('liquidation_arrangement_id') ? hash['liquidation_arrangement_id'] : SKIP

      # Create object from extracted values.
      GetPayableResponse.new(id,
                             status,
                             amount,
                             fee,
                             anticipation_fee,
                             fraud_coverage_fee,
                             installment,
                             gateway_id,
                             charge_id,
                             split_id,
                             bulk_anticipation_id,
                             anticipation_id,
                             recipient_id,
                             originator_model,
                             originator_model_id,
                             payment_date,
                             original_payment_date,
                             type,
                             payment_method,
                             accrual_at,
                             created_at,
                             liquidation_arrangement_id)
    end

    def to_custom_payment_date
      DateTimeHelper.to_rfc3339(payment_date)
    end

    def to_custom_original_payment_date
      DateTimeHelper.to_rfc3339(original_payment_date)
    end

    def to_custom_accrual_at
      DateTimeHelper.to_rfc3339(accrual_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end
  end
end
