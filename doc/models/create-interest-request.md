
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

## Example (as JSON)

```json
{
  "days": 120,
  "type": "\"percentage\" or \"flat\"",
  "amount": 46
}
```

