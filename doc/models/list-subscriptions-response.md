
# List Subscriptions Response

Response object for listing subscriptions

## Structure

`ListSubscriptionsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetSubscriptionResponse]`](../../doc/models/get-subscription-response.md) | Optional | The subscription objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_subscriptions_response = ListSubscriptionsResponse.new(
  [
    nil,
    GetSubscriptionResponse.new,
    GetSubscriptionResponse.new
  ]
)
```

