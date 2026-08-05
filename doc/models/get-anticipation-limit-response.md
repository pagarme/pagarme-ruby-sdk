
# Get Anticipation Limit Response

Anticipation limit

## Structure

`GetAnticipationLimitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | Amount |
| `anticipation_fee` | `Integer` | Optional | Anticipation fee |

## Example

```ruby
get_anticipation_limit_response = GetAnticipationLimitResponse.new(
  8,
  170
)
```

