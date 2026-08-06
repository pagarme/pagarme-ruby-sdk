
# Create Payment Request

Payment data

## Structure

`CreatePaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_method` | `String` | Required | Payment method |
| `credit_card` | [`CreateCreditCardPaymentRequest`](../../doc/models/create-credit-card-payment-request.md) | Optional | Settings for credit card payment |
| `debit_card` | [`CreateDebitCardPaymentRequest`](../../doc/models/create-debit-card-payment-request.md) | Optional | Settings for debit card payment |
| `boleto` | [`CreateBoletoPaymentRequest`](../../doc/models/create-boleto-payment-request.md) | Optional | Settings for boleto payment |
| `currency` | `String` | Optional | Currency. Must be informed using 3 characters |
| `voucher` | [`CreateVoucherPaymentRequest`](../../doc/models/create-voucher-payment-request.md) | Optional | Settings for voucher payment |
| `split` | [`Array[CreateSplitRequest]`](../../doc/models/create-split-request.md) | Optional | Splits |
| `bank_transfer` | [`CreateBankTransferPaymentRequest`](../../doc/models/create-bank-transfer-payment-request.md) | Optional | Settings for bank transfer payment |
| `gateway_affiliation_id` | `String` | Optional | Gateway affiliation code |
| `amount` | `Integer` | Optional | The amount of the payment, in cents |
| `checkout` | [`CreateCheckoutPaymentRequest`](../../doc/models/create-checkout-payment-request.md) | Optional | Settings for checkout payment |
| `customer_id` | `String` | Optional | Customer Id |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Optional | Customer |
| `metadata` | `Hash[String, String]` | Optional | Metadata |
| `cash` | [`CreateCashPaymentRequest`](../../doc/models/create-cash-payment-request.md) | Optional | Settings for cash payment |
| `private_label` | [`CreatePrivateLabelPaymentRequest`](../../doc/models/create-private-label-payment-request.md) | Optional | Settings for private label payment |
| `pix` | [`CreatePixPaymentRequest`](../../doc/models/create-pix-payment-request.md) | Optional | Settings for pix payment |

## Example

```ruby
create_payment_request = CreatePaymentRequest.new(
  'payment_method8',
  nil,
  nil,
  nil,
  'currency8',
  nil,
  [],
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  {}
)
```

