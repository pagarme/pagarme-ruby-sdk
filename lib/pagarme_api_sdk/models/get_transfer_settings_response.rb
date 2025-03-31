# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # GetTransferSettingsResponse Model.
  class GetTransferSettingsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :transfer_enabled

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transfer_interval

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transfer_day

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transfer_enabled'] = 'transfer_enabled'
      @_hash['transfer_interval'] = 'transfer_interval'
      @_hash['transfer_day'] = 'transfer_day'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transfer_enabled
        transfer_interval
        transfer_day
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        transfer_enabled
        transfer_interval
        transfer_day
      ]
    end

    def initialize(transfer_enabled = SKIP, transfer_interval = SKIP,
                   transfer_day = SKIP)
      @transfer_enabled = transfer_enabled unless transfer_enabled == SKIP
      @transfer_interval = transfer_interval unless transfer_interval == SKIP
      @transfer_day = transfer_day unless transfer_day == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transfer_enabled =
        hash.key?('transfer_enabled') ? hash['transfer_enabled'] : SKIP
      transfer_interval =
        hash.key?('transfer_interval') ? hash['transfer_interval'] : SKIP
      transfer_day = hash.key?('transfer_day') ? hash['transfer_day'] : SKIP

      # Create object from extracted values.
      GetTransferSettingsResponse.new(transfer_enabled,
                                      transfer_interval,
                                      transfer_day)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transfer_enabled: #{@transfer_enabled}, transfer_interval:"\
      " #{@transfer_interval}, transfer_day: #{@transfer_day}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transfer_enabled: #{@transfer_enabled.inspect}, transfer_interval:"\
      " #{@transfer_interval.inspect}, transfer_day: #{@transfer_day.inspect}>"
    end
  end
end
