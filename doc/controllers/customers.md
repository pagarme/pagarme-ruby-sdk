# Customers

```ruby
customers_controller = client.customers
```

## Class Name

`CustomersController`

## Methods

* [Update Card](../../doc/controllers/customers.md#update-card)
* [Update Address](../../doc/controllers/customers.md#update-address)
* [Delete Access Token](../../doc/controllers/customers.md#delete-access-token)
* [Create Address](../../doc/controllers/customers.md#create-address)
* [Create Customer](../../doc/controllers/customers.md#create-customer)
* [Create Card](../../doc/controllers/customers.md#create-card)
* [Get Cards](../../doc/controllers/customers.md#get-cards)
* [Renew Card](../../doc/controllers/customers.md#renew-card)
* [Get Address](../../doc/controllers/customers.md#get-address)
* [Delete Address](../../doc/controllers/customers.md#delete-address)
* [Get Access Token](../../doc/controllers/customers.md#get-access-token)
* [Update Customer Metadata](../../doc/controllers/customers.md#update-customer-metadata)
* [Get Card](../../doc/controllers/customers.md#get-card)
* [Delete Access Tokens](../../doc/controllers/customers.md#delete-access-tokens)
* [Create Access Token](../../doc/controllers/customers.md#create-access-token)
* [Get Access Tokens](../../doc/controllers/customers.md#get-access-tokens)
* [Get Customers](../../doc/controllers/customers.md#get-customers)
* [Update Customer](../../doc/controllers/customers.md#update-customer)
* [Delete Card](../../doc/controllers/customers.md#delete-card)
* [Get Addresses](../../doc/controllers/customers.md#get-addresses)
* [Get Customer](../../doc/controllers/customers.md#get-customer)


# Update Card

Updates a card

```ruby
def update_card(customer_id,
                card_id,
                request,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `card_id` | `String` | Template, Required | Card id |
| `request` | [`UpdateCardRequest`](../../doc/models/update-card-request.md) | Body, Required | Request for updating a card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCardResponse`](../../doc/models/get-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

card_id = 'card_id4'

request = UpdateCardRequest.new(
  'holder_name2',
  10,
  30,
  CreateAddressRequest.new(
    'street8',
    'number4',
    'zip_code2',
    'neighborhood4',
    'city8',
    'state4',
    'country2',
    'complement6',
    {
      'key0': 'metadata5',
      'key1': 'metadata6'
    },
    'line_18',
    'line_26'
  ),
  {
    'key0': 'metadata3'
  },
  'label6',
  nil
)

result = customers_controller.update_card(
  customer_id,
  card_id,
  request
)
```


# Update Address

Updates an address

```ruby
def update_address(customer_id,
                   address_id,
                   request,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `address_id` | `String` | Template, Required | Address Id |
| `request` | [`UpdateAddressRequest`](../../doc/models/update-address-request.md) | Body, Required | Request for updating an address |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAddressResponse`](../../doc/models/get-address-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

address_id = 'address_id0'

request = UpdateAddressRequest.new(
  'number4',
  'complement2',
  {
    'key0': 'metadata3'
  },
  'line_24'
)

result = customers_controller.update_address(
  customer_id,
  address_id,
  request
)
```


# Delete Access Token

Delete a customer's access token

```ruby
def delete_access_token(customer_id,
                        token_id,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `token_id` | `String` | Template, Required | Token Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAccessTokenResponse`](../../doc/models/get-access-token-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

token_id = 'token_id6'

result = customers_controller.delete_access_token(
  customer_id,
  token_id
)
```


# Create Address

Creates a new address for a customer

```ruby
def create_address(customer_id,
                   request,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `request` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Body, Required | Request for creating an address |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAddressResponse`](../../doc/models/get-address-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

request = CreateAddressRequest.new(
  'street6',
  'number4',
  'zip_code0',
  'neighborhood2',
  'city6',
  'state2',
  'country0',
  'complement2',
  {
    'key0': 'metadata3'
  },
  'line_10',
  'line_24'
)

result = customers_controller.create_address(
  customer_id,
  request
)
```


# Create Customer

Creates a new customer

```ruby
def create_customer(request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Body, Required | Request for creating a customer |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCustomerResponse`](../../doc/models/get-customer-response.md)

## Example Usage

```ruby
request = CreateCustomerRequest.new(
  '{
    "name": "Tony Stark"
}',
  'email0',
  'document0',
  'type4',
  CreateAddressRequest.new(
    'street2',
    'number0',
    'zip_code6',
    'neighborhood8',
    'city2',
    'state8',
    'country6',
    'complement8',
    {
      'key0': 'metadata7'
    },
    'line_16',
    'line_20'
  ),
  {
    'key0': 'metadata3'
  },
  CreatePhonesRequest.new(
    nil,
    nil
  ),
  'code4',
  nil,
  nil
)

result = customers_controller.create_customer(request)
```


# Create Card

Creates a new card for a customer

```ruby
def create_card(customer_id,
                request,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `request` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Body, Required | Request for creating a card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCardResponse`](../../doc/models/get-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

request = CreateCardRequest.new(
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  'credit',
  nil,
  nil,
  nil,
  nil,
  nil,
  nil
)

result = customers_controller.create_card(
  customer_id,
  request
)
```


# Get Cards

Get all cards from a customer

```ruby
def get_cards(customer_id,
              page: nil,
              size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListCardsResponse`](../../doc/models/list-cards-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_controller.get_cards(customer_id)
```


# Renew Card

Renew a card

```ruby
def renew_card(customer_id,
               card_id,
               idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `card_id` | `String` | Template, Required | Card Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCardResponse`](../../doc/models/get-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

card_id = 'card_id4'

result = customers_controller.renew_card(
  customer_id,
  card_id
)
```


# Get Address

Get a customer's address

```ruby
def get_address(customer_id,
                address_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `address_id` | `String` | Template, Required | Address Id |

## Response Type

[`GetAddressResponse`](../../doc/models/get-address-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

address_id = 'address_id0'

result = customers_controller.get_address(
  customer_id,
  address_id
)
```


# Delete Address

Delete a Customer's address

```ruby
def delete_address(customer_id,
                   address_id,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `address_id` | `String` | Template, Required | Address Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAddressResponse`](../../doc/models/get-address-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

address_id = 'address_id0'

result = customers_controller.delete_address(
  customer_id,
  address_id
)
```


# Get Access Token

Get a Customer's access token

```ruby
def get_access_token(customer_id,
                     token_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `token_id` | `String` | Template, Required | Token Id |

## Response Type

[`GetAccessTokenResponse`](../../doc/models/get-access-token-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

token_id = 'token_id6'

result = customers_controller.get_access_token(
  customer_id,
  token_id
)
```


# Update Customer Metadata

Updates the metadata a customer

```ruby
def update_customer_metadata(customer_id,
                             request,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The customer id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the customer metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCustomerResponse`](../../doc/models/get-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = customers_controller.update_customer_metadata(
  customer_id,
  request
)
```


# Get Card

Get a customer's card

```ruby
def get_card(customer_id,
             card_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `card_id` | `String` | Template, Required | Card id |

## Response Type

[`GetCardResponse`](../../doc/models/get-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

card_id = 'card_id4'

result = customers_controller.get_card(
  customer_id,
  card_id
)
```


# Delete Access Tokens

Delete a Customer's access tokens

```ruby
def delete_access_tokens(customer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |

## Response Type

[`ListAccessTokensResponse`](../../doc/models/list-access-tokens-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_controller.delete_access_tokens(customer_id)
```


# Create Access Token

Creates a access token for a customer

```ruby
def create_access_token(customer_id,
                        request,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `request` | [`CreateAccessTokenRequest`](../../doc/models/create-access-token-request.md) | Body, Required | Request for creating a access token |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAccessTokenResponse`](../../doc/models/get-access-token-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

request = CreateAccessTokenRequest.new(
  nil
)

result = customers_controller.create_access_token(
  customer_id,
  request
)
```


# Get Access Tokens

Get all access tokens from a customer

```ruby
def get_access_tokens(customer_id,
                      page: nil,
                      size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListAccessTokensResponse`](../../doc/models/list-access-tokens-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_controller.get_access_tokens(customer_id)
```


# Get Customers

Get all Customers

```ruby
def get_customers(name: nil,
                  document: nil,
                  page: 1,
                  size: 10,
                  email: nil,
                  code: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Query, Optional | Name of the Customer |
| `document` | `String` | Query, Optional | Document of the Customer |
| `page` | `Integer` | Query, Optional | Current page the the search<br>**Default**: `1` |
| `size` | `Integer` | Query, Optional | Quantity pages of the search<br>**Default**: `10` |
| `email` | `String` | Query, Optional | Customer's email |
| `code` | `String` | Query, Optional | Customer's code |

## Response Type

[`ListCustomersResponse`](../../doc/models/list-customers-response.md)

## Example Usage

```ruby
page = 1

size = 10

result = customers_controller.get_customers(
  page: page,
  size: size
)
```


# Update Customer

Updates a customer

```ruby
def update_customer(customer_id,
                    request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `request` | [`UpdateCustomerRequest`](../../doc/models/update-customer-request.md) | Body, Required | Request for updating a customer |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCustomerResponse`](../../doc/models/get-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

request = UpdateCustomerRequest.new(
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil
)

result = customers_controller.update_customer(
  customer_id,
  request
)
```


# Delete Card

Delete a customer's card

```ruby
def delete_card(customer_id,
                card_id,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |
| `card_id` | `String` | Template, Required | Card Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetCardResponse`](../../doc/models/get-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

card_id = 'card_id4'

result = customers_controller.delete_card(
  customer_id,
  card_id
)
```


# Get Addresses

Gets all adressess from a customer

```ruby
def get_addresses(customer_id,
                  page: nil,
                  size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListAddressesResponse`](../../doc/models/list-addresses-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_controller.get_addresses(customer_id)
```


# Get Customer

Get a customer

```ruby
def get_customer(customer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | Customer Id |

## Response Type

[`GetCustomerResponse`](../../doc/models/get-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_controller.get_customer(customer_id)
```

