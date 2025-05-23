# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  # Bank Account
  class CreateBankAccountRefundingDTO < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Nome/razão social do favorecido
    # @return [String]
    attr_accessor :holder_name

    # Tipo de titular (pessoa física ou jurídica)
    # @return [String]
    attr_accessor :holder_type

    # CPF ou CNPJ do favorecido
    # @return [String]
    attr_accessor :holder_document

    # Dígitos que identificam cada banco.
    # @return [String]
    attr_accessor :bank

    # Número da agência bancária
    # @return [String]
    attr_accessor :branch_number

    # Dígito da agência bancária
    # @return [String]
    attr_accessor :branch_check_digit

    # Número da conta
    # @return [String]
    attr_accessor :account_number

    # Dígito verificador da conta
    # @return [String]
    attr_accessor :account_check_digit

    # Tipo de conta
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['holder_name'] = 'holder_name'
      @_hash['holder_type'] = 'holder_type'
      @_hash['holder_document'] = 'holder_document'
      @_hash['bank'] = 'bank'
      @_hash['branch_number'] = 'branch_number'
      @_hash['branch_check_digit'] = 'branch_check_digit'
      @_hash['account_number'] = 'account_number'
      @_hash['account_check_digit'] = 'account_check_digit'
      @_hash['type'] = 'type'
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

    def initialize(holder_name = nil, holder_type = nil, holder_document = nil,
                   bank = nil, branch_number = nil, branch_check_digit = nil,
                   account_number = nil, account_check_digit = nil, type = nil)
      @holder_name = holder_name
      @holder_type = holder_type
      @holder_document = holder_document
      @bank = bank
      @branch_number = branch_number
      @branch_check_digit = branch_check_digit
      @account_number = account_number
      @account_check_digit = account_check_digit
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      holder_name = hash.key?('holder_name') ? hash['holder_name'] : nil
      holder_type = hash.key?('holder_type') ? hash['holder_type'] : nil
      holder_document =
        hash.key?('holder_document') ? hash['holder_document'] : nil
      bank = hash.key?('bank') ? hash['bank'] : nil
      branch_number = hash.key?('branch_number') ? hash['branch_number'] : nil
      branch_check_digit =
        hash.key?('branch_check_digit') ? hash['branch_check_digit'] : nil
      account_number =
        hash.key?('account_number') ? hash['account_number'] : nil
      account_check_digit =
        hash.key?('account_check_digit') ? hash['account_check_digit'] : nil
      type = hash.key?('type') ? hash['type'] : nil

      # Create object from extracted values.
      CreateBankAccountRefundingDTO.new(holder_name,
                                        holder_type,
                                        holder_document,
                                        bank,
                                        branch_number,
                                        branch_check_digit,
                                        account_number,
                                        account_check_digit,
                                        type)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} holder_name: #{@holder_name}, holder_type: #{@holder_type},"\
      " holder_document: #{@holder_document}, bank: #{@bank}, branch_number: #{@branch_number},"\
      " branch_check_digit: #{@branch_check_digit}, account_number: #{@account_number},"\
      " account_check_digit: #{@account_check_digit}, type: #{@type}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} holder_name: #{@holder_name.inspect}, holder_type: #{@holder_type.inspect},"\
      " holder_document: #{@holder_document.inspect}, bank: #{@bank.inspect}, branch_number:"\
      " #{@branch_number.inspect}, branch_check_digit: #{@branch_check_digit.inspect},"\
      " account_number: #{@account_number.inspect}, account_check_digit:"\
      " #{@account_check_digit.inspect}, type: #{@type.inspect}>"
    end
  end
end
