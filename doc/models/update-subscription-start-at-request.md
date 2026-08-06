
# Update Subscription Start at Request

Request for updating the start date from a subscription

## Structure

`UpdateSubscriptionStartAtRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_at` | `DateTime` | Required | The date when the subscription periods will start |

## Example

```ruby
update_subscription_start_at_request = UpdateSubscriptionStartAtRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

