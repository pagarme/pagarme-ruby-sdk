
# Create Recipient Request

Request for creating a recipient

## Structure

`CreateRecipientRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | Recipient name. Required if the register_information field isn't populated. |
| `email` | `String` | Optional | Recipient email. Required if the register_information field isn't populated. |
| `description` | `String` | Optional | Recipient description |
| `document` | `String` | Optional | Recipient document number. Required if the register_information field isn't populated. |
| `type` | `String` | Optional | Recipient type. Required if the register_information field isn't populated. |
| `default_bank_account` | [`CreateBankAccountRequest`](../../doc/models/create-bank-account-request.md) | Required | Bank account |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `transfer_settings` | [`CreateTransferSettingsRequest`](../../doc/models/create-transfer-settings-request.md) | Optional | Receiver Transfer Information |
| `code` | `String` | Required | Recipient code |
| `payment_mode` | `String` | Required | Payment mode<br>**Default**: `'bank_transfer'` |
| `register_information` | [`CreateRegisterInformationBaseRequest`](../../doc/models/create-register-information-base-request.md) | Optional | Register Information |

## Example (as JSON)

```json
{
  "default_bank_account": {
    "holder_name": "holder_name4",
    "holder_type": "holder_type0",
    "holder_document": "holder_document2",
    "bank": "bank6",
    "branch_number": "branch_number4",
    "branch_check_digit": "branch_check_digit4",
    "account_number": "account_number8",
    "account_check_digit": "account_check_digit4",
    "type": "type2",
    "metadata": {
      "key0": "metadata5",
      "key1": "metadata4",
      "key2": "metadata3"
    },
    "pix_key": "pix_key8"
  },
  "metadata": {
    "key0": "metadata3"
  },
  "code": "code4",
  "payment_mode": "bank_transfer",
  "name": "name6",
  "email": "email0",
  "description": "description6",
  "document": "document0",
  "type": "type4"
}
```

