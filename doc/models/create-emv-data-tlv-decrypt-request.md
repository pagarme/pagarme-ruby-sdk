
# Create Emv Data Tlv Decrypt Request

## Structure

`CreateEmvDataTlvDecryptRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tag` | `String` | Required | Emv tag |
| `lenght` | `String` | Required | Emv lenght |
| `value` | `String` | Required | Emv value |

## Example

```ruby
create_emv_data_tlv_decrypt_request = CreateEmvDataTlvDecryptRequest.new(
  'tag6',
  'lenght6',
  'value4'
)
```

