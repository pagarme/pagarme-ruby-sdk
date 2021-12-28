
# Create Seller Request

## Structure

`CreateSellerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `code` | `String` | Optional | Seller's code identification |
| `description` | `String` | Optional | Description |
| `document` | `String` | Optional | Document number (individual / company) |
| `address` | [`CreateAddressRequest`](/doc/models/create-address-request.md) | Optional | Address |
| `type` | `String` | Optional | Person type (individual / company) |
| `metadata` | `Hash` | Required | Metadata |

## Example (as JSON)

```json
{
  "name": "name0",
  "code": null,
  "description": null,
  "document": null,
  "address": null,
  "type": null,
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  }
}
```

