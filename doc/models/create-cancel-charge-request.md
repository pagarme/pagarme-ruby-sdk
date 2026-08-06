
# Create Cancel Charge Request

Request for canceling a charge.

## Structure

`CreateCancelChargeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | The amount that will be canceled. |
| `split_rules` | [`Array[CreateCancelChargeSplitRulesRequest]`](../../doc/models/create-cancel-charge-split-rules-request.md) | Optional | The split rules request |
| `split` | [`Array[CreateSplitRequest]`](../../doc/models/create-split-request.md) | Optional | Splits |
| `operation_reference` | `String` | Required | - |
| `bank_account` | [`CreateBankAccountRefundingDTO`](../../doc/models/create-bank-account-refunding-dto.md) | Optional | - |

## Example

```ruby
create_cancel_charge_request = CreateCancelChargeRequest.new(
  'operation_reference0',
  4,
  [
    nil
  ],
  [
    nil
  ]
)
```

