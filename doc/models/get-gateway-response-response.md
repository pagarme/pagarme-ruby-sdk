
# Get Gateway Response Response

The Transaction Gateway Response

## Structure

`GetGatewayResponseResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | The error code |
| `errors` | [`Array[GetGatewayErrorResponse]`](../../doc/models/get-gateway-error-response.md) | Optional | The gateway response errors list |

## Example

```ruby
get_gateway_response_response = GetGatewayResponseResponse.new(
  'code0',
  [
    nil,
    GetGatewayErrorResponse.new
  ]
)
```

