
# Create Setup Request

Request for creating a Setup for a subscription. The setup is an order that will be created at the subscription creation.

## Structure

`CreateSetupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Setup amount |
| `description` | `String` | Required | Description |
| `payment` | [`CreatePaymentRequest`](../../doc/models/create-payment-request.md) | Required | Payment data |

## Example

```ruby
create_setup_request = CreateSetupRequest.new(
  242,
  'description4',
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
  )
)
```

