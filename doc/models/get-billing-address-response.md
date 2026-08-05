
# Get Billing Address Response

Response object for getting a billing address

## Structure

`GetBillingAddressResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Optional | - |
| `number` | `String` | Optional | - |
| `zip_code` | `String` | Optional | - |
| `neighborhood` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `country` | `String` | Optional | - |
| `complement` | `String` | Optional | - |
| `line_1` | `String` | Optional | Line 1 for address |
| `line_2` | `String` | Optional | Line 2 for address |

## Example

```ruby
get_billing_address_response = GetBillingAddressResponse.new(
  'street8',
  'number4',
  'zip_code2',
  'neighborhood4',
  'city8'
)
```

