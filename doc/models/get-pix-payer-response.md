
# Get Pix Payer Response

Pix payer data.

## Structure

`GetPixPayerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `document` | `String` | Optional | - |
| `document_type` | `String` | Optional | - |
| `bank_account` | [`GetPixBankAccountResponse`](../../doc/models/get-pix-bank-account-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "name": "name0",
  "document": "document4",
  "document_type": "document_type8",
  "bank_account": {
    "bank_name": "bank_name0",
    "ispb": "ispb8",
    "branch_code": "branch_code2",
    "account_number": "account_number4"
  }
}
```

