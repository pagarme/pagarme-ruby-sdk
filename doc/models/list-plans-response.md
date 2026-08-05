
# List Plans Response

Response object for listing plans

## Structure

`ListPlansResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetPlanResponse]`](../../doc/models/get-plan-response.md) | Optional | The plan objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_plans_response = ListPlansResponse.new(
  [
    nil
  ]
)
```

