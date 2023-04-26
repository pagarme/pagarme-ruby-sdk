
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
  "update_subscription": null,
  "card_id": null,
  "card": {
    "type": "credit"
  },
  "recurrence": null
}
```

