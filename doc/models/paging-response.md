
# Paging Response

Object used for returning lists of objects with pagination

## Structure

`PagingResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total` | `Integer` | Optional | Total number of pages |
| `previous` | `String` | Optional | Previous page |
| `mnext` | `String` | Optional | Next page |

## Example (as JSON)

```json
{
  "total": 80,
  "previous": "previous2",
  "next": "next2"
}
```

