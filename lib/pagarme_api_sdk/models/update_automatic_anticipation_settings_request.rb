# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # UpdateAutomaticAnticipationSettingsRequest Model.
  class UpdateAutomaticAnticipationSettingsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :volume_percentage

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :delay

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :days

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['type'] = 'type'
      @_hash['volume_percentage'] = 'volume_percentage'
      @_hash['delay'] = 'delay'
      @_hash['days'] = 'days'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        type
        volume_percentage
        delay
        days
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(enabled = SKIP,
                   type = SKIP,
                   volume_percentage = SKIP,
                   delay = SKIP,
                   days = SKIP)
      @enabled = enabled unless enabled == SKIP
      @type = type unless type == SKIP
      @volume_percentage = volume_percentage unless volume_percentage == SKIP
      @delay = delay unless delay == SKIP
      @days = days unless days == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      volume_percentage =
        hash.key?('volume_percentage') ? hash['volume_percentage'] : SKIP
      delay = hash.key?('delay') ? hash['delay'] : SKIP
      days = hash.key?('days') ? hash['days'] : SKIP

      # Create object from extracted values.
      UpdateAutomaticAnticipationSettingsRequest.new(enabled,
                                                     type,
                                                     volume_percentage,
                                                     delay,
                                                     days)
    end
  end
end
