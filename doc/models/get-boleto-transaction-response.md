
# Get Boleto Transaction Response

Response object for getting a boleto transaction

## Structure

`GetBoletoTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | - |
| `barcode` | `String` | Optional | - |
| `nosso_numero` | `String` | Optional | - |
| `bank` | `String` | Optional | - |
| `document_number` | `String` | Optional | - |
| `instructions` | `String` | Optional | - |
| `billing_address` | [`GetBillingAddressResponse`](../../doc/models/get-billing-address-response.md) | Optional | - |
| `due_at` | `DateTime` | Optional | - |
| `qr_code` | `String` | Optional | - |
| `line` | `String` | Optional | - |
| `pdf_password` | `String` | Optional | - |
| `pdf` | `String` | Optional | - |
| `paid_at` | `DateTime` | Optional | - |
| `paid_amount` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `credit_at` | `DateTime` | Optional | - |
| `statement_descriptor` | `String` | Optional | Soft Descriptor |

## Example (as JSON)

```json
{
  "gateway_id": "gateway_id8",
  "amount": 40,
  "status": "status6",
  "success": false,
  "created_at": "2016-03-13T12:52:32.123Z",
  "url": "url0",
  "barcode": "barcode4",
  "nosso_numero": "nosso_numero6",
  "bank": "bank4",
  "document_number": "document_number0"
}
```

