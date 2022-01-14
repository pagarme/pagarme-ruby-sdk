
# Client Class Documentation

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `basic_auth_user_name` | `String` | The username to use with basic authentication |
| `basic_auth_password` | `String` | The password to use with basic authentication |
| `http_client_instance` | `HttpClient` | The Http Client passed from the sdk user for making requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |

The API client can be initialized as follows:

```ruby
client = PagarmeApiSdk::Client.new(
  basic_auth_user_name: 'BasicAuthUserName',
  basic_auth_password: 'BasicAuthPassword',
)
```

## PagarmeApiSDK Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| plans | Gets PlansController |
| subscriptions | Gets SubscriptionsController |
| invoices | Gets InvoicesController |
| orders | Gets OrdersController |
| customers | Gets CustomersController |
| recipients | Gets RecipientsController |
| charges | Gets ChargesController |
| transfers | Gets TransfersController |
| tokens | Gets TokensController |
| transactions | Gets TransactionsController |

