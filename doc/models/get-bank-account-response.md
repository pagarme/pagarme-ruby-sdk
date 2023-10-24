
# Get Bank Account Response

## Structure

`GetBankAccountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `holder_name` | `String` | Optional | Holder name |
| `holder_type` | `String` | Optional | Holder type |
| `bank` | `String` | Optional | Bank |
| `branch_number` | `String` | Optional | Branch number |
| `branch_check_digit` | `String` | Optional | Branch check digit |
| `account_number` | `String` | Optional | Account number |
| `account_check_digit` | `String` | Optional | Account check digit |
| `type` | `String` | Optional | Bank account type |
| `status` | `String` | Optional | Bank account status |
| `created_at` | `DateTime` | Optional | Creation date |
| `updated_at` | `DateTime` | Optional | Last update date |
| `deleted_at` | `DateTime` | Optional | Deletion date |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `metadata` | `Hash[String, String]` | Optional | Metadata |
| `pix_key` | `String` | Optional | Pix Key |

## Example (as JSON)

```json
{
  "id": "id6",
  "holder_name": "holder_name2",
  "holder_type": "holder_type8",
  "bank": "bank4",
  "branch_number": "branch_number2"
}
```

