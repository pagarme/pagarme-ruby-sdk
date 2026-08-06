
# Get Access Token Response

Response object for getting a access token

## Structure

`GetAccessTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |

## Example

```ruby
get_access_token_response = GetAccessTokenResponse.new(
  'id8',
  'code6',
  'status0',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

