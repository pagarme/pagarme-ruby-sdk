
# Create Plan Item Request

Request for creating a plan item

## Structure

`CreatePlanItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Item name |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Item's pricing scheme |
| `id` | `String` | Required | Item's id |
| `description` | `String` | Required | Item's description |
| `cycles` | `Integer` | Optional | Number of cycles where the item will be charged |
| `quantity` | `Integer` | Optional | Quantity |

## Example

```ruby
create_plan_item_request = CreatePlanItemRequest.new(
  'name6',
  CreatePricingSchemeRequest.new(
    nil,
    []
  ),
  'id6',
  'description6',
  6,
  230
)
```

