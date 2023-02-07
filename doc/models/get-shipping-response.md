
# Get Shipping Response

Response object for getting the shipping data

## Structure

`GetShippingResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | - |
| `description` | `String` | Optional | - |
| `recipient_name` | `String` | Optional | - |
| `recipient_phone` | `String` | Optional | - |
| `address` | [`GetAddressResponse`](../../doc/models/get-address-response.md) | Optional | - |
| `max_delivery_date` | `DateTime` | Optional | Data máxima de entrega |
| `estimated_delivery_date` | `DateTime` | Optional | Prazo estimado de entrega |
| `type` | `String` | Optional | Shipping Type |

## Example (as JSON)

```json
{
  "amount": null,
  "description": null,
  "recipient_name": null,
  "recipient_phone": null,
  "address": null,
  "max_delivery_date": null,
  "estimated_delivery_date": null,
  "type": null
}
```

