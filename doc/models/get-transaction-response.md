
# Get Transaction Response

Generic response object for getting a transaction.

## Structure

`GetTransactionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gateway_id` | `String` | Optional | Gateway transaction id |
| `amount` | `Integer` | Optional | Amount in cents |
| `status` | `String` | Optional | Transaction status |
| `success` | `TrueClass\|FalseClass` | Optional | Indicates if the transaction ocurred successfuly |
| `created_at` | `DateTime` | Optional | Creation date |
| `updated_at` | `DateTime` | Optional | Last update date |
| `attempt_count` | `Integer` | Optional | Number of attempts tried |
| `max_attempts` | `Integer` | Optional | Max attempts |
| `splits` | [`Array<GetSplitResponse>`](../../doc/models/get-split-response.md) | Optional | Splits |
| `next_attempt` | `DateTime` | Optional | Date and time of the next attempt |
| `transaction_type` | `String` | Optional | - |
| `id` | `String` | Optional | Código da transação |
| `gateway_response` | [`GetGatewayResponseResponse`](../../doc/models/get-gateway-response-response.md) | Optional | The Gateway Response |
| `antifraud_response` | [`GetAntifraudResponse`](../../doc/models/get-antifraud-response.md) | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `split` | [`Array<GetSplitResponse>`](../../doc/models/get-split-response.md) | Optional | - |
| `interest` | [`GetInterestResponse`](../../doc/models/get-interest-response.md) | Optional | - |
| `fine` | [`GetFineResponse`](../../doc/models/get-fine-response.md) | Optional | - |
| `max_days_to_pay_past_due` | `Integer` | Optional | - |

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
  "transaction_type": "transaction",
  "id": null,
  "gateway_response": null,
  "antifraud_response": null,
  "metadata": null,
  "split": null,
  "interest": null,
  "fine": null,
  "max_days_to_pay_past_due": null,
  "transaction_type": "transaction"
}
```

