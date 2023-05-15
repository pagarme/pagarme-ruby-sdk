
# Update Charge Card Request

Request for updating card data

## Structure

`UpdateChargeCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `update_subscription` | `TrueClass\|FalseClass` | Required | Indicates if the subscriptions using this card must also be updated |
| `card_id` | `String` | Required | Card id |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Card data |
| `recurrence` | `TrueClass\|FalseClass` | Required | Indicates a recurrence |

## Example (as JSON)

```json
{
  "update_subscription": false,
  "card_id": "card_id4",
  "card": {
    "type": "credit",
    "number": "number6",
    "holder_name": "holder_name2",
    "exp_month": 228,
    "exp_year": 68,
    "cvv": "cvv4"
  },
  "recurrence": false
}
```

