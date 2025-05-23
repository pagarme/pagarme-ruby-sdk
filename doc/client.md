
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| service_referer_name | `String` |  |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| basic_auth_credentials | [`BasicAuthCredentials`](auth/basic-authentication.md) | The credential object for Basic Authentication |

The API client can be initialized as follows:

```ruby
client = PagarmeApiSdk::Client.new(
  service_referer_name: 'ServiceRefererName',
  basic_auth_credentials: BasicAuthCredentials.new(
    username: 'BasicAuthUserName',
    password: 'BasicAuthPassword'
  )
)
```

## PagarmeApiSDK Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| subscriptions | Gets SubscriptionsController |
| orders | Gets OrdersController |
| plans | Gets PlansController |
| invoices | Gets InvoicesController |
| customers | Gets CustomersController |
| charges | Gets ChargesController |
| recipients | Gets RecipientsController |
| tokens | Gets TokensController |
| transactions | Gets TransactionsController |
| transfers | Gets TransfersController |
| payables | Gets PayablesController |
| balance_operations | Gets BalanceOperationsController |

