# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # GetSubscriptionResponse Model.
  class GetSubscriptionResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :start_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :interval

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :interval_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_type

    # TODO: Write general description for this method
    # @return [GetPeriodResponse]
    attr_accessor :current_cycle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :installments

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
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [GetCardResponse]
    attr_accessor :card

    # TODO: Write general description for this method
    # @return [Array[GetSubscriptionItemResponse]]
    attr_accessor :items

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :statement_descriptor

    # TODO: Write general description for this method
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [GetSetupResponse]
    attr_accessor :setup

    # Affiliation Code
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # Affiliation Code
    # @return [DateTime]
    attr_accessor :next_billing_at

    # Affiliation Code
    # @return [Integer]
    attr_accessor :billing_day

    # Affiliation Code
    # @return [Integer]
    attr_accessor :minimum_price

    # Affiliation Code
    # @return [DateTime]
    attr_accessor :canceled_at

    # Subscription discounts
    # @return [Array[GetDiscountResponse]]
    attr_accessor :discounts

    # Subscription increments
    # @return [Array[GetIncrementResponse]]
    attr_accessor :increments

    # Days until boleto expires
    # @return [Integer]
    attr_accessor :boleto_due_days

    # Subscription's split response
    # @return [GetSubscriptionSplitResponse]
    attr_accessor :split

    # Subscription's split response
    # @return [GetSubscriptionBoletoResponse]
    attr_accessor :boleto

    # Subscription's split response
    # @return [TrueClass | FalseClass]
    attr_accessor :manual_billing

    # Business model identifier
    # @return [String]
    attr_accessor :indirect_acceptor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['code'] = 'code'
      @_hash['start_at'] = 'start_at'
      @_hash['interval'] = 'interval'
      @_hash['interval_count'] = 'interval_count'
      @_hash['billing_type'] = 'billing_type'
      @_hash['current_cycle'] = 'current_cycle'
      @_hash['payment_method'] = 'payment_method'
      @_hash['currency'] = 'currency'
      @_hash['installments'] = 'installments'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['customer'] = 'customer'
      @_hash['card'] = 'card'
      @_hash['items'] = 'items'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['metadata'] = 'metadata'
      @_hash['setup'] = 'setup'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash['billing_day'] = 'billing_day'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['discounts'] = 'discounts'
      @_hash['increments'] = 'increments'
      @_hash['boleto_due_days'] = 'boleto_due_days'
      @_hash['split'] = 'split'
      @_hash['boleto'] = 'boleto'
      @_hash['manual_billing'] = 'manual_billing'
      @_hash['indirect_acceptor'] = 'indirect_acceptor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        code
        start_at
        interval
        interval_count
        billing_type
        current_cycle
        payment_method
        currency
        installments
        status
        created_at
        updated_at
        customer
        card
        items
        statement_descriptor
        metadata
        setup
        gateway_affiliation_id
        next_billing_at
        billing_day
        minimum_price
        canceled_at
        discounts
        increments
        boleto_due_days
        split
        boleto
        manual_billing
        indirect_acceptor
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        code
        start_at
        interval
        interval_count
        billing_type
        current_cycle
        payment_method
        currency
        installments
        status
        created_at
        updated_at
        customer
        card
        items
        statement_descriptor
        metadata
        setup
        gateway_affiliation_id
        next_billing_at
        billing_day
        minimum_price
        canceled_at
        discounts
        increments
        boleto_due_days
        split
        boleto
        manual_billing
        indirect_acceptor
      ]
    end

    def initialize(id = SKIP, code = SKIP, start_at = SKIP, interval = SKIP,
                   interval_count = SKIP, billing_type = SKIP,
                   current_cycle = SKIP, payment_method = SKIP, currency = SKIP,
                   installments = SKIP, status = SKIP, created_at = SKIP,
                   updated_at = SKIP, customer = SKIP, card = SKIP,
                   items = SKIP, statement_descriptor = SKIP, metadata = SKIP,
                   setup = SKIP, gateway_affiliation_id = SKIP,
                   next_billing_at = SKIP, billing_day = SKIP,
                   minimum_price = SKIP, canceled_at = SKIP, discounts = SKIP,
                   increments = SKIP, boleto_due_days = SKIP, split = SKIP,
                   boleto = SKIP, manual_billing = SKIP,
                   indirect_acceptor = SKIP)
      @id = id unless id == SKIP
      @code = code unless code == SKIP
      @start_at = start_at unless start_at == SKIP
      @interval = interval unless interval == SKIP
      @interval_count = interval_count unless interval_count == SKIP
      @billing_type = billing_type unless billing_type == SKIP
      @current_cycle = current_cycle unless current_cycle == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @currency = currency unless currency == SKIP
      @installments = installments unless installments == SKIP
      @status = status unless status == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @customer = customer unless customer == SKIP
      @card = card unless card == SKIP
      @items = items unless items == SKIP
      @statement_descriptor = statement_descriptor unless statement_descriptor == SKIP
      @metadata = metadata unless metadata == SKIP
      @setup = setup unless setup == SKIP
      @gateway_affiliation_id = gateway_affiliation_id unless gateway_affiliation_id == SKIP
      @next_billing_at = next_billing_at unless next_billing_at == SKIP
      @billing_day = billing_day unless billing_day == SKIP
      @minimum_price = minimum_price unless minimum_price == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      @discounts = discounts unless discounts == SKIP
      @increments = increments unless increments == SKIP
      @boleto_due_days = boleto_due_days unless boleto_due_days == SKIP
      @split = split unless split == SKIP
      @boleto = boleto unless boleto == SKIP
      @manual_billing = manual_billing unless manual_billing == SKIP
      @indirect_acceptor = indirect_acceptor unless indirect_acceptor == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      start_at = if hash.key?('start_at')
                   (DateTimeHelper.from_rfc3339(hash['start_at']) if hash['start_at'])
                 else
                   SKIP
                 end
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_count =
        hash.key?('interval_count') ? hash['interval_count'] : SKIP
      billing_type = hash.key?('billing_type') ? hash['billing_type'] : SKIP
      current_cycle = GetPeriodResponse.from_hash(hash['current_cycle']) if hash['current_cycle']
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      installments = hash.key?('installments') ? hash['installments'] : SKIP
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
      customer = GetCustomerResponse.from_hash(hash['customer']) if hash['customer']
      card = GetCardResponse.from_hash(hash['card']) if hash['card']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (GetSubscriptionItemResponse.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      statement_descriptor =
        hash.key?('statement_descriptor') ? hash['statement_descriptor'] : SKIP
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      setup = GetSetupResponse.from_hash(hash['setup']) if hash['setup']
      gateway_affiliation_id =
        hash.key?('gateway_affiliation_id') ? hash['gateway_affiliation_id'] : SKIP
      next_billing_at = if hash.key?('next_billing_at')
                          (DateTimeHelper.from_rfc3339(hash['next_billing_at']) if hash['next_billing_at'])
                        else
                          SKIP
                        end
      billing_day = hash.key?('billing_day') ? hash['billing_day'] : SKIP
      minimum_price = hash.key?('minimum_price') ? hash['minimum_price'] : SKIP
      canceled_at = if hash.key?('canceled_at')
                      (DateTimeHelper.from_rfc3339(hash['canceled_at']) if hash['canceled_at'])
                    else
                      SKIP
                    end
      # Parameter is an array, so we need to iterate through it
      discounts = nil
      unless hash['discounts'].nil?
        discounts = []
        hash['discounts'].each do |structure|
          discounts << (GetDiscountResponse.from_hash(structure) if structure)
        end
      end

      discounts = SKIP unless hash.key?('discounts')
      # Parameter is an array, so we need to iterate through it
      increments = nil
      unless hash['increments'].nil?
        increments = []
        hash['increments'].each do |structure|
          increments << (GetIncrementResponse.from_hash(structure) if structure)
        end
      end

      increments = SKIP unless hash.key?('increments')
      boleto_due_days =
        hash.key?('boleto_due_days') ? hash['boleto_due_days'] : SKIP
      split = GetSubscriptionSplitResponse.from_hash(hash['split']) if hash['split']
      boleto = GetSubscriptionBoletoResponse.from_hash(hash['boleto']) if hash['boleto']
      manual_billing =
        hash.key?('manual_billing') ? hash['manual_billing'] : SKIP
      indirect_acceptor =
        hash.key?('indirect_acceptor') ? hash['indirect_acceptor'] : SKIP

      # Create object from extracted values.
      GetSubscriptionResponse.new(id,
                                  code,
                                  start_at,
                                  interval,
                                  interval_count,
                                  billing_type,
                                  current_cycle,
                                  payment_method,
                                  currency,
                                  installments,
                                  status,
                                  created_at,
                                  updated_at,
                                  customer,
                                  card,
                                  items,
                                  statement_descriptor,
                                  metadata,
                                  setup,
                                  gateway_affiliation_id,
                                  next_billing_at,
                                  billing_day,
                                  minimum_price,
                                  canceled_at,
                                  discounts,
                                  increments,
                                  boleto_due_days,
                                  split,
                                  boleto,
                                  manual_billing,
                                  indirect_acceptor)
    end

    def to_custom_start_at
      DateTimeHelper.to_rfc3339(start_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_next_billing_at
      DateTimeHelper.to_rfc3339(next_billing_at)
    end

    def to_custom_canceled_at
      DateTimeHelper.to_rfc3339(canceled_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, code: #{@code}, start_at: #{@start_at}, interval: #{@interval},"\
      " interval_count: #{@interval_count}, billing_type: #{@billing_type}, current_cycle:"\
      " #{@current_cycle}, payment_method: #{@payment_method}, currency: #{@currency},"\
      " installments: #{@installments}, status: #{@status}, created_at: #{@created_at},"\
      " updated_at: #{@updated_at}, customer: #{@customer}, card: #{@card}, items: #{@items},"\
      " statement_descriptor: #{@statement_descriptor}, metadata: #{@metadata}, setup: #{@setup},"\
      " gateway_affiliation_id: #{@gateway_affiliation_id}, next_billing_at: #{@next_billing_at},"\
      " billing_day: #{@billing_day}, minimum_price: #{@minimum_price}, canceled_at:"\
      " #{@canceled_at}, discounts: #{@discounts}, increments: #{@increments}, boleto_due_days:"\
      " #{@boleto_due_days}, split: #{@split}, boleto: #{@boleto}, manual_billing:"\
      " #{@manual_billing}, indirect_acceptor: #{@indirect_acceptor}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, code: #{@code.inspect}, start_at: #{@start_at.inspect},"\
      " interval: #{@interval.inspect}, interval_count: #{@interval_count.inspect}, billing_type:"\
      " #{@billing_type.inspect}, current_cycle: #{@current_cycle.inspect}, payment_method:"\
      " #{@payment_method.inspect}, currency: #{@currency.inspect}, installments:"\
      " #{@installments.inspect}, status: #{@status.inspect}, created_at: #{@created_at.inspect},"\
      " updated_at: #{@updated_at.inspect}, customer: #{@customer.inspect}, card:"\
      " #{@card.inspect}, items: #{@items.inspect}, statement_descriptor:"\
      " #{@statement_descriptor.inspect}, metadata: #{@metadata.inspect}, setup:"\
      " #{@setup.inspect}, gateway_affiliation_id: #{@gateway_affiliation_id.inspect},"\
      " next_billing_at: #{@next_billing_at.inspect}, billing_day: #{@billing_day.inspect},"\
      " minimum_price: #{@minimum_price.inspect}, canceled_at: #{@canceled_at.inspect}, discounts:"\
      " #{@discounts.inspect}, increments: #{@increments.inspect}, boleto_due_days:"\
      " #{@boleto_due_days.inspect}, split: #{@split.inspect}, boleto: #{@boleto.inspect},"\
      " manual_billing: #{@manual_billing.inspect}, indirect_acceptor:"\
      " #{@indirect_acceptor.inspect}>"
    end
  end
end
