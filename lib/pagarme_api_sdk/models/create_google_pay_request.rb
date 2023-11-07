# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # The GooglePay Token Payment Request
  class CreateGooglePayRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Informação sobre a versão do token. Único valor aceito é EC_v2
    # @return [String]
    attr_accessor :version

    # Dados de pagamento criptografados. Corresponde ao encryptedMessage do
    # token Google.
    # @return [String]
    attr_accessor :data

    # The GooglePay intermediate signing key request
    # @return [CreateGooglePayIntermediateSigningKeyRequest]
    attr_accessor :intermediate_signing_key

    # Assinatura dos dados de pagamento. Verifica se a origem da mensagem é o
    # Google. Corresponde ao signature do token Google.
    # @return [String]
    attr_accessor :signature

    # Assinatura dos dados de pagamento. Verifica se a origem da mensagem é o
    # Google. Corresponde ao signature do token Google.
    # @return [String]
    attr_accessor :signed_message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['version'] = 'version'
      @_hash['data'] = 'data'
      @_hash['intermediate_signing_key'] = 'intermediate_signing_key'
      @_hash['signature'] = 'signature'
      @_hash['signed_message'] = 'signed_message'
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

    def initialize(version = nil,
                   data = nil,
                   intermediate_signing_key = nil,
                   signature = nil,
                   signed_message = nil)
      @version = version
      @data = data
      @intermediate_signing_key = intermediate_signing_key
      @signature = signature
      @signed_message = signed_message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      version = hash.key?('version') ? hash['version'] : nil
      data = hash.key?('data') ? hash['data'] : nil
      if hash['intermediate_signing_key']
        intermediate_signing_key = CreateGooglePayIntermediateSigningKeyRequest.from_hash(hash['intermediate_signing_key'])
      end
      signature = hash.key?('signature') ? hash['signature'] : nil
      signed_message =
        hash.key?('signed_message') ? hash['signed_message'] : nil

      # Create object from extracted values.
      CreateGooglePayRequest.new(version,
                                 data,
                                 intermediate_signing_key,
                                 signature,
                                 signed_message)
    end
  end
end
