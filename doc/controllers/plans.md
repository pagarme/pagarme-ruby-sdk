# Plans

```ruby
plans_controller = client.plans
```

## Class Name

`PlansController`

## Methods

* [Get Plan](../../doc/controllers/plans.md#get-plan)
* [Delete Plan Item](../../doc/controllers/plans.md#delete-plan-item)
* [Update Plan Metadata](../../doc/controllers/plans.md#update-plan-metadata)
* [Create Plan](../../doc/controllers/plans.md#create-plan)
* [Update Plan](../../doc/controllers/plans.md#update-plan)
* [Delete Plan](../../doc/controllers/plans.md#delete-plan)
* [Get Plans](../../doc/controllers/plans.md#get-plans)
* [Update Plan Item](../../doc/controllers/plans.md#update-plan-item)
* [Create Plan Item](../../doc/controllers/plans.md#create-plan-item)
* [Get Plan Item](../../doc/controllers/plans.md#get-plan-item)


# Get Plan

Gets a plan

```ruby
def get_plan(plan_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

result = plans_controller.get_plan(plan_id)
```


# Delete Plan Item

Removes an item from a plan

```ruby
def delete_plan_item(plan_id,
                     plan_item_id,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

plan_item_id = 'plan_item_id0'

result = plans_controller.delete_plan_item(
  plan_id,
  plan_item_id
)
```


# Update Plan Metadata

Updates the metadata from a plan

```ruby
def update_plan_metadata(plan_id,
                         request,
                         idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | The plan id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the plan metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = plans_controller.update_plan_metadata(
  plan_id,
  request
)
```


# Create Plan

Creates a new plan

```ruby
def create_plan(body,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreatePlanRequest`](../../doc/models/create-plan-request.md) | Body, Required | Request for creating a plan |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
body = CreatePlanRequest.new(
  'name6',
  'description4',
  'statement_descriptor6',
  [
    CreatePlanItemRequest.new(
      'name8',
      CreatePricingSchemeRequest.new(
        'scheme_type8'
      ),
      'id8',
      'description2'
    )
  ],
  false,
  [
    'payment_methods9'
  ],
  [
    207
  ],
  'currency6',
  'interval6',
  170,
  [
    201,
    200
  ],
  'billing_type0',
  CreatePricingSchemeRequest.new(
    'scheme_type8'
  ),
  {
    'key0': 'metadata7',
    'key1': 'metadata8'
  }
)

result = plans_controller.create_plan(body)
```


# Update Plan

Updates a plan

```ruby
def update_plan(plan_id,
                request,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `request` | [`UpdatePlanRequest`](../../doc/models/update-plan-request.md) | Body, Required | Request for updating a plan |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

request = UpdatePlanRequest.new(
  'name6',
  'description6',
  [
    151,
    152
  ],
  'statement_descriptor6',
  'currency6',
  'interval4',
  114,
  [
    'payment_methods1',
    'payment_methods0',
    'payment_methods9'
  ],
  'billing_type0',
  'status8',
  false,
  [
    115
  ],
  {
    'key0': 'metadata3'
  }
)

result = plans_controller.update_plan(
  plan_id,
  request
)
```


# Delete Plan

Deletes a plan

```ruby
def delete_plan(plan_id,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

result = plans_controller.delete_plan(plan_id)
```


# Get Plans

Gets all plans

```ruby
def get_plans(page: nil,
              size: nil,
              name: nil,
              status: nil,
              billing_type: nil,
              created_since: nil,
              created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `name` | `String` | Query, Optional | Filter for Plan's name |
| `status` | `String` | Query, Optional | Filter for Plan's status |
| `billing_type` | `String` | Query, Optional | Filter for plan's billing type |
| `created_since` | `DateTime` | Query, Optional | Filter for plan's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for plan's creation date end range |

## Response Type

[`ListPlansResponse`](../../doc/models/list-plans-response.md)

## Example Usage

```ruby
result = plans_controller.get_plans
```


# Update Plan Item

Updates a plan item

```ruby
def update_plan_item(plan_id,
                     plan_item_id,
                     body,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |
| `body` | [`UpdatePlanItemRequest`](../../doc/models/update-plan-item-request.md) | Body, Required | Request for updating the plan item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

plan_item_id = 'plan_item_id0'

body = UpdatePlanItemRequest.new(
  'name6',
  'description4',
  'status2',
  UpdatePricingSchemeRequest.new(
    'scheme_type8',
    [
      UpdatePriceBracketRequest.new(
        144,
        174
      )
    ]
  )
)

result = plans_controller.update_plan_item(
  plan_id,
  plan_item_id,
  body
)
```


# Create Plan Item

Adds a new item to a plan

```ruby
def create_plan_item(plan_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `request` | [`CreatePlanItemRequest`](../../doc/models/create-plan-item-request.md) | Body, Required | Request for creating a plan item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

request = CreatePlanItemRequest.new(
  'name6',
  CreatePricingSchemeRequest.new(
    'scheme_type8'
  ),
  'id6',
  'description6'
)

result = plans_controller.create_plan_item(
  plan_id,
  request
)
```


# Get Plan Item

Gets a plan item

```ruby
def get_plan_item(plan_id,
                  plan_item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

plan_item_id = 'plan_item_id0'

result = plans_controller.get_plan_item(
  plan_id,
  plan_item_id
)
```

