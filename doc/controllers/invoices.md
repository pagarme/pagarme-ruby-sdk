# Invoices

```ruby
invoices_controller = client.invoices
```

## Class Name

`InvoicesController`

## Methods

* [Cancel Invoice](../../doc/controllers/invoices.md#cancel-invoice)
* [Create Invoice](../../doc/controllers/invoices.md#create-invoice)
* [Get Invoice](../../doc/controllers/invoices.md#get-invoice)
* [Get Invoices](../../doc/controllers/invoices.md#get-invoices)
* [Get Partial Invoice](../../doc/controllers/invoices.md#get-partial-invoice)
* [Update Invoice Metadata](../../doc/controllers/invoices.md#update-invoice-metadata)
* [Update Invoice Status](../../doc/controllers/invoices.md#update-invoice-status)


# Cancel Invoice

Cancels an invoice

```ruby
def cancel_invoice(invoice_id,
                   idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_controller.cancel_invoice(invoice_id)
puts result
```


# Create Invoice

Create an Invoice

```ruby
def create_invoice(subscription_id,
                   cycle_id,
                   request: nil,
                   idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `cycle_id` | `String` | Template, Required | Cycle Id |
| `request` | [`CreateInvoiceRequest`](../../doc/models/create-invoice-request.md) | Body, Optional | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

cycle_id = 'cycle_id6'

result = invoices_controller.create_invoice(
  subscription_id,
  cycle_id
)
puts result
```


# Get Invoice

Gets an invoice

```ruby
def get_invoice(invoice_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice Id |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_controller.get_invoice(invoice_id)
puts result
```


# Get Invoices

Gets all invoices

```ruby
def get_invoices(page: nil,
                 size: nil,
                 code: nil,
                 customer_id: nil,
                 subscription_id: nil,
                 created_since: nil,
                 created_until: nil,
                 status: nil,
                 due_since: nil,
                 due_until: nil,
                 customer_document: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for Invoice's code |
| `customer_id` | `String` | Query, Optional | Filter for Invoice's customer id |
| `subscription_id` | `String` | Query, Optional | Filter for Invoice's subscription id |
| `created_since` | `DateTime` | Query, Optional | Filter for Invoice's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for Invoices creation date end range |
| `status` | `String` | Query, Optional | Filter for Invoice's status |
| `due_since` | `DateTime` | Query, Optional | Filter for Invoice's due date start range |
| `due_until` | `DateTime` | Query, Optional | Filter for Invoice's due date end range |
| `customer_document` | `String` | Query, Optional | - |

## Response Type

**200**

[`ListInvoicesResponse`](../../doc/models/list-invoices-response.md)

## Example Usage

```ruby
result = invoices_controller.get_invoices
puts result
```


# Get Partial Invoice

```ruby
def get_partial_invoice(subscription_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = invoices_controller.get_partial_invoice(subscription_id)
puts result
```


# Update Invoice Metadata

Updates the metadata from an invoice

```ruby
def update_invoice_metadata(invoice_id,
                            request,
                            idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The invoice id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the invoice metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = invoices_controller.update_invoice_metadata(
  invoice_id,
  request
)
puts result
```


# Update Invoice Status

Updates the status from an invoice

```ruby
def update_invoice_status(invoice_id,
                          request,
                          idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice Id |
| `request` | [`UpdateInvoiceStatusRequest`](../../doc/models/update-invoice-status-request.md) | Body, Required | Request for updating an invoice's status |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

request = UpdateInvoiceStatusRequest.new(
  'status8'
)

result = invoices_controller.update_invoice_status(
  invoice_id,
  request
)
puts result
```

