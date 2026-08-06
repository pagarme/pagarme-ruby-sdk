
# Create Bank Account Request

Request for creating a bank account

## Structure

`CreateBankAccountRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `holder_name` | `String` | Required | Bank account holder name |
| `holder_type` | `String` | Required | Bank account holder type |
| `holder_document` | `String` | Required | Bank account holder document |
| `bank` | `String` | Required | Bank |
| `branch_number` | `String` | Required | Branch number |
| `branch_check_digit` | `String` | Optional | Branch check digit |
| `account_number` | `String` | Required | Account number |
| `account_check_digit` | `String` | Required | Account check digit |
| `type` | `String` | Required | Bank account type |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `pix_key` | `String` | Optional | Pix key |

## Example

```ruby
create_bank_account_request = CreateBankAccountRequest.new(
  'holder_name6',
  'holder_type2',
  'holder_document6',
  'bank8',
  'branch_number6',
  'account_number0',
  'account_check_digit6',
  'type0',
  {
    'key0': 'metadata3'
  },
  'branch_check_digit4',
  'pix_key6'
)
```

