
# Get Charge Response

Response object for getting a charge

## Structure

`GetChargeResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `code` | `String` | Optional | - |
| `gateway_id` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `payment_method` | `String` | Optional | - |
| `due_at` | `DateTime` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `last_transaction` | [`GetTransactionResponse`](../../doc/models/get-transaction-response.md) | Optional | - |
| `invoice` | [`GetInvoiceResponse`](../../doc/models/get-invoice-response.md) | Optional | - |
| `order` | [`GetOrderResponse`](../../doc/models/get-order-response.md) | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `metadata` | `Hash[String, String]` | Optional | - |
| `paid_at` | `DateTime` | Optional | - |
| `canceled_at` | `DateTime` | Optional | - |
| `canceled_amount` | `Integer` | Optional | Canceled Amount |
| `paid_amount` | `Integer` | Optional | Paid amount |
| `interest_and_fine_paid` | `Integer` | Optional | interest and fine paid |
| `recurrency_cycle` | `String` | Optional | Defines whether the card has been used one or more times. |
| `payment_origin` | [`GetPaymentOriginResponse`](../../doc/models/get-payment-origin-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "recurrency_cycle": "\"first\" or \"subsequent\"",
  "id": "id0",
  "code": "code8",
  "gateway_id": "gateway_id0",
  "amount": 164,
  "status": "status2"
}
```

