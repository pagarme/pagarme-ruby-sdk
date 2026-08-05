
# Update Plan Item Request

Request for updating a plan item

## Structure

`UpdatePlanItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Item name |
| `description` | `String` | Required | Description |
| `status` | `String` | Required | Item status |
| `pricing_scheme` | [`UpdatePricingSchemeRequest`](../../doc/models/update-pricing-scheme-request.md) | Required | Pricing scheme |
| `quantity` | `Integer` | Optional | Quantity |
| `cycles` | `Integer` | Optional | Number of cycles that the item will be charged |

## Example

```ruby
update_plan_item_request = UpdatePlanItemRequest.new(
  nil,
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
  100,
  136
)
```

