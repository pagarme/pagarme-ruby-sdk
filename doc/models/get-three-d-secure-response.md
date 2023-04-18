
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
  "mpi": "mpi2",
  "eci": "eci0",
  "cavv": "cavv4",
  "transaction_Id": "transaction_Id4",
  "success_url": "success_url2"
}
```

