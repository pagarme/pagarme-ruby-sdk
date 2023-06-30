# Payables

```ruby
payables_controller = client.payables
```

## Class Name

`PayablesController`

## Methods

* [Get Payables](../../doc/controllers/payables.md#get-payables)
* [Get Payable by Id](../../doc/controllers/payables.md#get-payable-by-id)


# Get Payables

```ruby
def get_payables(type: nil,
                 split_id: nil,
                 bulk_anticipation_id: nil,
                 installment: nil,
                 status: nil,
                 recipient_id: nil,
                 amount: nil,
                 charge_id: nil,
                 payment_date_until: nil,
                 payment_date_since: nil,
                 updated_until: nil,
                 updated_since: nil,
                 created_until: nil,
                 created_since: nil,
                 liquidation_arrangement_id: nil,
                 page: nil,
                 size: nil,
                 gateway_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Query, Optional | - |
| `split_id` | `String` | Query, Optional | - |
| `bulk_anticipation_id` | `String` | Query, Optional | - |
| `installment` | `Integer` | Query, Optional | - |
| `status` | `String` | Query, Optional | - |
| `recipient_id` | `String` | Query, Optional | - |
| `amount` | `Integer` | Query, Optional | - |
| `charge_id` | `String` | Query, Optional | - |
| `payment_date_until` | `String` | Query, Optional | - |
| `payment_date_since` | `DateTime` | Query, Optional | - |
| `updated_until` | `DateTime` | Query, Optional | - |
| `updated_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `liquidation_arrangement_id` | `String` | Query, Optional | - |
| `page` | `Integer` | Query, Optional | - |
| `size` | `Integer` | Query, Optional | - |
| `gateway_id` | `Integer` | Query, Optional | - |

## Response Type

[`ListPayablesResponse`](../../doc/models/list-payables-response.md)

## Example Usage

```ruby
result = payables_controller.get_payables
```


# Get Payable by Id

```ruby
def get_payable_by_id(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Template, Required | - |

## Response Type

[`GetPayableResponse`](../../doc/models/get-payable-response.md)

## Example Usage

```ruby
id = 112

result = payables_controller.get_payable_by_id(id)
```

