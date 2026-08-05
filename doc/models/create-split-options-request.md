
# Create Split Options Request

The Split Options Request

## Structure

`CreateSplitOptionsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `liable` | `TrueClass \| FalseClass` | Optional | Liable options |
| `charge_processing_fee` | `TrueClass \| FalseClass` | Optional | Charge processing fee |
| `charge_remainder_fee` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
create_split_options_request = CreateSplitOptionsRequest.new(
  false,
  false,
  false
)
```

