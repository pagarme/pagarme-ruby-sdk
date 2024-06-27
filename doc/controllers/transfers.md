# Transfers

```ruby
transfers_controller = client.transfers
```

## Class Name

`TransfersController`

## Methods

* [Get Transfer by Id](../../doc/controllers/transfers.md#get-transfer-by-id)
* [Get Transfers](../../doc/controllers/transfers.md#get-transfers)
* [Create Transfer](../../doc/controllers/transfers.md#create-transfer)


# Get Transfer by Id

```ruby
def get_transfer_by_id(transfer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_id` | `String` | Template, Required | - |

## Response Type

[`GetTransfer`](../../doc/models/get-transfer.md)

## Example Usage

```ruby
transfer_id = 'transfer_id6'

result = transfers_controller.get_transfer_by_id(transfer_id)
```


# Get Transfers

Gets all transfers

```ruby
def get_transfers
```

## Response Type

[`ListTransfers`](../../doc/models/list-transfers.md)

## Example Usage

```ruby
result = transfers_controller.get_transfers
```


# Create Transfer

```ruby
def create_transfer(request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateTransfer`](../../doc/models/create-transfer.md) | Body, Required | - |

## Response Type

[`GetTransfer`](../../doc/models/get-transfer.md)

## Example Usage

```ruby
request = CreateTransfer.new(
  242,
  'source_id0',
  'target_id6'
)

result = transfers_controller.create_transfer(request)
```

