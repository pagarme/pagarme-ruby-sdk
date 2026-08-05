
# Update Charge Payment Method Request

Request for updating the payment method of a charge

## Structure

`UpdateChargePaymentMethodRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `update_subscription` | `TrueClass \| FalseClass` | Required | Indicates if the payment method from the subscription must also be updated |
| `payment_method` | `String` | Required | The new payment method |
| `credit_card` | [`CreateCreditCardPaymentRequest`](../../doc/models/create-credit-card-payment-request.md) | Required | Credit card data |
| `debit_card` | [`CreateDebitCardPaymentRequest`](../../doc/models/create-debit-card-payment-request.md) | Required | Debit card data |
| `boleto` | [`CreateBoletoPaymentRequest`](../../doc/models/create-boleto-payment-request.md) | Required | Boleto data |
| `voucher` | [`CreateVoucherPaymentRequest`](../../doc/models/create-voucher-payment-request.md) | Required | Voucher data |
| `cash` | [`CreateCashPaymentRequest`](../../doc/models/create-cash-payment-request.md) | Required | Cash data |
| `bank_transfer` | [`CreateBankTransferPaymentRequest`](../../doc/models/create-bank-transfer-payment-request.md) | Required | Bank Transfer data |
| `private_label` | [`CreatePrivateLabelPaymentRequest`](../../doc/models/create-private-label-payment-request.md) | Required | - |

## Example

```ruby
update_charge_payment_method_request = UpdateChargePaymentMethodRequest.new(
  nil,
  nil,
  CreateCreditCardPaymentRequest.new(
    1,
    'statement_descriptor8',
    nil,
    'card_id4',
    'card_token2',
    nil,
    true,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    '"first" or "subsequent"'
  ),
  CreateDebitCardPaymentRequest.new,
  CreateBoletoPaymentRequest.new(
    nil,
    nil,
    CreateAddressRequest.new
  ),
  CreateVoucherPaymentRequest.new(
    'statement_descriptor2',
    'card_id8',
    'card_token8',
    nil,
    '"first" or "subsequent"'
  ),
  CreateCashPaymentRequest.new,
  CreateBankTransferPaymentRequest.new,
  CreatePrivateLabelPaymentRequest.new(
    1,
    'statement_descriptor0',
    CreateCardRequest.new(
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      {}
    ),
    'card_id6',
    'card_token0',
    nil,
    true,
    nil,
    nil,
    '"first" or "subsequent"'
  )
)
```

