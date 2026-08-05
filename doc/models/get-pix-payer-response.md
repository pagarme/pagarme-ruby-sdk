
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

## Example

```ruby
get_pix_payer_response = GetPixPayerResponse.new(
  'name0',
  'document4',
  'document_type8'
)
```

