
# Get Gateway Recipient Response

Information about the recipient on the gateway

## Structure

`GetGatewayRecipientResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gateway` | `String` | Optional | Gateway name |
| `status` | `String` | Optional | Status of the recipient on the gateway |
| `pgid` | `String` | Optional | Recipient id on the gateway |
| `created_at` | `String` | Optional | Creation date |
| `updated_at` | `String` | Optional | Last update date |

## Example

```ruby
get_gateway_recipient_response = GetGatewayRecipientResponse.new(
  'gateway6',
  'status2',
  'pgid8',
  'created_at6',
  'updated_at8'
)
```

