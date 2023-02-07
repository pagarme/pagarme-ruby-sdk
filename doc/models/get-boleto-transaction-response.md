
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
  "gateway_id": null,
  "amount": null,
  "status": null,
  "success": null,
  "created_at": null,
  "updated_at": null,
  "attempt_count": null,
  "max_attempts": null,
  "splits": null,
  "next_attempt": null,
  "transaction_type": "boleto",
  "id": null,
  "gateway_response": null,
  "antifraud_response": null,
  "metadata": null,
  "split": null,
  "interest": null,
  "fine": null,
  "max_days_to_pay_past_due": null,
  "url": null,
  "barcode": null,
  "nosso_numero": null,
  "bank": null,
  "document_number": null,
  "instructions": null,
  "billing_address": null,
  "due_at": null,
  "qr_code": null,
  "line": null,
  "pdf_password": null,
  "pdf": null,
  "paid_at": null,
  "paid_amount": null,
  "type": null,
  "credit_at": null,
  "statement_descriptor": null
}
```

