
# Create Location Request

Request for creating a location

## Structure

`CreateLocationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `latitude` | `String` | Required | Latitude |
| `longitude` | `String` | Required | Longitude |

## Example

```ruby
create_location_request = CreateLocationRequest.new(
  'latitude2',
  'longitude2'
)
```

