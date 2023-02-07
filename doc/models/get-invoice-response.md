
# Get Invoice Response

Response object for getting an invoice

## Structure

`GetInvoiceResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `url` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `payment_method` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `items` | [`Array<GetInvoiceItemResponse>`](../../doc/models/get-invoice-item-response.md) | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `charge` | [`GetChargeResponse`](../../doc/models/get-charge-response.md) | Optional | - |
| `installments` | `Integer` | Optional | - |
| `billing_address` | [`GetBillingAddressResponse`](../../doc/models/get-billing-address-response.md) | Optional | - |
| `subscription` | [`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md) | Optional | - |
| `cycle` | [`GetPeriodResponse`](../../doc/models/get-period-response.md) | Optional | - |
| `shipping` | [`GetShippingResponse`](../../doc/models/get-shipping-response.md) | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `due_at` | `DateTime` | Optional | - |
| `canceled_at` | `DateTime` | Optional | - |
| `billing_at` | `DateTime` | Optional | - |
| `seen_at` | `DateTime` | Optional | - |
| `total_discount` | `Integer` | Optional | Total discounted value |
| `total_increment` | `Integer` | Optional | Total discounted value |
| `subscription_id` | `String` | Optional | Subscription Id |

## Example (as JSON)

```json
{
  "id": null,
  "code": null,
  "url": null,
  "amount": null,
  "status": null,
  "payment_method": null,
  "created_at": null,
  "items": null,
  "customer": null,
  "charge": null,
  "installments": null,
  "billing_address": null,
  "subscription": null,
  "cycle": null,
  "shipping": null,
  "metadata": null,
  "due_at": null,
  "canceled_at": null,
  "billing_at": null,
  "seen_at": null,
  "total_discount": null,
  "total_increment": null,
  "subscription_id": null
}
```

