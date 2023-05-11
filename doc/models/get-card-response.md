
# Get Card Response

Response object for getting a credit card

## Structure

`GetCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `last_four_digits` | `String` | Optional | - |
| `brand` | `String` | Optional | - |
| `holder_name` | `String` | Optional | - |
| `exp_month` | `Integer` | Optional | - |
| `exp_year` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `billing_address` | [`GetBillingAddressResponse`](../../doc/models/get-billing-address-response.md) | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `type` | `String` | Optional | Card type |
| `holder_document` | `String` | Optional | Document number for the card's holder |
| `deleted_at` | `DateTime` | Optional | - |
| `first_six_digits` | `String` | Optional | First six digits |
| `label` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "last_four_digits": "last_four_digits6",
  "brand": "brand4",
  "holder_name": "holder_name4",
  "exp_month": 42
}
```

