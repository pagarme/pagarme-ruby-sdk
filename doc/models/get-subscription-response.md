
# Get Subscription Response

## Structure

`GetSubscriptionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `start_at` | `DateTime` | Optional | - |
| `interval` | `String` | Optional | - |
| `interval_count` | `Integer` | Optional | - |
| `billing_type` | `String` | Optional | - |
| `current_cycle` | [`GetPeriodResponse`](../../doc/models/get-period-response.md) | Optional | - |
| `payment_method` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `installments` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Optional | - |
| `items` | [`Array<GetSubscriptionItemResponse>`](../../doc/models/get-subscription-item-response.md) | Optional | - |
| `statement_descriptor` | `String` | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `setup` | [`GetSetupResponse`](../../doc/models/get-setup-response.md) | Optional | - |
| `gateway_affiliation_id` | `String` | Optional | Affiliation Code |
| `next_billing_at` | `DateTime` | Optional | - |
| `billing_day` | `Integer` | Optional | - |
| `minimum_price` | `Integer` | Optional | - |
| `canceled_at` | `DateTime` | Optional | - |
| `discounts` | [`Array<GetDiscountResponse>`](../../doc/models/get-discount-response.md) | Optional | Subscription discounts |
| `increments` | [`Array<GetIncrementResponse>`](../../doc/models/get-increment-response.md) | Optional | Subscription increments |
| `boleto_due_days` | `Integer` | Optional | Days until boleto expires |
| `split` | [`GetSubscriptionSplitResponse`](../../doc/models/get-subscription-split-response.md) | Optional | Subscription's split response |
| `boleto` | [`GetSubscriptionBoletoResponse`](../../doc/models/get-subscription-boleto-response.md) | Optional | - |
| `manual_billing` | `TrueClass\|FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "boleto": {
    "interest": {
      "days": 2,
      "type": "percentage",
      "amount": 20
    },
    "fine": {
      "days": 2,
      "type": "flat",
      "amount": 10
    },
    "max_days_to_pay_past_due": 2
  },
  "id": "id0",
  "code": "code8",
  "start_at": "2016-03-13T12:52:32.123Z",
  "interval": "interval2",
  "interval_count": 82
}
```

