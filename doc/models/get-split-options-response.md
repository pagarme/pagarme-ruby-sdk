
# Get Split Options Response

## Structure

`GetSplitOptionsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `liable` | `TrueClass \| FalseClass` | Optional | - |
| `charge_processing_fee` | `TrueClass \| FalseClass` | Optional | - |
| `charge_remainder_fee` | `String` | Optional | - |

## Example

```ruby
get_split_options_response = GetSplitOptionsResponse.new(
  false,
  false,
  'charge_remainder_fee4'
)
```

