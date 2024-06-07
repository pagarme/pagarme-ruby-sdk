# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Managing Partner Request
  class CreateManagingPartnerRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mother_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :birthdate

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :monthly_income

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :professional_occupation

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :self_declared_legal_representative

    # TODO: Write general description for this method
    # @return [CreateRegisterInformationAddressRequest]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [Array[CreateRegisterInformationPhoneRequest]]
    attr_accessor :phone_numbers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['document'] = 'document'
      @_hash['mother_name'] = 'mother_name'
      @_hash['birthdate'] = 'birthdate'
      @_hash['monthly_income'] = 'monthly_income'
      @_hash['professional_occupation'] = 'professional_occupation'
      @_hash['self_declared_legal_representative'] =
        'self_declared_legal_representative'
      @_hash['address'] = 'address'
      @_hash['phone_numbers'] = 'phone_numbers'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mother_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        mother_name
      ]
    end

    def initialize(name = nil,
                   email = nil,
                   document = nil,
                   birthdate = nil,
                   monthly_income = nil,
                   professional_occupation = nil,
                   self_declared_legal_representative = nil,
                   address = nil,
                   phone_numbers = nil,
                   mother_name = SKIP)
      @name = name
      @email = email
      @document = document
      @mother_name = mother_name unless mother_name == SKIP
      @birthdate = birthdate
      @monthly_income = monthly_income
      @professional_occupation = professional_occupation
      @self_declared_legal_representative = self_declared_legal_representative
      @address = address
      @phone_numbers = phone_numbers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      email = hash.key?('email') ? hash['email'] : nil
      document = hash.key?('document') ? hash['document'] : nil
      birthdate = hash.key?('birthdate') ? hash['birthdate'] : nil
      monthly_income =
        hash.key?('monthly_income') ? hash['monthly_income'] : nil
      professional_occupation =
        hash.key?('professional_occupation') ? hash['professional_occupation'] : nil
      self_declared_legal_representative =
        hash.key?('self_declared_legal_representative') ? hash['self_declared_legal_representative'] : nil
      address = CreateRegisterInformationAddressRequest.from_hash(hash['address']) if
        hash['address']
      # Parameter is an array, so we need to iterate through it
      phone_numbers = nil
      unless hash['phone_numbers'].nil?
        phone_numbers = []
        hash['phone_numbers'].each do |structure|
          phone_numbers << (CreateRegisterInformationPhoneRequest.from_hash(structure) if structure)
        end
      end

      phone_numbers = nil unless hash.key?('phone_numbers')
      mother_name = hash.key?('mother_name') ? hash['mother_name'] : SKIP

      # Create object from extracted values.
      CreateManagingPartnerRequest.new(name,
                                       email,
                                       document,
                                       birthdate,
                                       monthly_income,
                                       professional_occupation,
                                       self_declared_legal_representative,
                                       address,
                                       phone_numbers,
                                       mother_name)
    end
  end
end