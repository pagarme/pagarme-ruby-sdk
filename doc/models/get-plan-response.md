
# Get Plan Response

Response object for getting a plan

## Structure

`GetPlanResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `name` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `url` | `String` | Optional | - |
| `statement_descriptor` | `String` | Optional | - |
| `interval` | `String` | Optional | - |
| `interval_count` | `Integer` | Optional | - |
| `billing_type` | `String` | Optional | - |
| `payment_methods` | `Array<String>` | Optional | - |
| `installments` | `Array<Integer>` | Optional | - |
| `status` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `items` | [`Array<GetPlanItemResponse>`](../../doc/models/get-plan-item-response.md) | Optional | - |
| `billing_days` | `Array<Integer>` | Optional | - |
| `shippable` | `TrueClass\|FalseClass` | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `trial_period_days` | `Integer` | Optional | - |
| `minimum_price` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "name": "name0",
  "description": "description0",
  "url": "url4",
  "statement_descriptor": "statement_descriptor0",
  "interval": "interval2",
  "interval_count": 82,
  "billing_type": "billing_type6",
  "payment_methods": [
    "payment_methods5",
    "payment_methods6"
  ],
  "installments": [
    119,
    120,
    121
  ],
  "status": "status8",
  "currency": "currency0",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "items": [
    {
      "id": "id7",
      "name": "name7",
      "status": "status1",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "pricing_scheme": {
        "price": 149,
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
        "minimum_price": 53,
        "percentage": 25.89
      },
      "description": "description7",
      "plan": {
        "id": "id7",
        "name": "name7",
        "description": "description3",
        "url": "url1",
        "statement_descriptor": "statement_descriptor7",
        "interval": "interval5",
        "interval_count": 89,
        "billing_type": "billing_type9",
        "payment_methods": [
          "payment_methods8",
          "payment_methods9"
        ],
        "installments": [
          126,
          127,
          128
        ],
        "status": "status1",
        "currency": "currency7",
        "created_at": "2016-03-13T12:52:32.123Z",
        "updated_at": "2016-03-13T12:52:32.123Z",
        "items": [
          {
            "id": "id4",
            "name": "name4",
            "status": "status6",
            "created_at": "2016-03-13T12:52:32.123Z",
            "updated_at": "2016-03-13T12:52:32.123Z",
            "pricing_scheme": {
              "price": 156,
              "scheme_type": "scheme_type4",
              "price_brackets": [
                {},
                {},
                {}
              ],
              "minimum_price": 60,
              "percentage": 192.22
            },
            "description": "description4",
            "plan": {
              "id": "id0",
              "name": "name0",
              "description": "description0",
              "url": "url4",
              "statement_descriptor": "statement_descriptor0",
              "interval": "interval2",
              "interval_count": 82,
              "billing_type": "billing_type6",
              "payment_methods": [
                "payment_methods5",
                "payment_methods6"
              ],
              "installments": [
                119,
                120,
                121
              ],
              "status": "status8",
              "currency": "currency0",
              "created_at": "2016-03-13T12:52:32.123Z",
              "updated_at": "2016-03-13T12:52:32.123Z",
              "items": [
                {},
                {}
              ],
              "billing_days": [
                143,
                144,
                145
              ],
              "shippable": false,
              "metadata": {
                "key0": "metadata3",
                "key1": "metadata4",
                "key2": "metadata5"
              },
              "trial_period_days": 54,
              "minimum_price": 176,
              "deleted_at": "2016-03-13T12:52:32.123Z"
            },
            "quantity": 134,
            "cycles": 102,
            "deleted_at": "2016-03-13T12:52:32.123Z"
          },
          {
            "id": "id5",
            "name": "name5",
            "status": "status7",
            "created_at": "2016-03-13T12:52:32.123Z",
            "updated_at": "2016-03-13T12:52:32.123Z",
            "pricing_scheme": {
              "price": 157,
              "scheme_type": "scheme_type3",
              "price_brackets": [
                {},
                {}
              ],
              "minimum_price": 61,
              "percentage": 192.21
            },
            "description": "description5",
            "plan": {
              "id": "id1",
              "name": "name1",
              "description": "description9",
              "url": "url5",
              "statement_descriptor": "statement_descriptor1",
              "interval": "interval1",
              "interval_count": 83,
              "billing_type": "billing_type5",
              "payment_methods": [
                "payment_methods4"
              ],
              "installments": [
                120
              ],
              "status": "status7",
              "currency": "currency9",
              "created_at": "2016-03-13T12:52:32.123Z",
              "updated_at": "2016-03-13T12:52:32.123Z",
              "items": [
                {},
                {},
                {}
              ],
              "billing_days": [
                142,
                143
              ],
              "shippable": true,
              "metadata": {
                "key0": "metadata2",
                "key1": "metadata3"
              },
              "trial_period_days": 55,
              "minimum_price": 175,
              "deleted_at": "2016-03-13T12:52:32.123Z"
            },
            "quantity": 135,
            "cycles": 101,
            "deleted_at": "2016-03-13T12:52:32.123Z"
          }
        ],
        "billing_days": [
          120,
          119,
          118
        ],
        "shippable": true,
        "metadata": {
          "key0": "metadata6",
          "key1": "metadata7",
          "key2": "metadata8"
        },
        "trial_period_days": 61,
        "minimum_price": 169,
        "deleted_at": "2016-03-13T12:52:32.123Z"
      },
      "quantity": 127,
      "cycles": 109,
      "deleted_at": "2016-03-13T12:52:32.123Z"
    },
    {
      "id": "id8",
      "name": "name8",
      "status": "status0",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "pricing_scheme": {
        "price": 150,
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
        "minimum_price": 54,
        "percentage": 25.88
      },
      "description": "description8",
      "plan": {
        "id": "id6",
        "name": "name6",
        "description": "description4",
        "url": "url0",
        "statement_descriptor": "statement_descriptor6",
        "interval": "interval6",
        "interval_count": 88,
        "billing_type": "billing_type0",
        "payment_methods": [
          "payment_methods9",
          "payment_methods0",
          "payment_methods1"
        ],
        "installments": [
          125,
          126
        ],
        "status": "status2",
        "currency": "currency6",
        "created_at": "2016-03-13T12:52:32.123Z",
        "updated_at": "2016-03-13T12:52:32.123Z",
        "items": [
          {
            "id": "id3",
            "name": "name3",
            "status": "status5",
            "created_at": "2016-03-13T12:52:32.123Z",
            "updated_at": "2016-03-13T12:52:32.123Z",
            "pricing_scheme": {
              "price": 155,
              "scheme_type": "scheme_type5",
              "price_brackets": [
                {}
              ],
              "minimum_price": 59,
              "percentage": 192.23
            },
            "description": "description3",
            "plan": {
              "id": "id1",
              "name": "name1",
              "description": "description9",
              "url": "url5",
              "statement_descriptor": "statement_descriptor1",
              "interval": "interval1",
              "interval_count": 83,
              "billing_type": "billing_type5",
              "payment_methods": [
                "payment_methods4"
              ],
              "installments": [
                120
              ],
              "status": "status7",
              "currency": "currency9",
              "created_at": "2016-03-13T12:52:32.123Z",
              "updated_at": "2016-03-13T12:52:32.123Z",
              "items": [
                {},
                {},
                {}
              ],
              "billing_days": [
                142,
                143
              ],
              "shippable": true,
              "metadata": {
                "key0": "metadata2",
                "key1": "metadata3"
              },
              "trial_period_days": 55,
              "minimum_price": 175,
              "deleted_at": "2016-03-13T12:52:32.123Z"
            },
            "quantity": 133,
            "cycles": 103,
            "deleted_at": "2016-03-13T12:52:32.123Z"
          }
        ],
        "billing_days": [
          119
        ],
        "shippable": false,
        "metadata": {
          "key0": "metadata7"
        },
        "trial_period_days": 60,
        "minimum_price": 170,
        "deleted_at": "2016-03-13T12:52:32.123Z"
      },
      "quantity": 128,
      "cycles": 108,
      "deleted_at": "2016-03-13T12:52:32.123Z"
    }
  ],
  "billing_days": [
    143,
    144,
    145
  ],
  "shippable": false,
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "trial_period_days": 54,
  "minimum_price": 176,
  "deleted_at": "2016-03-13T12:52:32.123Z"
}
```

