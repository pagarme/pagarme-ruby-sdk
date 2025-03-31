# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetPhonesResponse Model.
  class GetPhonesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [GetPhoneResponse]
    attr_accessor :home_phone

    # TODO: Write general description for this method
    # @return [GetPhoneResponse]
    attr_accessor :mobile_phone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['home_phone'] = 'home_phone'
      @_hash['mobile_phone'] = 'mobile_phone'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        home_phone
        mobile_phone
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        home_phone
        mobile_phone
      ]
    end

    def initialize(home_phone = SKIP, mobile_phone = SKIP)
      @home_phone = home_phone unless home_phone == SKIP
      @mobile_phone = mobile_phone unless mobile_phone == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      home_phone = GetPhoneResponse.from_hash(hash['home_phone']) if hash['home_phone']
      mobile_phone = GetPhoneResponse.from_hash(hash['mobile_phone']) if hash['mobile_phone']

      # Create object from extracted values.
      GetPhonesResponse.new(home_phone,
                            mobile_phone)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} home_phone: #{@home_phone}, mobile_phone: #{@mobile_phone}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} home_phone: #{@home_phone.inspect}, mobile_phone:"\
      " #{@mobile_phone.inspect}>"
    end
  end
end
