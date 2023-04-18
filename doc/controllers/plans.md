# Plans

```ruby
plans_controller = client.plans
```

## Class Name

`PlansController`

## Methods

* [Get Plan](../../doc/controllers/plans.md#get-plan)
* [Delete Plan](../../doc/controllers/plans.md#delete-plan)
* [Update Plan Metadata](../../doc/controllers/plans.md#update-plan-metadata)
* [Update Plan Item](../../doc/controllers/plans.md#update-plan-item)
* [Create Plan Item](../../doc/controllers/plans.md#create-plan-item)
* [Get Plan Item](../../doc/controllers/plans.md#get-plan-item)
* [Create Plan](../../doc/controllers/plans.md#create-plan)
* [Delete Plan Item](../../doc/controllers/plans.md#delete-plan-item)
* [Get Plans](../../doc/controllers/plans.md#get-plans)
* [Update Plan](../../doc/controllers/plans.md#update-plan)


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
    'scheme_type2',
    [
      UpdatePriceBracketRequest.new(
        31,
        225,
        nil,
        nil
      ),
      UpdatePriceBracketRequest.new(
        32,
        226,
        nil,
        nil
      )
    ],
    nil,
    nil,
    nil
  ),
  nil,
  nil
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
    'scheme_type2',
    nil,
    nil,
    nil,
    nil
  ),
  'id6',
  'description6',
  nil,
  nil
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
      'name3',
      CreatePricingSchemeRequest.new(
        'scheme_type5',
        nil,
        nil,
        nil,
        nil
      ),
      'id3',
      'description3',
      nil,
      nil
    ),
    CreatePlanItemRequest.new(
      'name4',
      CreatePricingSchemeRequest.new(
        'scheme_type4',
        nil,
        nil,
        nil,
        nil
      ),
      'id4',
      'description4',
      nil,
      nil
    ),
    CreatePlanItemRequest.new(
      'name5',
      CreatePricingSchemeRequest.new(
        'scheme_type3',
        nil,
        nil,
        nil,
        nil
      ),
      'id5',
      'description5',
      nil,
      nil
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
    'scheme_type2',
    nil,
    nil,
    nil,
    nil
  ),
  {
    'key0': 'metadata7',
    'key1': 'metadata8'
  },
  nil,
  nil,
  nil,
  nil
)

result = plans_controller.create_plan(body)
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
  },
  nil,
  nil
)

result = plans_controller.update_plan(
  plan_id,
  request
)
```

