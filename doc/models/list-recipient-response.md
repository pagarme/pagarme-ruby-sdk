
# List Recipient Response

Response for the listing recipient method

## Structure

`ListRecipientResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array<GetRecipientResponse>`](../../doc/models/get-recipient-response.md) | Optional | Recipients |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging |

## Example (as JSON)

```json
{
  "data": [
    {
      "id": "id0",
      "name": "name0",
      "email": "email6",
      "document": "document4",
      "description": "description0"
    },
    {
      "id": "id0",
      "name": "name0",
      "email": "email6",
      "document": "document4",
      "description": "description0"
    },
    {
      "id": "id0",
      "name": "name0",
      "email": "email6",
      "document": "document4",
      "description": "description0"
    }
  ],
  "paging": {
    "total": 6,
    "previous": "previous2",
    "next": "next8"
  }
}
```

