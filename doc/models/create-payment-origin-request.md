
# Create Payment Origin Request

Request object for PaymentOrigin

## Structure

`CreatePaymentOriginRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand_id` | `String` | Optional | - |
| `charge_id` | `String` | Optional | - |

## Example

```ruby
create_payment_origin_request = CreatePaymentOriginRequest.new(
  'brand_id8',
  'charge_id2'
)
```

