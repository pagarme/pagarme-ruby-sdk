
# Create Google Pay Request

The GooglePay Token Payment Request

## Structure

`CreateGooglePayRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Optional | Informação sobre a versão do token. Único valor aceito é EC_v2 |
| `data` | `String` | Optional | Dados de pagamento criptografados. Corresponde ao encryptedMessage do token Google. |
| `intermediate_signing_key` | [`CreateGooglePayIntermediateSigningKeyRequest`](../../doc/models/create-google-pay-intermediate-signing-key-request.md) | Optional | The GooglePay intermediate signing key request |
| `signature` | `String` | Optional | Assinatura dos dados de pagamento. Verifica se a origem da mensagem é o Google. Corresponde ao signature do token Google. |
| `signed_message` | `String` | Optional | - |
| `merchant_identifier` | `String` | Optional | - |

## Example

```ruby
create_google_pay_request = CreateGooglePayRequest.new(
  'version0',
  'data4',
  nil,
  'signature2',
  'signed_message0'
)
```

