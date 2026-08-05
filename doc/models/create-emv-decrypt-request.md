
# Create Emv Decrypt Request

## Structure

`CreateEmvDecryptRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `icc_data` | `String` | Required | - |
| `card_sequence_number` | `String` | Required | - |
| `data` | [`CreateEmvDataDecryptRequest`](../../doc/models/create-emv-data-decrypt-request.md) | Required | - |
| `poi` | [`CreateCardPaymentContactlessPOIRequest`](../../doc/models/create-card-payment-contactless-poi-request.md) | Optional | - |

## Example

```ruby
create_emv_decrypt_request = CreateEmvDecryptRequest.new(
  nil,
  nil,
  CreateEmvDataDecryptRequest.new(
    nil,
    [
      nil
    ]
  )
)
```

