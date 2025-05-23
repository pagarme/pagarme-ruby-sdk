# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Response object for listing invoices
  class ListInvoicesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Invoice objects
    # @return [Array[GetInvoiceResponse]]
    attr_accessor :data

    # Paging object
    # @return [PagingResponse]
    attr_accessor :paging

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash['paging'] = 'paging'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        data
        paging
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        data
        paging
      ]
    end

    def initialize(data = SKIP, paging = SKIP)
      @data = data unless data == SKIP
      @paging = paging unless paging == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['data'].nil?
        data = []
        hash['data'].each do |structure|
          data << (GetInvoiceResponse.from_hash(structure) if structure)
        end
      end

      data = SKIP unless hash.key?('data')
      paging = PagingResponse.from_hash(hash['paging']) if hash['paging']

      # Create object from extracted values.
      ListInvoicesResponse.new(data,
                               paging)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} data: #{@data}, paging: #{@paging}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} data: #{@data.inspect}, paging: #{@paging.inspect}>"
    end
  end
end
