# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The ApplePay Token Payment Request
  class CreateApplePayRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The token version
    # @return [String]
    attr_accessor :version

    # The cryptography data
    # @return [String]
    attr_accessor :data

    # The ApplePay header request
    # @return [CreateApplePayHeaderRequest]
    attr_accessor :header

    # Detached PKCS #7 signature, Base64 encoded as string
    # @return [String]
    attr_accessor :signature

    # ApplePay Merchant identifier
    # @return [String]
    attr_accessor :merchant_identifier

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['version'] = 'version'
      @_hash['data'] = 'data'
      @_hash['header'] = 'header'
      @_hash['signature'] = 'signature'
      @_hash['merchant_identifier'] = 'merchant_identifier'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(version = nil, data = nil, header = nil, signature = nil,
                   merchant_identifier = nil)
      @version = version
      @data = data
      @header = header
      @signature = signature
      @merchant_identifier = merchant_identifier
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      version = hash.key?('version') ? hash['version'] : nil
      data = hash.key?('data') ? hash['data'] : nil
      header = CreateApplePayHeaderRequest.from_hash(hash['header']) if hash['header']
      signature = hash.key?('signature') ? hash['signature'] : nil
      merchant_identifier =
        hash.key?('merchant_identifier') ? hash['merchant_identifier'] : nil

      # Create object from extracted values.
      CreateApplePayRequest.new(version,
                                data,
                                header,
                                signature,
                                merchant_identifier)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} version: #{@version}, data: #{@data}, header: #{@header}, signature:"\
      " #{@signature}, merchant_identifier: #{@merchant_identifier}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} version: #{@version.inspect}, data: #{@data.inspect}, header:"\
      " #{@header.inspect}, signature: #{@signature.inspect}, merchant_identifier:"\
      " #{@merchant_identifier.inspect}>"
    end
  end
end
