
# Create Subscription Item Request

Request for creating a new subscription item

## Structure

`CreateSubscriptionItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Required | Item description |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Pricing scheme |
| `id` | `String` | Required | Item id |
| `plan_item_id` | `String` | Required | Plan item id |
| `discounts` | [`Array[CreateDiscountRequest]`](../../doc/models/create-discount-request.md) | Required | Discounts for the item |
| `name` | `String` | Required | Item name |
| `cycles` | `Integer` | Optional | Number of cycles which the item will be charged |
| `quantity` | `Integer` | Optional | Quantity of items |
| `minimum_price` | `Integer` | Optional | Minimum price |

## Example

```ruby
create_subscription_item_request = CreateSubscriptionItemRequest.new(
  nil,
  CreatePricingSchemeRequest.new(
    nil,
    []
  ),
  nil,
  nil,
  [
    nil
  ],
  nil,
  44,
  24,
  36
)
```

