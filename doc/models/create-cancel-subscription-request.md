
# Create Cancel Subscription Request

Request for canceling a subscription

## Structure

`CreateCancelSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cancel_pending_invoices` | `TrueClass \| FalseClass` | Required | Indicates if the pending invoices must also be canceled.<br><br>**Default**: `true` |

## Example

```ruby
create_cancel_subscription_request = CreateCancelSubscriptionRequest.new(
  true
)
```

