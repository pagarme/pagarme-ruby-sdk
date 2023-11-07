
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
  "success_url": "success_url0",
  "payment_url": "payment_url8",
  "accepted_payment_methods": [
    "accepted_payment_methods1",
    "accepted_payment_methods2"
  ],
  "status": "status0",
  "customer": {
    "id": "id0",
    "name": "name0",
    "email": "email6",
    "delinquent": false,
    "created_at": "2016-03-13T12:52:32.123Z"
  }
}
```

