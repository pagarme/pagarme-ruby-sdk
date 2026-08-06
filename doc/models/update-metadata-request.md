
# Update Metadata Request

Request for updating an metadata

## Structure

`UpdateMetadataRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | `Hash[String, String]` | Required | Metadata |

## Example

```ruby
update_metadata_request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata1'
  }
)
```

