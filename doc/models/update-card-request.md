
# Update Card Request

Request for updating a card

## Structure

`UpdateCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `holder_name` | `String` | Required | Holder name |
| `exp_month` | `Integer` | Required | Expiration month |
| `exp_year` | `Integer` | Required | Expiration year |
| `billing_address_id` | `String` | Optional | Id of the address to be used as billing address |
| `billing_address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Billing address |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `label` | `String` | Required | - |

## Example

```ruby
update_card_request = UpdateCardRequest.new(
  'holder_name0',
  102,
  142,
  CreateAddressRequest.new,
  {
    'key0': 'metadata1',
    'key1': 'metadata0'
  },
  'label4',
  'billing_address_id0'
)
```

