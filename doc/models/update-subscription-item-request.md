
# Update Subscription Item Request

Request for updating a subscription item

## Structure

`UpdateSubscriptionItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Required | Description |
| `status` | `String` | Required | Status |
| `pricing_scheme` | [`UpdatePricingSchemeRequest`](../../doc/models/update-pricing-scheme-request.md) | Required | Pricing scheme |
| `name` | `String` | Required | Item name |
| `cycles` | `Integer` | Optional | Number of cycles that the item will be charged |
| `quantity` | `Integer` | Optional | Quantity |
| `minimum_price` | `Integer` | Optional | Minimum price |

## Example

```ruby
update_subscription_item_request = UpdateSubscriptionItemRequest.new(
  nil,
  nil,
  UpdatePricingSchemeRequest.new(
    nil,
    [
      nil
    ],
    166,
    6,
    251.76
  ),
  nil,
  14,
  222,
  22
)
```

