
# Update Address Request

Request for updating an address

## Structure

`UpdateAddressRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `String` | Required | Number |
| `complement` | `String` | Required | Complement |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `line_2` | `String` | Required | Line 2 for address |

## Example

```ruby
update_address_request = UpdateAddressRequest.new(
  'number4',
  'complement2',
  {
    'key0': 'metadata3'
  },
  'line_24'
)
```

