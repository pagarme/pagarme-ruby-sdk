# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeApiSdk
  # Response object for getting an Address
  class GetAddressResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :complement

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :neighborhood

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country

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
    # @return [Hash[String, String]]
    attr_accessor :metadata

    # Line 1 for address
    # @return [String]
    attr_accessor :line_1

    # Line 2 for address
    # @return [String]
    attr_accessor :line_2

    # Line 2 for address
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['street'] = 'street'
      @_hash['number'] = 'number'
      @_hash['complement'] = 'complement'
      @_hash['zip_code'] = 'zip_code'
      @_hash['neighborhood'] = 'neighborhood'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['country'] = 'country'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['customer'] = 'customer'
      @_hash['metadata'] = 'metadata'
      @_hash['line_1'] = 'line_1'
      @_hash['line_2'] = 'line_2'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        street
        number
        complement
        zip_code
        neighborhood
        city
        state
        country
        status
        created_at
        updated_at
        customer
        metadata
        line_1
        line_2
        deleted_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        street
        number
        complement
        zip_code
        neighborhood
        city
        state
        country
        status
        created_at
        updated_at
        customer
        metadata
        line_1
        line_2
        deleted_at
      ]
    end

    def initialize(id = SKIP,
                   street = SKIP,
                   number = SKIP,
                   complement = SKIP,
                   zip_code = SKIP,
                   neighborhood = SKIP,
                   city = SKIP,
                   state = SKIP,
                   country = SKIP,
                   status = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   customer = SKIP,
                   metadata = SKIP,
                   line_1 = SKIP,
                   line_2 = SKIP,
                   deleted_at = SKIP)
      @id = id unless id == SKIP
      @street = street unless street == SKIP
      @number = number unless number == SKIP
      @complement = complement unless complement == SKIP
      @zip_code = zip_code unless zip_code == SKIP
      @neighborhood = neighborhood unless neighborhood == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @country = country unless country == SKIP
      @status = status unless status == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @customer = customer unless customer == SKIP
      @metadata = metadata unless metadata == SKIP
      @line_1 = line_1 unless line_1 == SKIP
      @line_2 = line_2 unless line_2 == SKIP
      @deleted_at = deleted_at unless deleted_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      street = hash.key?('street') ? hash['street'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      complement = hash.key?('complement') ? hash['complement'] : SKIP
      zip_code = hash.key?('zip_code') ? hash['zip_code'] : SKIP
      neighborhood = hash.key?('neighborhood') ? hash['neighborhood'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
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
      metadata = hash.key?('metadata') ? hash['metadata'] : SKIP
      line_1 = hash.key?('line_1') ? hash['line_1'] : SKIP
      line_2 = hash.key?('line_2') ? hash['line_2'] : SKIP
      deleted_at = if hash.key?('deleted_at')
                     (DateTimeHelper.from_rfc3339(hash['deleted_at']) if hash['deleted_at'])
                   else
                     SKIP
                   end

      # Create object from extracted values.
      GetAddressResponse.new(id,
                             street,
                             number,
                             complement,
                             zip_code,
                             neighborhood,
                             city,
                             state,
                             country,
                             status,
                             created_at,
                             updated_at,
                             customer,
                             metadata,
                             line_1,
                             line_2,
                             deleted_at)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_deleted_at
      DateTimeHelper.to_rfc3339(deleted_at)
    end
  end
end
