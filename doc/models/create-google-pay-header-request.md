
# Create Google Pay Header Request

The GooglePay header request

## Structure

`CreateGooglePayHeaderRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ephemeral_public_key` | `String` | Required | X.509 encoded key bytes, Base64 encoded as a string |

## Example

```ruby
create_google_pay_header_request = CreateGooglePayHeaderRequest.new(
  'ephemeral_public_key0'
)
```

