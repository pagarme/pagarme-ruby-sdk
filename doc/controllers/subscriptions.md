# Subscriptions

```ruby
subscriptions_controller = client.subscriptions
```

## Class Name

`SubscriptionsController`

## Methods

* [Update Subscription Card](../../doc/controllers/subscriptions.md#update-subscription-card)
* [Create Discount](../../doc/controllers/subscriptions.md#create-discount)
* [Update Subscription Billing Date](../../doc/controllers/subscriptions.md#update-subscription-billing-date)
* [Update Subscription Start At](../../doc/controllers/subscriptions.md#update-subscription-start-at)
* [Get Subscription](../../doc/controllers/subscriptions.md#get-subscription)
* [Get Usages](../../doc/controllers/subscriptions.md#get-usages)
* [Update Latest Period End At](../../doc/controllers/subscriptions.md#update-latest-period-end-at)
* [Delete Discount](../../doc/controllers/subscriptions.md#delete-discount)
* [Update Subscription Payment Method](../../doc/controllers/subscriptions.md#update-subscription-payment-method)
* [Cancel Subscription](../../doc/controllers/subscriptions.md#cancel-subscription)
* [Create Subscription](../../doc/controllers/subscriptions.md#create-subscription)
* [Update Subscription Affiliation Id](../../doc/controllers/subscriptions.md#update-subscription-affiliation-id)
* [Update Subscription Minium Price](../../doc/controllers/subscriptions.md#update-subscription-minium-price)
* [Get Subscription Cycle by Id](../../doc/controllers/subscriptions.md#get-subscription-cycle-by-id)
* [Get Usage Report](../../doc/controllers/subscriptions.md#get-usage-report)
* [Renew Subscription](../../doc/controllers/subscriptions.md#renew-subscription)
* [Delete Usage](../../doc/controllers/subscriptions.md#delete-usage)
* [Create an Usage](../../doc/controllers/subscriptions.md#create-an-usage)
* [Update Current Cycle Status](../../doc/controllers/subscriptions.md#update-current-cycle-status)
* [Get Subscription Item](../../doc/controllers/subscriptions.md#get-subscription-item)
* [Get Increment by Id](../../doc/controllers/subscriptions.md#get-increment-by-id)
* [Delete Increment](../../doc/controllers/subscriptions.md#delete-increment)
* [Get Discounts](../../doc/controllers/subscriptions.md#get-discounts)
* [Update Subscription Due Days](../../doc/controllers/subscriptions.md#update-subscription-due-days)
* [Create Subscription Item](../../doc/controllers/subscriptions.md#create-subscription-item)
* [Update Split Subscription](../../doc/controllers/subscriptions.md#update-split-subscription)
* [Get Subscription Items](../../doc/controllers/subscriptions.md#get-subscription-items)
* [Get Subscriptions](../../doc/controllers/subscriptions.md#get-subscriptions)
* [Create Increment](../../doc/controllers/subscriptions.md#create-increment)
* [Create Usage](../../doc/controllers/subscriptions.md#create-usage)
* [Get Discount by Id](../../doc/controllers/subscriptions.md#get-discount-by-id)
* [Update Subscription Metadata](../../doc/controllers/subscriptions.md#update-subscription-metadata)
* [Get Subscription Cycles](../../doc/controllers/subscriptions.md#get-subscription-cycles)
* [Delete Subscription Item](../../doc/controllers/subscriptions.md#delete-subscription-item)
* [Get Increments](../../doc/controllers/subscriptions.md#get-increments)
* [Update Subscription Item](../../doc/controllers/subscriptions.md#update-subscription-item)


# Update Subscription Card

Updates the credit card from a subscription

```ruby
def update_subscription_card(subscription_id,
                             request,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`UpdateSubscriptionCardRequest`](../../doc/models/update-subscription-card-request.md) | Body, Required | Request for updating a card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionCardRequest.new(
  CreateCardRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    'credit'
  ),
  'card_id2'
)

result = subscriptions_controller.update_subscription_card(
  subscription_id,
  request
)
```


# Create Discount

Creates a discount

```ruby
def create_discount(subscription_id,
                    request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateDiscountRequest`](../../doc/models/create-discount-request.md) | Body, Required | Request for creating a discount |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = CreateDiscountRequest.new(
  185.28,
  'discount_type4',
  'item_id6'
)

result = subscriptions_controller.create_discount(
  subscription_id,
  request
)
```


# Update Subscription Billing Date

Updates the billing date from a subscription

```ruby
def update_subscription_billing_date(subscription_id,
                                     request,
                                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateSubscriptionBillingDateRequest`](../../doc/models/update-subscription-billing-date-request.md) | Body, Required | Request for updating the subscription billing date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionBillingDateRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

result = subscriptions_controller.update_subscription_billing_date(
  subscription_id,
  request
)
```


# Update Subscription Start At

Updates the start at date from a subscription

```ruby
def update_subscription_start_at(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateSubscriptionStartAtRequest`](../../doc/models/update-subscription-start-at-request.md) | Body, Required | Request for updating the subscription start date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionStartAtRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

result = subscriptions_controller.update_subscription_start_at(
  subscription_id,
  request
)
```


# Get Subscription

Gets a subscription

```ruby
def get_subscription(subscription_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_subscription(subscription_id)
```


# Get Usages

Lists all usages from a subscription item

```ruby
def get_usages(subscription_id,
               item_id,
               page: nil,
               size: nil,
               code: nil,
               group: nil,
               used_since: nil,
               used_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `item_id` | `String` | Template, Required | The subscription item id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Identification code in the client system |
| `group` | `String` | Query, Optional | Identification group in the client system |
| `used_since` | `DateTime` | Query, Optional | - |
| `used_until` | `DateTime` | Query, Optional | - |

## Response Type

[`ListUsagesResponse`](../../doc/models/list-usages-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

result = subscriptions_controller.get_usages(
  subscription_id,
  item_id
)
```


# Update Latest Period End At

```ruby
def update_latest_period_end_at(subscription_id,
                                request,
                                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `request` | [`UpdateCurrentCycleEndDateRequest`](../../doc/models/update-current-cycle-end-date-request.md) | Body, Required | Request for updating the end date of the current signature cycle |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateCurrentCycleEndDateRequest.new

result = subscriptions_controller.update_latest_period_end_at(
  subscription_id,
  request
)
```


# Delete Discount

Deletes a discount

```ruby
def delete_discount(subscription_id,
                    discount_id,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `discount_id` | `String` | Template, Required | Discount Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

discount_id = 'discount_id8'

result = subscriptions_controller.delete_discount(
  subscription_id,
  discount_id
)
```


# Update Subscription Payment Method

Updates the payment method from a subscription

```ruby
def update_subscription_payment_method(subscription_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`UpdateSubscriptionPaymentMethodRequest`](../../doc/models/update-subscription-payment-method-request.md) | Body, Required | Request for updating the paymentmethod from a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionPaymentMethodRequest.new(
  'payment_method4',
  'card_id2',
  CreateCardRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    'credit'
  )
)

result = subscriptions_controller.update_subscription_payment_method(
  subscription_id,
  request
)
```


# Cancel Subscription

Cancels a subscription

```ruby
def cancel_subscription(subscription_id,
                        request: nil,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateCancelSubscriptionRequest`](../../doc/models/create-cancel-subscription-request.md) | Body, Optional | Request for cancelling a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = CreateCancelSubscriptionRequest.new(
  true
)

result = subscriptions_controller.cancel_subscription(
  subscription_id,
  request: request
)
```


# Create Subscription

Creates a new subscription

```ruby
def create_subscription(body,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateSubscriptionRequest`](../../doc/models/create-subscription-request.md) | Body, Required | Request for creating a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
body = CreateSubscriptionRequest.new(
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
  CreateCardRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    'credit'
  ),
  'code4',
  'payment_method4',
  'billing_type0',
  'statement_descriptor6',
  'description4',
  'currency6',
  'interval6',
  170,
  CreatePricingSchemeRequest.new(
    'scheme_type8'
  ),
  [
    CreateSubscriptionItemRequest.new(
      'description2',
      CreatePricingSchemeRequest.new(
        'scheme_type8'
      ),
      'id8',
      'plan_item_id8',
      [
        CreateDiscountRequest.new(
          90.66,
          'discount_type2',
          'item_id4'
        )
      ],
      'name8'
    )
  ],
  CreateShippingRequest.new(
    52,
    'description6',
    'recipient_name2',
    'recipient_phone6',
    'address_id6',
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
    'type6'
  ),
  [
    CreateDiscountRequest.new(
      90.66,
      'discount_type2',
      'item_id4'
    )
  ],
  {
    'key0': 'metadata7',
    'key1': 'metadata8'
  },
  [
    CreateIncrementRequest.new(
      252.86,
      'increment_type6',
      'item_id6'
    )
  ]
)

result = subscriptions_controller.create_subscription(body)
```


# Update Subscription Affiliation Id

```ruby
def update_subscription_affiliation_id(subscription_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `request` | [`UpdateSubscriptionAffiliationIdRequest`](../../doc/models/update-subscription-affiliation-id-request.md) | Body, Required | Request for updating a subscription affiliation id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionAffiliationIdRequest.new(
  'gateway_affiliation_id2'
)

result = subscriptions_controller.update_subscription_affiliation_id(
  subscription_id,
  request
)
```


# Update Subscription Minium Price

Atualização do valor mínimo da assinatura

```ruby
def update_subscription_minium_price(subscription_id,
                                     request,
                                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateSubscriptionMinimumPriceRequest`](../../doc/models/update-subscription-minimum-price-request.md) | Body, Required | Request da requisição com o valor mínimo que será configurado |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionMinimumPriceRequest.new

result = subscriptions_controller.update_subscription_minium_price(
  subscription_id,
  request
)
```


# Get Subscription Cycle by Id

```ruby
def get_subscription_cycle_by_id(subscription_id,
                                 cycle_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `cycle_id` | `String` | Template, Required | - |

## Response Type

[`GetPeriodResponse`](../../doc/models/get-period-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

cycle_id = 'cycleId0'

result = subscriptions_controller.get_subscription_cycle_by_id(
  subscription_id,
  cycle_id
)
```


# Get Usage Report

```ruby
def get_usage_report(subscription_id,
                     period_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription Id |
| `period_id` | `String` | Template, Required | The period Id |

## Response Type

[`GetUsageReportResponse`](../../doc/models/get-usage-report-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

period_id = 'period_id0'

result = subscriptions_controller.get_usage_report(
  subscription_id,
  period_id
)
```


# Renew Subscription

```ruby
def renew_subscription(subscription_id,
                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPeriodResponse`](../../doc/models/get-period-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.renew_subscription(subscription_id)
```


# Delete Usage

Deletes a usage

```ruby
def delete_usage(subscription_id,
                 item_id,
                 usage_id,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `item_id` | `String` | Template, Required | The subscription item id |
| `usage_id` | `String` | Template, Required | The usage id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

usage_id = 'usage_id0'

result = subscriptions_controller.delete_usage(
  subscription_id,
  item_id,
  usage_id
)
```


# Create an Usage

Create Usage

```ruby
def create_an_usage(subscription_id,
                    item_id,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `item_id` | `String` | Template, Required | Item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

result = subscriptions_controller.create_an_usage(
  subscription_id,
  item_id
)
```


# Update Current Cycle Status

```ruby
def update_current_cycle_status(subscription_id,
                                request,
                                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateCurrentCycleStatusRequest`](../../doc/models/update-current-cycle-status-request.md) | Body, Required | Request for updating the end date of the subscription current status |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateCurrentCycleStatusRequest.new(
  'status8'
)

subscriptions_controller.update_current_cycle_status(
  subscription_id,
  request
)
```


# Get Subscription Item

Get Subscription Item

```ruby
def get_subscription_item(subscription_id,
                          item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

result = subscriptions_controller.get_subscription_item(
  subscription_id,
  item_id
)
```


# Get Increment by Id

```ruby
def get_increment_by_id(subscription_id,
                        increment_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription Id |
| `increment_id` | `String` | Template, Required | The increment Id |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

increment_id = 'increment_id8'

result = subscriptions_controller.get_increment_by_id(
  subscription_id,
  increment_id
)
```


# Delete Increment

Deletes a increment

```ruby
def delete_increment(subscription_id,
                     increment_id,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `increment_id` | `String` | Template, Required | Increment id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

increment_id = 'increment_id8'

result = subscriptions_controller.delete_increment(
  subscription_id,
  increment_id
)
```


# Get Discounts

```ruby
def get_discounts(subscription_id,
                  page,
                  size)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Required | Page number |
| `size` | `Integer` | Query, Required | Page size |

## Response Type

[`ListDiscountsResponse`](../../doc/models/list-discounts-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

page = 30

size = 18

result = subscriptions_controller.get_discounts(
  subscription_id,
  page,
  size
)
```


# Update Subscription Due Days

Updates the boleto due days from a subscription

```ruby
def update_subscription_due_days(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateSubscriptionDueDaysRequest`](../../doc/models/update-subscription-due-days-request.md) | Body, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateSubscriptionDueDaysRequest.new(
  226
)

result = subscriptions_controller.update_subscription_due_days(
  subscription_id,
  request
)
```


# Create Subscription Item

Creates a new Subscription item

```ruby
def create_subscription_item(subscription_id,
                             request,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateSubscriptionItemRequest`](../../doc/models/create-subscription-item-request.md) | Body, Required | Request for creating a subscription item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = CreateSubscriptionItemRequest.new(
  'description6',
  CreatePricingSchemeRequest.new(
    'scheme_type8'
  ),
  'id6',
  'plan_item_id6',
  [
    CreateDiscountRequest.new(
      90.66,
      'discount_type2',
      'item_id4'
    )
  ],
  'name6'
)

result = subscriptions_controller.create_subscription_item(
  subscription_id,
  request
)
```


# Update Split Subscription

```ruby
def update_split_subscription(id,
                              request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Subscription's id |
| `request` | [`UpdateSubscriptionSplitRequest`](../../doc/models/update-subscription-split-request.md) | Body, Required | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
id = 'id0'

request = UpdateSubscriptionSplitRequest.new(
  false,
  [
    CreateSplitRequest.new(
      'type2',
      118,
      'recipient_id2'
    )
  ]
)

result = subscriptions_controller.update_split_subscription(
  id,
  request
)
```


# Get Subscription Items

Get Subscription Items

```ruby
def get_subscription_items(subscription_id,
                           page: nil,
                           size: nil,
                           name: nil,
                           code: nil,
                           status: nil,
                           description: nil,
                           created_since: nil,
                           created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `name` | `String` | Query, Optional | The item name |
| `code` | `String` | Query, Optional | Identification code in the client system |
| `status` | `String` | Query, Optional | The item statis |
| `description` | `String` | Query, Optional | The item description |
| `created_since` | `String` | Query, Optional | Filter for item's creation date start range |
| `created_until` | `String` | Query, Optional | Filter for item's creation date end range |

## Response Type

[`ListSubscriptionItemsResponse`](../../doc/models/list-subscription-items-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_subscription_items(subscription_id)
```


# Get Subscriptions

Gets all subscriptions

```ruby
def get_subscriptions(page: nil,
                      size: nil,
                      code: nil,
                      billing_type: nil,
                      customer_id: nil,
                      plan_id: nil,
                      card_id: nil,
                      status: nil,
                      next_billing_since: nil,
                      next_billing_until: nil,
                      created_since: nil,
                      created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for subscription's code |
| `billing_type` | `String` | Query, Optional | Filter for subscription's billing type |
| `customer_id` | `String` | Query, Optional | Filter for subscription's customer id |
| `plan_id` | `String` | Query, Optional | Filter for subscription's plan id |
| `card_id` | `String` | Query, Optional | Filter for subscription's card id |
| `status` | `String` | Query, Optional | Filter for subscription's status |
| `next_billing_since` | `DateTime` | Query, Optional | Filter for subscription's next billing date start range |
| `next_billing_until` | `DateTime` | Query, Optional | Filter for subscription's next billing date end range |
| `created_since` | `DateTime` | Query, Optional | Filter for subscription's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for subscriptions creation date end range |

## Response Type

[`ListSubscriptionsResponse`](../../doc/models/list-subscriptions-response.md)

## Example Usage

```ruby
result = subscriptions_controller.get_subscriptions
```


# Create Increment

Creates a increment

```ruby
def create_increment(subscription_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateIncrementRequest`](../../doc/models/create-increment-request.md) | Body, Required | Request for creating a increment |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = CreateIncrementRequest.new(
  185.28,
  'increment_type8',
  'item_id6'
)

result = subscriptions_controller.create_increment(
  subscription_id,
  request
)
```


# Create Usage

Creates a usage

```ruby
def create_usage(subscription_id,
                 item_id,
                 body,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |
| `body` | [`CreateUsageRequest`](../../doc/models/create-usage-request.md) | Body, Required | Request for creating a usage |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

body = CreateUsageRequest.new(
  156,
  'description4',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

result = subscriptions_controller.create_usage(
  subscription_id,
  item_id,
  body
)
```


# Get Discount by Id

```ruby
def get_discount_by_id(subscription_id,
                       discount_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `discount_id` | `String` | Template, Required | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

discount_id = 'discountId0'

result = subscriptions_controller.get_discount_by_id(
  subscription_id,
  discount_id
)
```


# Update Subscription Metadata

Updates the metadata from a subscription

```ruby
def update_subscription_metadata(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the subscrption metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = subscriptions_controller.update_subscription_metadata(
  subscription_id,
  request
)
```


# Get Subscription Cycles

```ruby
def get_subscription_cycles(subscription_id,
                            page,
                            size)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `page` | `String` | Query, Required | Page number |
| `size` | `String` | Query, Required | Page size |

## Response Type

[`ListCyclesResponse`](../../doc/models/list-cycles-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

page = 'page8'

size = 'size0'

result = subscriptions_controller.get_subscription_cycles(
  subscription_id,
  page,
  size
)
```


# Delete Subscription Item

Deletes a subscription item

```ruby
def delete_subscription_item(subscription_id,
                             subscription_item_id,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `subscription_item_id` | `String` | Template, Required | Subscription item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

subscription_item_id = 'subscription_item_id4'

result = subscriptions_controller.delete_subscription_item(
  subscription_id,
  subscription_item_id
)
```


# Get Increments

```ruby
def get_increments(subscription_id,
                   page: nil,
                   size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListIncrementsResponse`](../../doc/models/list-increments-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_increments(subscription_id)
```


# Update Subscription Item

Updates a subscription item

```ruby
def update_subscription_item(subscription_id,
                             item_id,
                             body,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |
| `body` | [`UpdateSubscriptionItemRequest`](../../doc/models/update-subscription-item-request.md) | Body, Required | Request for updating a subscription item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

item_id = 'item_id0'

body = UpdateSubscriptionItemRequest.new(
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
  ),
  'name6'
)

result = subscriptions_controller.update_subscription_item(
  subscription_id,
  item_id,
  body
)
```

