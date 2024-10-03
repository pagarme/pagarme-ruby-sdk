# Balance Operations

```ruby
balance_operations_controller = client.balance_operations
```

## Class Name

`BalanceOperationsController`

## Methods

* [Get Balance Operations](../../doc/controllers/balance-operations.md#get-balance-operations)
* [Get Balance Operation by Id](../../doc/controllers/balance-operations.md#get-balance-operation-by-id)


# Get Balance Operations

```ruby
def get_balance_operations(status: nil,
                           created_since: nil,
                           created_until: nil,
                           recipient_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Query, Optional | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |
| `recipient_id` | `String` | Query, Optional | - |

## Response Type

[`ListBalanceOperationResponse`](../../doc/models/list-balance-operation-response.md)

## Example Usage

```ruby
result = balance_operations_controller.get_balance_operations
```


# Get Balance Operation by Id

```ruby
def get_balance_operation_by_id(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Template, Required | - |

## Response Type

[`GetBalanceOperationResponse`](../../doc/models/get-balance-operation-response.md)

## Example Usage

```ruby
id = 112

result = balance_operations_controller.get_balance_operation_by_id(id)
```

