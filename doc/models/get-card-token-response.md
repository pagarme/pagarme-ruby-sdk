
# Get Card Token Response

Card token data

## Structure

`GetCardTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `last_four_digits` | `String` | Optional | - |
| `holder_name` | `String` | Optional | - |
| `holder_document` | `String` | Optional | - |
| `exp_month` | `Integer` | Optional | - |
| `exp_year` | `Integer` | Optional | - |
| `brand` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `label` | `String` | Optional | - |

## Example

```ruby
get_card_token_response = GetCardTokenResponse.new(
  'last_four_digits8',
  'holder_name8',
  'holder_document4',
  32,
  8
)
```

