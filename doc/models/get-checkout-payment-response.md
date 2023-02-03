
# Get Checkout Payment Response

Resposta das configurações de pagamento do checkout

## Structure

`GetCheckoutPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `amount` | `Integer` | Optional | Valor em centavos |
| `default_payment_method` | `String` | Optional | Meio de pagamento padrão no checkout |
| `success_url` | `String` | Optional | Url de redirecionamento de sucesso após o checkou |
| `payment_url` | `String` | Optional | Url para pagamento usando o checkout |
| `gateway_affiliation_id` | `String` | Optional | Código da afiliação onde o pagamento será processado no gateway |
| `accepted_payment_methods` | `Array<String>` | Optional | Meios de pagamento aceitos no checkout |
| `status` | `String` | Optional | Status do checkout |
| `skip_checkout_success_page` | `TrueClass\|FalseClass` | Optional | Pular tela de sucesso pós-pagamento? |
| `created_at` | `DateTime` | Optional | Data de criação |
| `updated_at` | `DateTime` | Optional | Data de atualização |
| `canceled_at` | `DateTime` | Optional | Data de cancelamento |
| `customer_editable` | `TrueClass\|FalseClass` | Optional | Torna o objeto customer editável |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | Dados do comprador |
| `billingaddress` | [`GetAddressResponse`](../../doc/models/get-address-response.md) | Optional | Dados do endereço de cobrança |
| `credit_card` | [`GetCheckoutCreditCardPaymentResponse`](../../doc/models/get-checkout-credit-card-payment-response.md) | Optional | Configurações de cartão de crédito |
| `boleto` | [`GetCheckoutBoletoPaymentResponse`](../../doc/models/get-checkout-boleto-payment-response.md) | Optional | Configurações de boleto |
| `billing_address_editable` | `TrueClass\|FalseClass` | Optional | Indica se o billing address poderá ser editado |
| `shipping` | [`GetShippingResponse`](../../doc/models/get-shipping-response.md) | Optional | Configurações  de entrega |
| `shippable` | `TrueClass\|FalseClass` | Optional | Indica se possui entrega |
| `closed_at` | `DateTime` | Optional | Data de fechamento |
| `expires_at` | `DateTime` | Optional | Data de expiração |
| `currency` | `String` | Optional | Moeda |
| `debit_card` | [`GetCheckoutDebitCardPaymentResponse`](../../doc/models/get-checkout-debit-card-payment-response.md) | Optional | Configurações de cartão de débito |
| `bank_transfer` | [`GetCheckoutBankTransferPaymentResponse`](../../doc/models/get-checkout-bank-transfer-payment-response.md) | Optional | Bank transfer payment response |
| `accepted_brands` | `Array<String>` | Optional | Accepted Brands |
| `pix` | [`GetCheckoutPixPaymentResponse`](../../doc/models/get-checkout-pix-payment-response.md) | Optional | Pix payment response |

## Example (as JSON)

```json
{
  "id": null,
  "amount": null,
  "default_payment_method": null,
  "success_url": null,
  "payment_url": null,
  "gateway_affiliation_id": null,
  "accepted_payment_methods": null,
  "status": null,
  "skip_checkout_success_page": null,
  "created_at": null,
  "updated_at": null,
  "canceled_at": null,
  "customer_editable": null,
  "customer": null,
  "billingaddress": null,
  "credit_card": null,
  "boleto": null,
  "billing_address_editable": null,
  "shipping": null,
  "shippable": null,
  "closed_at": null,
  "expires_at": null,
  "currency": null,
  "debit_card": null,
  "bank_transfer": null,
  "accepted_brands": null,
  "pix": null
}
```

