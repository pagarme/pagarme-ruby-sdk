
# Get Credit Card Transaction Response

Response object for getting a credit card transaction

## Structure

`GetCreditCardTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Text that will appear on the credit card's statement |
| `acquirer_name` | `String` | Optional | Acquirer name |
| `acquirer_affiliation_code` | `String` | Optional | Aquirer affiliation code |
| `acquirer_tid` | `String` | Optional | Acquirer TID |
| `acquirer_nsu` | `String` | Optional | Acquirer NSU |
| `acquirer_auth_code` | `String` | Optional | Acquirer authorization code |
| `operation_type` | `String` | Optional | Operation type |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Optional | Card data |
| `acquirer_message` | `String` | Optional | Acquirer message |
| `acquirer_return_code` | `String` | Optional | Acquirer Return Code |
| `installments` | `Integer` | Optional | Number of installments |
| `threed_authentication_url` | `String` | Optional | 3D-S authentication Url |
| `funding_source` | `String` | Optional | Identify when a card is prepaid, credit or debit. |

## Example (as JSON)

```json
{
  "gateway_id": null,
  "amount": null,
  "status": null,
  "success": null,
  "created_at": null,
  "updated_at": null,
  "attempt_count": null,
  "max_attempts": null,
  "splits": null,
  "next_attempt": null,
  "transaction_type": "credit_card",
  "id": null,
  "gateway_response": null,
  "antifraud_response": null,
  "metadata": null,
  "split": null,
  "interest": null,
  "fine": null,
  "max_days_to_pay_past_due": null,
  "statement_descriptor": null,
  "acquirer_name": null,
  "acquirer_affiliation_code": null,
  "acquirer_tid": null,
  "acquirer_nsu": null,
  "acquirer_auth_code": null,
  "operation_type": null,
  "card": null,
  "acquirer_message": null,
  "acquirer_return_code": null,
  "installments": null,
  "threed_authentication_url": null,
  "funding_source": null
}
```

