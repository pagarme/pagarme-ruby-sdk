
# Get Subscription Boleto Response

Response object for getting a boleto

## Structure

`GetSubscriptionBoletoResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `interest` | [`GetInterestResponse`](../../doc/models/get-interest-response.md) | Optional | Interest |
| `fine` | [`GetFineResponse`](../../doc/models/get-fine-response.md) | Optional | Fine |
| `max_days_to_pay_past_due` | `Integer` | Optional | - |

## Example

```ruby
get_subscription_boleto_response = GetSubscriptionBoletoResponse.new(
  GetInterestResponse.new(
    2,
    'percentage',
    20
  ),
  GetFineResponse.new(
    2,
    'flat',
    10
  ),
  2
)
```

