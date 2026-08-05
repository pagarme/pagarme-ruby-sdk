
# Create Fine Request

Fine Request

## Structure

`CreateFineRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `days` | `Integer` | Required | Days |
| `type` | `String` | Required | Type |
| `amount` | `Integer` | Required | Amount |

## Example

```ruby
create_fine_request = CreateFineRequest.new(
  nil,
  '"percentage" or "flat"'
)
```

