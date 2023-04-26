
# Create Plan Request

Request for creating a plan

## Structure

`CreatePlanRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Plan's name |
| `description` | `String` | Required | Description |
| `statement_descriptor` | `String` | Required | Text that will be printed on the credit card's statement |
| `items` | [`Array<CreatePlanItemRequest>`](../../doc/models/create-plan-item-request.md) | Required | Plan items |
| `shippable` | `TrueClass\|FalseClass` | Required | Indicates if the plan is shippable |
| `payment_methods` | `Array<String>` | Required | Allowed payment methods for the plan |
| `installments` | `Array<Integer>` | Required | Number of installments |
| `currency` | `String` | Required | Currency |
| `interval` | `String` | Required | Interval |
| `interval_count` | `Integer` | Required | Interval counts between two charges. For instance, if the interval is 'month' and count is 2, the customer will be charged once every two months. |
| `billing_days` | `Array<Integer>` | Required | Allowed billings days for the subscription, in case the plan type is 'exact_day' |
| `billing_type` | `String` | Required | Billing type |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Plan's pricing scheme |
| `metadata` | `Hash of String` | Required | Metadata |
| `minimum_price` | `Integer` | Optional | Minimum price that will be charged |
| `cycles` | `Integer` | Optional | Number of cycles |
| `quantity` | `Integer` | Optional | Quantity |
| `trial_period_days` | `Integer` | Optional | Trial period, where the customer will not be charged. |

## Example (as JSON)

```json
{
  "name": "name0",
  "description": "description0",
  "statement_descriptor": "statement_descriptor0",
  "items": [
    {
      "name": "name7",
      "pricing_scheme": {
        "scheme_type": "scheme_type1",
        "price_brackets": [
          {
            "start_quantity": 60,
            "price": 2,
            "end_quantity": 68,
            "overage_price": 82
          },
          {
            "start_quantity": 61,
            "price": 1,
            "end_quantity": 69,
            "overage_price": 83
          },
          {
            "start_quantity": 62,
            "price": 0,
            "end_quantity": 70,
            "overage_price": 84
          }
        ],
        "price": 149,
        "minimum_price": 53,
        "percentage": 25.89
      },
      "id": "id7",
      "description": "description7",
      "cycles": 109,
      "quantity": 127
    },
    {
      "name": "name8",
      "pricing_scheme": {
        "scheme_type": "scheme_type0",
        "price_brackets": [
          {
            "start_quantity": 59,
            "price": 3,
            "end_quantity": 67,
            "overage_price": 81
          },
          {
            "start_quantity": 60,
            "price": 2,
            "end_quantity": 68,
            "overage_price": 82
          }
        ],
        "price": 150,
        "minimum_price": 54,
        "percentage": 25.88
      },
      "id": "id8",
      "description": "description8",
      "cycles": 108,
      "quantity": 128
    }
  ],
  "shippable": false,
  "payment_methods": [
    "payment_methods5",
    "payment_methods6"
  ],
  "installments": [
    119,
    120,
    121
  ],
  "currency": "currency0",
  "interval": "interval2",
  "interval_count": 82,
  "billing_days": [
    143,
    144,
    145
  ],
  "billing_type": "billing_type6",
  "pricing_scheme": {
    "scheme_type": "scheme_type8",
    "price_brackets": [
      {
        "start_quantity": 119,
        "price": 57,
        "end_quantity": 127,
        "overage_price": 141
      },
      {
        "start_quantity": 120,
        "price": 58,
        "end_quantity": 128,
        "overage_price": 142
      },
      {
        "start_quantity": 121,
        "price": 59,
        "end_quantity": 129,
        "overage_price": 143
      }
    ],
    "price": 166,
    "minimum_price": 6,
    "percentage": 251.76
  },
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "minimum_price": 176,
  "cycles": 168,
  "quantity": 68,
  "trial_period_days": 54
}
```

