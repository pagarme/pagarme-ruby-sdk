
# Create Voucher Payment Request

The settings for creating a voucher payment

## Structure

`CreateVoucherPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | The text that will be shown on the voucher's statement |
| `card_id` | `String` | Optional | Card id |
| `card_token` | `String` | Optional | Card token |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Optional | Card info |

## Example (as JSON)

```json
{
  "statement_descriptor": null,
  "card_id": null,
  "card_token": null,
  "Card": null
}
```

