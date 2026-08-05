
# Get Movement Object Settlement Response

Generic response object for getting a MovementObjectSettlement.

## Structure

`GetMovementObjectSettlementResponse`

## Inherits From

[`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | `String` | Optional | - |
| `brand` | `String` | Optional | - |
| `payment_date` | `String` | Optional | - |
| `recipient_id` | `String` | Optional | - |
| `document_type` | `String` | Optional | - |
| `document` | `String` | Optional | - |
| `contract_obligation_id` | `String` | Optional | - |
| `liquidation_arrangement_id` | `String` | Optional | - |
| `external_engine_payment_id` | `String` | Optional | - |

## Example

```ruby
get_movement_object_settlement_response = GetMovementObjectSettlementResponse.new(
  'product6',
  'brand8',
  'payment_date4',
  'recipient_id6',
  'document_type2',
  nil,
  nil,
  nil,
  nil,
  nil,
  'id2',
  'status4',
  'amount4',
  'created_at0'
)
```

