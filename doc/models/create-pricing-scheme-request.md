
# Create Pricing Scheme Request

Request for creating a pricing scheme

## Structure

`CreatePricingSchemeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheme_type` | `String` | Required | Scheme type |
| `price_brackets` | [`Array[CreatePriceBracketRequest]`](../../doc/models/create-price-bracket-request.md) | Optional | Price brackets |
| `price` | `Integer` | Optional | Price |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `percentage` | `Float` | Optional | percentual value used in pricing_scheme Percent |

## Example

```ruby
create_pricing_scheme_request = CreatePricingSchemeRequest.new(
  'scheme_type2',
  [
    nil,
    CreatePriceBracketRequest.new,
    CreatePriceBracketRequest.new
  ],
  76,
  172,
  133.1
)
```

