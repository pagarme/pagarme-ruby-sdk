
# Get Anticipation Response

Anticipation

## Structure

`GetAnticipationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `requested_amount` | `Integer` | Optional | Requested amount |
| `approved_amount` | `Integer` | Optional | Approved amount |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `pgid` | `String` | Optional | Anticipation id on the gateway |
| `created_at` | `DateTime` | Optional | Creation date |
| `updated_at` | `DateTime` | Optional | Last update date |
| `payment_date` | `DateTime` | Optional | Payment date |
| `status` | `String` | Optional | Status |
| `timeframe` | `String` | Optional | Timeframe |

## Example (as JSON)

```json
{
  "id": null,
  "requested_amount": null,
  "approved_amount": null,
  "recipient": null,
  "pgid": null,
  "created_at": null,
  "updated_at": null,
  "payment_date": null,
  "status": null,
  "timeframe": null
}
```

