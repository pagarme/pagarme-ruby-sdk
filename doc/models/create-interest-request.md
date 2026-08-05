
# Create Interest Request

Interest Request

## Structure

`CreateInterestRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | `Integer` | Required | Days |
| `type` | `String` | Required | Type |
| `amount` | `Integer` | Required | Amount |

## Example

```ruby
create_interest_request = CreateInterestRequest.new(
  nil,
  '"percentage" or "flat"'
)
```

