
# Update Subscription Billing Date Request

Request for updating the due date from a subscription

## Structure

`UpdateSubscriptionBillingDateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `next_billing_at` | `DateTime` | Required | The date when the next subscription billing must occur |

## Example

```ruby
update_subscription_billing_date_request = UpdateSubscriptionBillingDateRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

