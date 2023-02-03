
# Get Checkout Payment Settings Response

Checkout Payment Settings Response

## Structure

`GetCheckoutPaymentSettingsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `success_url` | `String` | Optional | Success Url |
| `payment_url` | `String` | Optional | Payment Url |
| `accepted_payment_methods` | `Array<String>` | Optional | Accepted Payment Methods |
| `status` | `String` | Optional | Status |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | Customer |
| `amount` | `Integer` | Optional | Payment amount |
| `default_payment_method` | `String` | Optional | Default Payment Method |
| `gateway_affiliation_id` | `String` | Optional | Gateway Affiliation Id |

## Example (as JSON)

```json
{
  "success_url": null,
  "payment_url": null,
  "accepted_payment_methods": null,
  "status": null,
  "customer": null,
  "amount": null,
  "default_payment_method": null,
  "gateway_affiliation_id": null
}
```

