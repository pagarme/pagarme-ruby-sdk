
# Create Google Pay Intermediate Signing Key Request

The GooglePay Intermediate Signing Key Request

## Structure

`CreateGooglePayIntermediateSigningKeyRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `signed_key` | `String` | Optional | Uma mensagem codificada em Base64 com a descrição de pagamento da chave. |
| `signatures` | `Array[String]` | Optional | Verifica se a origem da chave de assinatura intermediária é o Google. É codificada em Base64 e criada usando o ECDSA. |

## Example

```ruby
create_google_pay_intermediate_signing_key_request = CreateGooglePayIntermediateSigningKeyRequest.new(
  'signed_key8',
  [
    'signatures4',
    'signatures5',
    'signatures6'
  ]
)
```

