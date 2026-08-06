
# Create Card Payload Request

## Structure

`CreateCardPayloadRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | - |
| `google_pay` | [`CreateGooglePayRequest`](../../doc/models/create-google-pay-request.md) | Optional | - |

## Example

```ruby
create_card_payload_request = CreateCardPayloadRequest.new(
  'type6'
)
```

