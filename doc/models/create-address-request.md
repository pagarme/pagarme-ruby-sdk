
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

## Example (as JSON)

```json
{
  "street": "street6",
  "number": "number6",
  "zip_code": "zip_code0",
  "neighborhood": "neighborhood2",
  "city": "city6",
  "state": "state8",
  "country": "country0",
  "complement": "complement8",
  "metadata": {
    "key0": "metadata7"
  },
  "line_1": "line_10",
  "line_2": "line_24"
}
```

