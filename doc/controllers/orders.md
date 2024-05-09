# Orders

```ruby
orders_controller = client.orders
```

## Class Name

`OrdersController`

## Methods

* [Get Orders](../../doc/controllers/orders.md#get-orders)
* [Update Order Item](../../doc/controllers/orders.md#update-order-item)
* [Delete All Order Items](../../doc/controllers/orders.md#delete-all-order-items)
* [Delete Order Item](../../doc/controllers/orders.md#delete-order-item)
* [Close Order](../../doc/controllers/orders.md#close-order)
* [Create Order](../../doc/controllers/orders.md#create-order)
* [Create Order Item](../../doc/controllers/orders.md#create-order-item)
* [Get Order Item](../../doc/controllers/orders.md#get-order-item)
* [Update Order Metadata](../../doc/controllers/orders.md#update-order-metadata)
* [Get Order](../../doc/controllers/orders.md#get-order)


# Get Orders

Gets all orders

```ruby
def get_orders(page: nil,
               size: nil,
               code: nil,
               status: nil,
               created_since: nil,
               created_until: nil,
               customer_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for order's code |
| `status` | `String` | Query, Optional | Filter for order's status |
| `created_since` | `DateTime` | Query, Optional | Filter for order's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for order's creation date end range |
| `customer_id` | `String` | Query, Optional | Filter for order's customer id |

## Response Type

[`ListOrderResponse`](../../doc/models/list-order-response.md)

## Example Usage

```ruby
result = orders_controller.get_orders
```


# Update Order Item

```ruby
def update_order_item(order_id,
                      item_id,
                      request,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |
| `request` | [`UpdateOrderItemRequest`](../../doc/models/update-order-item-request.md) | Body, Required | Item Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

item_id = 'itemId8'

request = UpdateOrderItemRequest.new(
  242,
  'description6',
  100,
  'category4'
)

result = orders_controller.update_order_item(
  order_id,
  item_id,
  request
)
```


# Delete All Order Items

```ruby
def delete_all_order_items(order_id,
                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

result = orders_controller.delete_all_order_items(order_id)
```


# Delete Order Item

```ruby
def delete_order_item(order_id,
                      item_id,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

item_id = 'itemId8'

result = orders_controller.delete_order_item(
  order_id,
  item_id
)
```


# Close Order

```ruby
def close_order(id,
                request,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Order Id |
| `request` | [`UpdateOrderStatusRequest`](../../doc/models/update-order-status-request.md) | Body, Required | Update Order Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
id = 'id0'

request = UpdateOrderStatusRequest.new(
  'status8'
)

result = orders_controller.close_order(
  id,
  request
)
```


# Create Order

Creates a new Order

```ruby
def create_order(body,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateOrderRequest`](../../doc/models/create-order-request.md) | Body, Required | Request for creating an order |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
body = CreateOrderRequest.new(
  [
    CreateOrderItemRequest.new(
      164,
      'description2',
      22,
      'category6'
    )
  ],
  CreateCustomerRequest.new(
    'Tony Stark',
    'email6',
    'document6',
    'type0',
    CreateAddressRequest.new(
      'street6',
      'number4',
      'zip_code0',
      'neighborhood2',
      'city6',
      'state2',
      'country0',
      'complement2',
      'line_10',
      'line_24'
    ),
    {
      'key0': 'metadata3'
    },
    CreatePhonesRequest.new,
    'code8'
  ),
  [
    CreatePaymentRequest.new(
      'payment_method8'
    )
  ],
  'code4',
  true
)

result = orders_controller.create_order(body)
```


# Create Order Item

```ruby
def create_order_item(order_id,
                      request,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `request` | [`CreateOrderItemRequest`](../../doc/models/create-order-item-request.md) | Body, Required | Order Item Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

request = CreateOrderItemRequest.new(
  242,
  'description6',
  100,
  'category4'
)

result = orders_controller.create_order_item(
  order_id,
  request
)
```


# Get Order Item

```ruby
def get_order_item(order_id,
                   item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

item_id = 'itemId8'

result = orders_controller.get_order_item(
  order_id,
  item_id
)
```


# Update Order Metadata

Updates the metadata from an order

```ruby
def update_order_metadata(order_id,
                          request,
                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | The order id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the order metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = orders_controller.update_order_metadata(
  order_id,
  request
)
```


# Get Order

Gets an order

```ruby
def get_order(order_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order id |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'

result = orders_controller.get_order(order_id)
```

