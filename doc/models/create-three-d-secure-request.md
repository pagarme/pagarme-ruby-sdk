
# Create Three D Secure Request

Creates a 3D-S authentication payment

## Structure

`CreateThreeDSecureRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mpi` | `String` | Required | The MPI Vendor (MerchantPlugin) |
| `cavv` | `String` | Optional | The Cardholder Authentication Verification value |
| `eci` | `String` | Optional | The Electronic Commerce Indicator value |
| `transaction_id` | `String` | Optional | The TransactionId value (XID) |
| `success_url` | `String` | Optional | The success URL after the authentication |
| `ds_transaction_id` | `String` | Optional | Directory Service Transaction Identifier |
| `version` | `String` | Optional | ThreeDSecure Version |

## Example (as JSON)

```json
{
  "mpi": "mpi4",
  "cavv": "cavv2",
  "eci": "eci6",
  "transaction_id": "transaction_id4",
  "success_url": "success_url8",
  "ds_transaction_id": "ds_transaction_id4"
}
```

