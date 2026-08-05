
# Create Charge Request

Request for creating a new charge

## Structure

`CreateChargeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Code |
| `amount` | `Integer` | Required | The amount of the charge, in cents |
| `customer_id` | `String` | Optional | The customer's id |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Optional | Customer data |
| `payment` | [`CreatePaymentRequest`](../../doc/models/create-payment-request.md) | Required | Payment data |
| `metadata` | `Hash[String, String]` | Optional | Metadata |
| `due_at` | `DateTime` | Optional | The charge due date |
| `antifraud` | [`CreateAntifraudRequest`](../../doc/models/create-antifraud-request.md) | Optional | - |
| `order_id` | `String` | Required | Order Id |

## Example

```ruby
create_charge_request = CreateChargeRequest.new(
  156,
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
  'order_id0',
  'code4',
  'customer_id4',
  nil,
  {
    'key0': 'metadata3',
    'key1': 'metadata2'
  },
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

