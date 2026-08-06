
# Get Interest Response

Interest Response

## Structure

`GetInterestResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | `Integer` | Optional | Days |
| `type` | `String` | Optional | Type |
| `amount` | `Integer` | Optional | Amount |

## Example

```ruby
get_interest_response = GetInterestResponse.new(
  102,
  '"percentage" or "flat"',
  176
)
```

