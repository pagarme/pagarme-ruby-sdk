# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting a charge
  class GetChargeResponse < BaseModel
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
    attr_accessor :gateway_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :due_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetTransactionResponse]
    attr_accessor :last_transaction

    # TODO: Write general description for this method
    # @return [GetInvoiceResponse]
    attr_accessor :invoice

    # TODO: Write general description for this method
    # @return [GetOrderResponse]
    attr_accessor :order

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [Hash of String]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :paid_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :canceled_at

    # Canceled Amount
    # @return [Integer]
    attr_accessor :canceled_amount

    # Paid amount
    # @return [Integer]
    attr_accessor :paid_amount

    # interest and fine paid
    # @return [Integer]
    attr_accessor :interest_and_fine_paid

    # Defines whether the card has been used one or more times.
    # @return [String]
    attr_accessor :recurrency_cycle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['currency'] = 'currency'
      @_hash['payment_method'] = 'payment_method'
      @_hash['due_at'] = 'due_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['last_transaction'] = 'last_transaction'
      @_hash['invoice'] = 'invoice'
      @_hash['order'] = 'order'
      @_hash['customer'] = 'customer'
      @_hash['metadata'] = 'metadata'
      @_hash['paid_at'] = 'paid_at'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['canceled_amount'] = 'canceled_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash['interest_and_fine_paid'] = 'interest_and_fine_paid'
      @_hash['recurrency_cycle'] = 'recurrency_cycle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_transaction
        invoice
        order
        customer
        paid_at
        canceled_at
        interest_and_fine_paid
        recurrency_cycle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        code
        gateway_id
        amount
        status
        currency
        payment_method
        due_at
        created_at
        updated_at
        last_transaction
        invoice
        order
        customer
        metadata
        paid_at
        canceled_at
        canceled_amount
        paid_amount
        interest_and_fine_paid
        recurrency_cycle
      ]
    end

    def initialize(id = nil,
                   code = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   currency = nil,
                   payment_method = nil,
                   due_at = nil,
                   created_at = nil,
                   updated_at = nil,
                   metadata = nil,
                   canceled_amount = nil,
                   paid_amount = nil,
                   last_transaction = SKIP,
                   invoice = SKIP,
                   order = SKIP,
                   customer = SKIP,
                   paid_at = SKIP,
                   canceled_at = SKIP,
                   interest_and_fine_paid = SKIP,
                   recurrency_cycle = SKIP)
      @id = id
      @code = code
      @gateway_id = gateway_id
      @amount = amount
      @status = status
      @currency = currency
      @payment_method = payment_method
      @due_at = due_at
      @created_at = created_at
      @updated_at = updated_at
      @last_transaction = last_transaction unless last_transaction == SKIP
      @invoice = invoice unless invoice == SKIP
      @order = order unless order == SKIP
      @customer = customer unless customer == SKIP
      @metadata = metadata
      @paid_at = paid_at unless paid_at == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      @canceled_amount = canceled_amount
      @paid_amount = paid_amount
      @interest_and_fine_paid = interest_and_fine_paid unless interest_and_fine_paid == SKIP
      @recurrency_cycle = recurrency_cycle unless recurrency_cycle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      code = hash.key?('code') ? hash['code'] : nil
      gateway_id = hash.key?('gateway_id') ? hash['gateway_id'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil
      status = hash.key?('status') ? hash['status'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : nil
      due_at = if hash.key?('due_at')
                 (DateTimeHelper.from_rfc3339(hash['due_at']) if hash['due_at'])
               end
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   end
      metadata = hash.key?('metadata') ? hash['metadata'] : nil
      canceled_amount =
        hash.key?('canceled_amount') ? hash['canceled_amount'] : nil
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : nil
      last_transaction = GetTransactionResponse.from_hash(hash['last_transaction']) if
        hash['last_transaction']
      invoice = GetInvoiceResponse.from_hash(hash['invoice']) if hash['invoice']
      order = GetOrderResponse.from_hash(hash['order']) if hash['order']
      customer = GetCustomerResponse.from_hash(hash['customer']) if hash['customer']
      paid_at = if hash.key?('paid_at')
                  (DateTimeHelper.from_rfc3339(hash['paid_at']) if hash['paid_at'])
                else
                  SKIP
                end
      canceled_at = if hash.key?('canceled_at')
                      (DateTimeHelper.from_rfc3339(hash['canceled_at']) if hash['canceled_at'])
                    else
                      SKIP
                    end
      interest_and_fine_paid =
        hash.key?('interest_and_fine_paid') ? hash['interest_and_fine_paid'] : SKIP
      recurrency_cycle =
        hash.key?('recurrency_cycle') ? hash['recurrency_cycle'] : SKIP

      # Create object from extracted values.
      GetChargeResponse.new(id,
                            code,
                            gateway_id,
                            amount,
                            status,
                            currency,
                            payment_method,
                            due_at,
                            created_at,
                            updated_at,
                            metadata,
                            canceled_amount,
                            paid_amount,
                            last_transaction,
                            invoice,
                            order,
                            customer,
                            paid_at,
                            canceled_at,
                            interest_and_fine_paid,
                            recurrency_cycle)
    end

    def to_due_at
      DateTimeHelper.to_rfc3339(due_at)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_paid_at
      DateTimeHelper.to_rfc3339(paid_at)
    end

    def to_canceled_at
      DateTimeHelper.to_rfc3339(canceled_at)
    end
  end
end
