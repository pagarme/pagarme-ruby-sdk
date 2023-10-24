
# Create Bank Account Refunding DTO

Bank Account

## Structure

`CreateBankAccountRefundingDTO`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `holder_name` | `String` | Required | Nome/razão social do favorecido |
| `holder_type` | `String` | Required | Tipo de titular (pessoa física ou jurídica) |
| `holder_document` | `String` | Required | CPF ou CNPJ do favorecido |
| `bank` | `String` | Required | Dígitos que identificam cada banco. |
| `branch_number` | `String` | Required | Número da agência bancária |
| `branch_check_digit` | `String` | Required | Dígito da agência bancária |
| `account_number` | `String` | Required | Número da conta |
| `account_check_digit` | `String` | Required | Dígito verificador da conta |
| `type` | `String` | Required | Tipo de conta |

## Example (as JSON)

```json
{
  "holder_name": "holder_name2",
  "holder_type": "holder_type8",
  "holder_document": "holder_document0",
  "bank": "bank4",
  "branch_number": "branch_number2",
  "branch_check_digit": "branch_check_digit2",
  "account_number": "account_number6",
  "account_check_digit": "account_check_digit2",
  "type": "type4"
}
```

