
# Create Split Options Request

The Split Options Request

## Structure

`CreateSplitOptionsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `liable` | `TrueClass\|FalseClass` | Optional | Liable options |
| `charge_processing_fee` | `TrueClass\|FalseClass` | Optional | Charge processing fee |
| `charge_remainder_fee` | `TrueClass\|FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "liable": false,
  "charge_processing_fee": false,
  "charge_remainder_fee": false
}
```

