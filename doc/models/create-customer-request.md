
# Create Customer Request

Request for creating a new customer

## Structure

`CreateCustomerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `document` | `String` | Required | Document number. Only numbers, no special characters. |
| `type` | `String` | Required | Person type. Can be either 'individual' or 'company' |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | The customer's address |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `phones` | [`CreatePhonesRequest`](../../doc/models/create-phones-request.md) | Required | - |
| `code` | `String` | Required | Customer code |
| `gender` | `String` | Optional | Customer Gender |
| `document_type` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "name": "Tony Stark",
  "email": "email8",
  "document": "document8",
  "type": "type2",
  "address": {
    "street": "street6",
    "number": "number4",
    "zip_code": "zip_code0",
    "neighborhood": "neighborhood2",
    "city": "city6",
    "state": "state2",
    "country": "country0",
    "complement": "complement2",
    "metadata": {
      "key0": "metadata3",
      "key1": "metadata2",
      "key2": "metadata1"
    },
    "line_1": "line_10",
    "line_2": "line_24"
  },
  "metadata": {
    "key0": "metadata5"
  },
  "phones": {
    "home_phone": {
      "country_code": "country_code0",
      "number": "number2",
      "area_code": "area_code0",
      "Type": "Type0"
    },
    "mobile_phone": {
      "country_code": "country_code0",
      "number": "number8",
      "area_code": "area_code0",
      "Type": "Type0"
    }
  },
  "code": "code6",
  "gender": "gender8",
  "document_type": "document_type6"
}
```

