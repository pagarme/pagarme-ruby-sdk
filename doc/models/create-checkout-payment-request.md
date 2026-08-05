
# Create Checkout Payment Request

Checkout payment request

## Structure

`CreateCheckoutPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accepted_payment_methods` | `Array[String]` | Required | Accepted Payment Methods |
| `accepted_multi_payment_methods` | `Array[Object]` | Required | Accepted Multi Payment Methods |
| `success_url` | `String` | Required | Success url |
| `default_payment_method` | `String` | Optional | Default payment method |
| `gateway_affiliation_id` | `String` | Optional | Gateway Affiliation Id |
| `credit_card` | [`CreateCheckoutCreditCardPaymentRequest`](../../doc/models/create-checkout-credit-card-payment-request.md) | Optional | Credit Card payment request |
| `debit_card` | [`CreateCheckoutDebitCardPaymentRequest`](../../doc/models/create-checkout-debit-card-payment-request.md) | Optional | Debit Card payment request |
| `boleto` | [`CreateCheckoutBoletoPaymentRequest`](../../doc/models/create-checkout-boleto-payment-request.md) | Optional | Boleto payment request |
| `customer_editable` | `TrueClass \| FalseClass` | Optional | Customer is editable? |
| `expires_in` | `Integer` | Optional | Time in minutes for expiration |
| `skip_checkout_success_page` | `TrueClass \| FalseClass` | Required | Skip postpay success screen? |
| `billing_address_editable` | `TrueClass \| FalseClass` | Required | Billing Address is editable? |
| `billing_address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Billing Address |
| `bank_transfer` | [`CreateCheckoutBankTransferRequest`](../../doc/models/create-checkout-bank-transfer-request.md) | Optional | Bank Transfer payment request |
| `accepted_brands` | `Array[String]` | Required | Accepted Brands |
| `pix` | [`CreateCheckoutPixPaymentRequest`](../../doc/models/create-checkout-pix-payment-request.md) | Optional | Pix payment request |

## Example

```ruby
create_checkout_payment_request = CreateCheckoutPaymentRequest.new(
  [
    'accepted_payment_methods1',
    'accepted_payment_methods2',
    'accepted_payment_methods3'
  ],
  [
    JSON.parse('{"key1":"val1","key2":"val2"}'),
    JSON.parse('{"key1":"val1","key2":"val2"}')
  ],
  'success_url0',
  false,
  false,
  CreateAddressRequest.new,
  [
    'accepted_brands4',
    'accepted_brands5',
    'accepted_brands6'
  ],
  'default_payment_method8',
  'gateway_affiliation_id4'
)
```

