
# Create Withdraw Request

## Structure

`CreateWithdrawRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | - |
| `metadata` | `Hash[String, String]` | Optional | - |

## Example

```ruby
create_withdraw_request = CreateWithdrawRequest.new(
  204,
  {
    'key0': 'metadata9'
  }
)
```

