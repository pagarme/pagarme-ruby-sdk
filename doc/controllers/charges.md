# Charges

```ruby
charges_controller = client.charges
```

## Class Name

`ChargesController`

## Methods

* [Cancel Charge](../../doc/controllers/charges.md#cancel-charge)
* [Capture Charge](../../doc/controllers/charges.md#capture-charge)
* [Confirm Payment](../../doc/controllers/charges.md#confirm-payment)
* [Create Charge](../../doc/controllers/charges.md#create-charge)
* [Get Charge](../../doc/controllers/charges.md#get-charge)
* [Get Charge Transactions](../../doc/controllers/charges.md#get-charge-transactions)
* [Get Charges](../../doc/controllers/charges.md#get-charges)
* [Get Charges Summary](../../doc/controllers/charges.md#get-charges-summary)
* [Retry Charge](../../doc/controllers/charges.md#retry-charge)
* [Update Charge Card](../../doc/controllers/charges.md#update-charge-card)
* [Update Charge Due Date](../../doc/controllers/charges.md#update-charge-due-date)
* [Update Charge Metadata](../../doc/controllers/charges.md#update-charge-metadata)
* [Update Charge Payment Method](../../doc/controllers/charges.md#update-charge-payment-method)


# Cancel Charge

Cancel a charge

```ruby
def cancel_charge(charge_id,
                  request: nil,
                  idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`CreateCancelChargeRequest`](../../doc/models/create-cancel-charge-request.md) | Body, Optional | Request for cancelling a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.cancel_charge(charge_id)
puts result
```


# Capture Charge

Captures a charge

```ruby
def capture_charge(charge_id,
                   request: nil,
                   idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`CreateCaptureChargeRequest`](../../doc/models/create-capture-charge-request.md) | Body, Optional | Request for capturing a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.capture_charge(charge_id)
puts result
```


# Confirm Payment

```ruby
def confirm_payment(charge_id,
                    request: nil,
                    idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | - |
| `request` | [`CreateConfirmPaymentRequest`](../../doc/models/create-confirm-payment-request.md) | Body, Optional | Request for confirm payment |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.confirm_payment(charge_id)
puts result
```


# Create Charge

Creates a new charge

```ruby
def create_charge(request,
                  idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateChargeRequest`](../../doc/models/create-charge-request.md) | Body, Required | Request for creating a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
request = CreateChargeRequest.new(
  242,
  CreatePaymentRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    [],
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    {}
  ),
  'order_id0'
)

result = charges_controller.create_charge(request)
puts result
```


# Get Charge

Get a charge from its id

```ruby
def get_charge(charge_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.get_charge(charge_id)
puts result
```


# Get Charge Transactions

```ruby
def get_charge_transactions(charge_id,
                            page: nil,
                            size: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge Id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

**200**

[`ListChargeTransactionsResponse`](../../doc/models/list-charge-transactions-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.get_charge_transactions(charge_id)
puts result
```


# Get Charges

Lists all charges

```ruby
def get_charges(page: nil,
                size: nil,
                code: nil,
                status: nil,
                payment_method: nil,
                customer_id: nil,
                order_id: nil,
                created_since: nil,
                created_until: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for charge's code |
| `status` | `String` | Query, Optional | Filter for charge's status |
| `payment_method` | `String` | Query, Optional | Filter for charge's payment method |
| `customer_id` | `String` | Query, Optional | Filter for charge's customer id |
| `order_id` | `String` | Query, Optional | Filter for charge's order id |
| `created_since` | `DateTime` | Query, Optional | Filter for the beginning of the range for charge's creation |
| `created_until` | `DateTime` | Query, Optional | Filter for the end of the range for charge's creation |

## Response Type

**200**

[`ListChargesResponse`](../../doc/models/list-charges-response.md)

## Example Usage

```ruby
result = charges_controller.get_charges
puts result
```


# Get Charges Summary

```ruby
def get_charges_summary(status,
                        created_since: nil,
                        created_until: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Query, Required | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |

## Response Type

**200**

[`GetChargesSummaryResponse`](../../doc/models/get-charges-summary-response.md)

## Example Usage

```ruby
status = 'status8'

result = charges_controller.get_charges_summary(status)
puts result
```


# Retry Charge

Retries a charge

```ruby
def retry_charge(charge_id,
                 idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.retry_charge(charge_id)
puts result
```


# Update Charge Card

Updates the card from a charge

```ruby
def update_charge_card(charge_id,
                       request,
                       idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`UpdateChargeCardRequest`](../../doc/models/update-charge-card-request.md) | Body, Required | Request for updating a charge's card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

request = UpdateChargeCardRequest.new(
  nil,
  nil,
  CreateCardRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    {},
    'credit'
  )
)

result = charges_controller.update_charge_card(
  charge_id,
  request
)
puts result
```


# Update Charge Due Date

Updates the due date from a charge

```ruby
def update_charge_due_date(charge_id,
                           request,
                           idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge Id |
| `request` | [`UpdateChargeDueDateRequest`](../../doc/models/update-charge-due-date-request.md) | Body, Required | Request for updating the due date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

request = UpdateChargeDueDateRequest.new(
  DateTimeHelper.from_rfc3339(nil)
)

result = charges_controller.update_charge_due_date(
  charge_id,
  request
)
puts result
```


# Update Charge Metadata

Updates the metadata from a charge

```ruby
def update_charge_metadata(charge_id,
                           request,
                           idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | The charge id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the charge metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = charges_controller.update_charge_metadata(
  charge_id,
  request
)
puts result
```


# Update Charge Payment Method

Updates a charge's payment method

```ruby
def update_charge_payment_method(charge_id,
                                 request,
                                 idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`UpdateChargePaymentMethodRequest`](../../doc/models/update-charge-payment-method-request.md) | Body, Required | Request for updating the payment method from a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

request = UpdateChargePaymentMethodRequest.new(
  nil,
  nil,
  CreateCreditCardPaymentRequest.new(
    1,
    nil,
    nil,
    nil,
    nil,
    nil,
    true,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    '"first" or "subsequent"'
  ),
  CreateDebitCardPaymentRequest.new,
  CreateBoletoPaymentRequest.new(
    nil,
    nil,
    CreateAddressRequest.new
  ),
  CreateVoucherPaymentRequest.new(
    nil,
    nil,
    nil,
    nil,
    '"first" or "subsequent"'
  ),
  CreateCashPaymentRequest.new,
  CreateBankTransferPaymentRequest.new,
  CreatePrivateLabelPaymentRequest.new(
    1,
    nil,
    nil,
    nil,
    nil,
    nil,
    true,
    nil,
    nil,
    '"first" or "subsequent"'
  )
)

result = charges_controller.update_charge_payment_method(
  charge_id,
  request
)
puts result
```

