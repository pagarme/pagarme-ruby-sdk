
# Update Recipient Request

Request for updating a Recipient

## Structure

`UpdateRecipientRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `description` | `String` | Required | Description |
| `type` | `String` | Required | Type |
| `status` | `String` | Required | Status |
| `metadata` | `Hash[String, String]` | Required | Metadata |

## Example

```ruby
update_recipient_request = UpdateRecipientRequest.new(
  'name8',
  'email8',
  'description8',
  'type2',
  'status0',
  {
    'key0': 'metadata5',
    'key1': 'metadata4'
  }
)
```

