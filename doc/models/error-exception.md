
# Error Exception

Api Error Exception

## Structure

`ErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message` | `String` | Required | - |
| `errors` | `Object` | Required | - |
| `request` | `Object` | Required | - |

## Example

```ruby
begin
  # make the API call
rescue ErrorException => e
  puts "Caught ErrorException: #{e.message}"
end
```

