
# Update Pricing Scheme Request

Request for updating a pricing scheme

## Structure

`UpdatePricingSchemeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheme_type` | `String` | Required | Scheme type |
| `price_brackets` | [`Array[UpdatePriceBracketRequest]`](../../doc/models/update-price-bracket-request.md) | Required | Price brackets |
| `price` | `Integer` | Optional | Price |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `percentage` | `Float` | Optional | percentual value used in pricing_scheme Percent |

## Example

```ruby
update_pricing_scheme_request = UpdatePricingSchemeRequest.new(
  nil,
  [
    nil
  ],
  250,
  154,
  88.88
)
```

