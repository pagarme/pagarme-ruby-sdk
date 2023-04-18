
# Create Credit Card Payment Request

The settings for creating a credit card payment

## Structure

`CreateCreditCardPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `installments` | `Integer` | Optional | Number of installments<br>**Default**: `1` |
| `statement_descriptor` | `String` | Optional | The text that will be shown on the credit card's statement |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Optional | Credit card data |
| `card_id` | `String` | Optional | The credit card id |
| `card_token` | `String` | Optional | - |
| `recurrence` | `TrueClass\|FalseClass` | Optional | Indicates a recurrence |
| `capture` | `TrueClass\|FalseClass` | Optional | Indicates if the operation should be only authorization or auth and capture.<br>**Default**: `true` |
| `extended_limit_enabled` | `TrueClass\|FalseClass` | Optional | Indicates whether the extended label (private label) is enabled |
| `extended_limit_code` | `String` | Optional | Extended Limit Code |
| `merchant_category_code` | `Integer` | Optional | Customer business segment code |
| `authentication` | [`CreatePaymentAuthenticationRequest`](../../doc/models/create-payment-authentication-request.md) | Optional | The payment authentication request |
| `contactless` | [`CreateCardPaymentContactlessRequest`](../../doc/models/create-card-payment-contactless-request.md) | Optional | The Credit card payment contactless request |
| `auto_recovery` | `TrueClass\|FalseClass` | Optional | Indicates whether a particular payment will enter the offline retry flow |
| `operation_type` | `String` | Optional | AuthOnly, AuthAndCapture, PreAuth |
| `recurrency_cycle` | `String` | Optional | Defines whether the card has been used one or more times. |

## Example (as JSON)

```json
{
  "installments": 1,
  "capture": true,
  "recurrency_cycle": "\"first\" or \"subsequent\""
}
```

