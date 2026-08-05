
# Create Subscription Request

Request for creating a subcription

## Structure

`CreateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Required | Customer |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Card |
| `code` | `String` | Required | Subscription code |
| `payment_method` | `String` | Required | Payment method |
| `billing_type` | `String` | Required | Billing type |
| `statement_descriptor` | `String` | Required | Statement descriptor for credit card subscriptions |
| `description` | `String` | Required | Subscription description |
| `currency` | `String` | Required | Currency |
| `interval` | `String` | Required | Interval |
| `interval_count` | `Integer` | Required | Interval count |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Subscription pricing scheme |
| `items` | [`Array[CreateSubscriptionItemRequest]`](../../doc/models/create-subscription-item-request.md) | Required | Subscription items |
| `shipping` | [`CreateShippingRequest`](../../doc/models/create-shipping-request.md) | Required | Shipping |
| `discounts` | [`Array[CreateDiscountRequest]`](../../doc/models/create-discount-request.md) | Required | Discounts |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `setup` | [`CreateSetupRequest`](../../doc/models/create-setup-request.md) | Optional | Setup data |
| `plan_id` | `String` | Optional | Plan id |
| `customer_id` | `String` | Optional | Customer id |
| `card_id` | `String` | Optional | Card id |
| `billing_day` | `Integer` | Optional | Billing day |
| `installments` | `Integer` | Optional | Number of installments |
| `start_at` | `DateTime` | Optional | Subscription start date |
| `minimum_price` | `Integer` | Optional | Subscription minimum price |
| `cycles` | `Integer` | Optional | Number of cycles |
| `card_token` | `String` | Optional | Card token |
| `gateway_affiliation_id` | `String` | Optional | Gateway Affiliation code |
| `quantity` | `Integer` | Optional | Quantity |
| `boleto_due_days` | `Integer` | Optional | Days until boleto expires |
| `increments` | [`Array[CreateIncrementRequest]`](../../doc/models/create-increment-request.md) | Required | Increments |
| `period` | [`CreatePeriodRequest`](../../doc/models/create-period-request.md) | Optional | - |
| `submerchant` | [`CreateSubMerchantRequest`](../../doc/models/create-sub-merchant-request.md) | Optional | SubMerchant |
| `split` | [`CreateSubscriptionSplitRequest`](../../doc/models/create-subscription-split-request.md) | Optional | Subscription's split |
| `boleto` | [`CreateSubscriptionBoletoRequest`](../../doc/models/create-subscription-boleto-request.md) | Optional | Information about fines and interest on the "boleto" used from payment |
| `indirect_acceptor` | `String` | Optional | Business model identifier |

## Example

```ruby
create_subscription_request = CreateSubscriptionRequest.new(
  CreateCustomerRequest.new(
    'Tony Stark',
    nil,
    nil,
    nil,
    CreateAddressRequest.new,
    {},
    CreatePhonesRequest.new,
    nil,
    'gender6',
    'document_type8'
  ),
  CreateCardRequest.new(
    'number6',
    'holder_name2',
    228,
    68,
    'cvv4',
    nil,
    nil,
    nil,
    {},
    'credit'
  ),
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  CreatePricingSchemeRequest.new(
    nil,
    []
  ),
  [
    CreateSubscriptionItemRequest.new(
      nil,
      CreatePricingSchemeRequest.new(
        nil,
        []
      ),
      nil,
      nil,
      [
        nil
      ],
      nil,
      214,
      22,
      222
    )
  ],
  CreateShippingRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    CreateAddressRequest.new,
    nil,
    DateTimeHelper.from_rfc3339(nil),
    DateTimeHelper.from_rfc3339(nil)
  ),
  [
    nil
  ],
  {},
  [
    nil
  ],
  nil,
  'plan_id6',
  'customer_id2',
  'card_id0',
  242,
  nil,
  DateTimeHelper.from_rfc3339(nil)
)
```

