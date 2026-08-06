
# Create Address Request

Request for creating a new Address

## Structure

`CreateAddressRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Required | Street |
| `number` | `String` | Required | Number |
| `zip_code` | `String` | Required | The zip code containing only numbers. No special characters or spaces. |
| `neighborhood` | `String` | Required | Neighborhood |
| `city` | `String` | Required | City |
| `state` | `String` | Required | State |
| `country` | `String` | Required | Country. Must be entered using ISO 3166-1 alpha-2 format. See https://pt.wikipedia.org/wiki/ISO_3166-1_alfa-2 |
| `complement` | `String` | Required | Complement |
| `metadata` | `Hash[String, String]` | Optional | Metadata |
| `line_1` | `String` | Required | Line 1 for address |
| `line_2` | `String` | Required | Line 2 for address |

## Example

```ruby
create_address_request = CreateAddressRequest.new(
  'street8',
  'number6',
  'zip_code2',
  'neighborhood4',
  'city8',
  'state4',
  'country2',
  'complement4',
  'line_12',
  'line_26',
  {
    'key0': 'metadata5',
    'key1': 'metadata4'
  }
)
```

