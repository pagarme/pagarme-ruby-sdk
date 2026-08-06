
# Update Recipient Bank Account Request

Updates the default bank account for a recipient

## Structure

`UpdateRecipientBankAccountRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_account` | [`CreateBankAccountRequest`](../../doc/models/create-bank-account-request.md) | Required | Bank account |
| `payment_mode` | `String` | Required | Payment mode<br><br>**Default**: `'bank_transfer'` |

## Example

```ruby
update_recipient_bank_account_request = UpdateRecipientBankAccountRequest.new(
  CreateBankAccountRequest.new(
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
  'bank_transfer'
)
```

