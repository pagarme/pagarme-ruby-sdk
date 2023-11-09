
# Get Order Response

Response object for getting an Order

## Structure

`GetOrderResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `currency` | `String` | Optional | - |
| `closed` | `TrueClass \| FalseClass` | Optional | Indicates whether the order is closed |
| `items` | [`Array<GetOrderItemResponse>`](../../doc/models/get-order-item-response.md) | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `closed_at` | `DateTime` | Optional | - |
| `charges` | [`Array<GetChargeResponse>`](../../doc/models/get-charge-response.md) | Optional | - |
| `invoice_url` | `String` | Optional | - |
| `shipping` | [`GetShippingResponse`](../../doc/models/get-shipping-response.md) | Optional | - |
| `metadata` | `Hash[String, String]` | Optional | - |
| `checkouts` | [`Array<GetCheckoutPaymentResponse>`](../../doc/models/get-checkout-payment-response.md) | Optional | Checkout Payment Settings Response |
| `ip` | `String` | Optional | Ip address |
| `session_id` | `String` | Optional | Session id |
| `location` | [`GetLocationResponse`](../../doc/models/get-location-response.md) | Optional | Location |
| `device` | [`GetDeviceResponse`](../../doc/models/get-device-response.md) | Optional | Device's informations |

## Example (as JSON)

```json
{
  "id": "id6",
  "code": "code4",
  "amount": 64,
  "currency": "currency6",
  "closed": false
}
```

