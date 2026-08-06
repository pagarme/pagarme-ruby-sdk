
# Create Boleto Payment Request

Contains the settings for creating a boleto payment

## Structure

`CreateBoletoPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `retries` | `Integer` | Required | Number of retries |
| `bank` | `String` | Optional | The bank code, containing three characters. The available codes are on the API specification |
| `instructions` | `String` | Required | The instructions field that will be printed on the boleto. |
| `due_at` | `DateTime` | Optional | Boleto due date |
| `billing_address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Card's billing address |
| `billing_address_id` | `String` | Optional | The address id for the billing address |
| `nosso_numero` | `String` | Optional | Customer identification number with the bank |
| `document_number` | `String` | Required | Boleto identification |
| `statement_descriptor` | `String` | Required | Soft Descriptor |
| `interest` | [`CreateInterestRequest`](../../doc/models/create-interest-request.md) | Optional | - |
| `fine` | [`CreateFineRequest`](../../doc/models/create-fine-request.md) | Optional | - |
| `max_days_to_pay_past_due` | `Integer` | Optional | - |

## Example

```ruby
create_boleto_payment_request = CreateBoletoPaymentRequest.new(
  42,
  'instructions8',
  CreateAddressRequest.new,
  'document_number2',
  'statement_descriptor4',
  'bank2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'billing_address_id0',
  'nosso_numero4'
)
```

