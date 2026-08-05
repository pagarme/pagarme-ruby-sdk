
# Get Fine Response

Fine Response

## Structure

`GetFineResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | `Integer` | Optional | Days |
| `type` | `String` | Optional | Type |
| `amount` | `Integer` | Optional | Amount |

## Example

```ruby
get_fine_response = GetFineResponse.new(
  192,
  '"percentage" or "flat"',
  10
)
```

