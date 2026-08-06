
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

## Example

```ruby
get_boleto_transaction_response = GetBoletoTransactionResponse.new(
  'url2',
  'barcode2',
  'nosso_numero8',
  'bank6',
  'document_number8',
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  'gateway_id8',
  40,
  'status6',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

