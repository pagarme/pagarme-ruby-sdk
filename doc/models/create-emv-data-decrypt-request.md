
# Create Emv Data Decrypt Request

## Structure

`CreateEmvDataDecryptRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cipher` | `String` | Required | Emv Decrypt cipher type |
| `dukpt` | [`CreateEmvDataDukptDecryptRequest`](../../doc/models/create-emv-data-dukpt-decrypt-request.md) | Optional | Dukpt data request |
| `tags` | [`Array[CreateEmvDataTlvDecryptRequest]`](../../doc/models/create-emv-data-tlv-decrypt-request.md) | Required | Encrypted tags list |

## Example

```ruby
create_emv_data_decrypt_request = CreateEmvDataDecryptRequest.new(
  nil,
  [
    nil
  ]
)
```

