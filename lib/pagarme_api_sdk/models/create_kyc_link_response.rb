# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # KYC Link
  class CreateKYCLinkResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Base64
    # @return [String]
    attr_accessor :base64

    # URL
    # @return [String]
    attr_accessor :url

    # Expiration Date
    # @return [String]
    attr_accessor :expiration_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['base64'] = 'base64'
      @_hash['url'] = 'url'
      @_hash['expiration_date'] = 'expiration_date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        base64
        url
        expiration_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        base64
        url
        expiration_date
      ]
    end

    def initialize(base64 = SKIP, url = SKIP, expiration_date = SKIP)
      @base64 = base64 unless base64 == SKIP
      @url = url unless url == SKIP
      @expiration_date = expiration_date unless expiration_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      base64 = hash.key?('base64') ? hash['base64'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      expiration_date =
        hash.key?('expiration_date') ? hash['expiration_date'] : SKIP

      # Create object from extracted values.
      CreateKYCLinkResponse.new(base64,
                                url,
                                expiration_date)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} base64: #{@base64}, url: #{@url}, expiration_date: #{@expiration_date}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} base64: #{@base64.inspect}, url: #{@url.inspect}, expiration_date:"\
      " #{@expiration_date.inspect}>"
    end
  end
end
