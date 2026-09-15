
# Get Payable Response

Response object for getting an payable

## Structure

`GetPayableResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Payable Identifier |
| `status` | `String` | Required | Payable status |
| `amount` | `Integer` | Required | Payable amount in cents |
| `fee` | `Integer` | Optional | Payable fee amount in cents |
| `anticipation_fee` | `Integer` | Optional | Antecipation fee amount in cents |
| `fraud_coverage_fee` | `Integer` | Optional | Fraud coverage fee amount in cents |
| `installment` | `Integer` | Optional | Number of installment |
| `gateway_id` | `String` | Required | Payment gateway identifier<br><br>**Default**: `'null'` |
| `charge_id` | `String` | Required | Charge identifier<br><br>**Default**: `'null'` |
| `split_id` | `String` | Required | **Default**: `'null'` |
| `bulk_anticipation_id` | `String` | Required | **Default**: `'null'` |
| `anticipation_id` | `String` | Optional | - |
| `recipient_id` | `String` | Required | Recipient identifier |
| `originator_model` | `String` | Required | **Default**: `'null'` |
| `originator_model_id` | `String` | Required | Originator model identifier<br><br>**Default**: `'null'` |
| `payment_date` | `DateTime` | Optional | Payment Date |
| `original_payment_date` | `DateTime` | Required | Original Payment Date |
| `type` | `String` | Optional | Type of payable |
| `payment_method` | `String` | Required | Payment method of transaction<br><br>**Default**: `'null'` |
| `accrual_at` | `DateTime` | Optional | Date issuer identify payment |
| `created_at` | `DateTime` | Required | Creation date |
| `liquidation_arrangement_id` | `String` | Optional | **Default**: `'null'` |
| `settlement_id` | `String` | Required | Settlement identifier  (new in v7.x)<br><br>**Default**: `'null'` |
| `payment_profile_id` | `String` | Required | Operational identifier of merchant inside of payment platform (new in v7.x)<br><br>**Default**: `'null'` |

## Example

```ruby
get_payable_response = GetPayableResponse.new(
  '5b71f2a8b472ef521b224b75fd13c14e09d37822fd100f2cd425ef5aea02f5bf',
  'paid',
  1100,
  nil,
  'ch_123',
  nil,
  nil,
  're_abcde123fghijk789',
  'ownership_assignment',
  nil,
  DateTimeHelper.from_rfc3339('2025-08-21T03:00:00Z'),
  'credit_card',
  DateTimeHelper.from_rfc3339('2025-08-20T10:30:00Z'),
  '03002e00-edde-6d4c-dd9e-ffaaafac08de',
  'pp_abcde123fghijk789',
  0,
  0,
  0,
  44,
  nil,
  DateTimeHelper.from_rfc3339('2025-08-18T03:00:00Z'),
  'credit',
  DateTimeHelper.from_rfc3339('2023-08-21T12:51:28Z')
)
```

