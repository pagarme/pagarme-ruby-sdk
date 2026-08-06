
# Create Capture Charge Request

Request for capturing a charge

## Structure

`CreateCaptureChargeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Required | Code for the charge. Sending this field will update the code send on the charge and order creation. |
| `amount` | `Integer` | Optional | The amount that will be captured |
| `split` | [`Array[CreateSplitRequest]`](../../doc/models/create-split-request.md) | Optional | Splits |
| `operation_reference` | `String` | Required | - |

## Example

```ruby
create_capture_charge_request = CreateCaptureChargeRequest.new(
  'code8',
  'operation_reference0',
  34,
  [
    nil
  ]
)
```

