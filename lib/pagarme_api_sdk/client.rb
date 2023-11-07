# pagarme_api_sdk
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeApiSdk
  #  pagarme_api_sdk client class.
  class Client
    attr_reader :config, :auth_managers

    # Access to subscriptions controller.
    # @return [SubscriptionsController] Returns the controller instance.
    def subscriptions
      @subscriptions ||= SubscriptionsController.new @global_configuration
    end

    # Access to orders controller.
    # @return [OrdersController] Returns the controller instance.
    def orders
      @orders ||= OrdersController.new @global_configuration
    end

    # Access to plans controller.
    # @return [PlansController] Returns the controller instance.
    def plans
      @plans ||= PlansController.new @global_configuration
    end

    # Access to invoices controller.
    # @return [InvoicesController] Returns the controller instance.
    def invoices
      @invoices ||= InvoicesController.new @global_configuration
    end

    # Access to customers controller.
    # @return [CustomersController] Returns the controller instance.
    def customers
      @customers ||= CustomersController.new @global_configuration
    end

    # Access to charges controller.
    # @return [ChargesController] Returns the controller instance.
    def charges
      @charges ||= ChargesController.new @global_configuration
    end

    # Access to recipients controller.
    # @return [RecipientsController] Returns the controller instance.
    def recipients
      @recipients ||= RecipientsController.new @global_configuration
    end

    # Access to tokens controller.
    # @return [TokensController] Returns the controller instance.
    def tokens
      @tokens ||= TokensController.new @global_configuration
    end

    # Access to transactions controller.
    # @return [TransactionsController] Returns the controller instance.
    def transactions
      @transactions ||= TransactionsController.new @global_configuration
    end

    # Access to transfers controller.
    # @return [TransfersController] Returns the controller instance.
    def transfers
      @transfers ||= TransfersController.new @global_configuration
    end

    # Access to payables controller.
    # @return [PayablesController] Returns the controller instance.
    def payables
      @payables ||= PayablesController.new @global_configuration
    end

    # Access to balance_operations controller.
    # @return [BalanceOperationsController] Returns the controller instance.
    def balance_operations
      @balance_operations ||= BalanceOperationsController.new @global_configuration
    end

    def initialize(connection: nil, adapter: :net_http_persistent, timeout: 60,
                   max_retries: 0, retry_interval: 1, backoff_factor: 2,
                   retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                   retry_methods: %i[get put], http_callback: nil,
                   environment: Environment::PRODUCTION,
                   basic_auth_user_name: 'TODO: Replace',
                   basic_auth_password: 'TODO: Replace',
                   service_referer_name: 'TODO: Replace', config: nil)
      @config = if config.nil?
                  Configuration.new(connection: connection, adapter: adapter,
                                    timeout: timeout, max_retries: max_retries,
                                    retry_interval: retry_interval,
                                    backoff_factor: backoff_factor,
                                    retry_statuses: retry_statuses,
                                    retry_methods: retry_methods,
                                    http_callback: http_callback,
                                    environment: environment,
                                    basic_auth_user_name: basic_auth_user_name,
                                    basic_auth_password: basic_auth_password,
                                    service_referer_name: service_referer_name)
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)
                                                 .global_header('ServiceRefererName', @config.service_referer_name)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      ['global'].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['global'] = BasicAuth.new(http_client_config.basic_auth_user_name,
                                               http_client_config.basic_auth_password)
    end
  end
end
