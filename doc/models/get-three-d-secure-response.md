
# Get Three D Secure Response

3D-S payment authentication response

## Structure

`GetThreeDSecureResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mpi` | `String` | Optional | MPI Vendor |
| `eci` | `String` | Optional | Electronic Commerce Indicator (ECI) (Opcional) |
| `cavv` | `String` | Optional | Online payment cryptogram, definido pelo 3-D Secure. |
| `transaction_id` | `String` | Optional | Identificador da transação (XID) |
| `success_url` | `String` | Optional | Url de redirecionamento de sucessso |

## Example (as JSON)

```json
{
  "mpi": null,
  "eci": null,
  "cavv": null,
  "transaction_Id": null,
  "success_url": null
}
```

