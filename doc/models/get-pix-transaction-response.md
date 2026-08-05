
# Get Pix Transaction Response

Response object when getting a pix transaction

## Structure

`GetPixTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `qr_code` | `String` | Optional | - |
| `qr_code_url` | `String` | Optional | - |
| `expires_at` | `DateTime` | Optional | - |
| `additional_information` | [`Array[PixAdditionalInformation]`](../../doc/models/pix-additional-information.md) | Optional | - |
| `end_to_end_id` | `String` | Optional | - |
| `payer` | [`GetPixPayerResponse`](../../doc/models/get-pix-payer-response.md) | Optional | - |
| `pix_provider_tid` | `String` | Optional | Pix provider TID |

## Example

```ruby
get_pix_transaction_response = GetPixTransactionResponse.new(
  'qr_code8',
  'qr_code_url4',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  [
    nil
  ],
  'end_to_end_id8',
  nil,
  nil,
  'gateway_id8',
  40,
  'status6',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

