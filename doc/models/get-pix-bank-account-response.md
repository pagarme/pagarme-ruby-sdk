
# Get Pix Bank Account Response

Payer's bank details.

## Structure

`GetPixBankAccountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_name` | `String` | Optional | - |
| `ispb` | `String` | Optional | - |
| `branch_code` | `String` | Optional | - |
| `account_number` | `String` | Optional | - |

## Example

```ruby
get_pix_bank_account_response = GetPixBankAccountResponse.new(
  'bank_name0',
  'ispb8',
  'branch_code2',
  'account_number4'
)
```

