# Sellers

```ruby
sellers_controller = client.sellers
```

## Class Name

`SellersController`

## Methods

* [Create Seller](/doc/controllers/sellers.md#create-seller)
* [Update Seller Metadata](/doc/controllers/sellers.md#update-seller-metadata)
* [Update Seller](/doc/controllers/sellers.md#update-seller)
* [Delete Seller](/doc/controllers/sellers.md#delete-seller)
* [Get Seller by Id](/doc/controllers/sellers.md#get-seller-by-id)
* [Get Sellers](/doc/controllers/sellers.md#get-sellers)


# Create Seller

```ruby
def create_seller(request,
                  idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateSellerRequest`](/doc/models/create-seller-request.md) | Body, Required | Seller Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSellerResponse`](/doc/models/get-seller-response.md)

## Example Usage

```ruby
request = CreateSellerRequest.new
request.name = 'name6'
request.metadata = {'key0' => 'metadata3' } 

result = sellers_controller.create_seller(request, )
```


# Update Seller Metadata

```ruby
def update_seller_metadata(seller_id,
                           request,
                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `seller_id` | `String` | Template, Required | Seller Id |
| `request` | [`UpdateMetadataRequest`](/doc/models/update-metadata-request.md) | Body, Required | Request for updating the charge metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSellerResponse`](/doc/models/get-seller-response.md)

## Example Usage

```ruby
seller_id = 'seller_id8'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = sellers_controller.update_seller_metadata(seller_id, request, )
```


# Update Seller

```ruby
def update_seller(id,
                  request,
                  idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | - |
| `request` | [`UpdateSellerRequest`](/doc/models/update-seller-request.md) | Body, Required | Update Seller model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSellerResponse`](/doc/models/get-seller-response.md)

## Example Usage

```ruby
id = 'id0'
request = UpdateSellerRequest.new
request.name = 'name6'
request.code = 'code4'
request.description = 'description6'
request.document = 'document0'
request.status = 'status8'
request.type = 'type4'
request.address = CreateAddressRequest.new
request.address.street = 'street2'
request.address.number = 'number0'
request.address.zip_code = 'zip_code6'
request.address.neighborhood = 'neighborhood8'
request.address.city = 'city2'
request.address.state = 'state8'
request.address.country = 'country6'
request.address.complement = 'complement8'
request.address.metadata = {'key0' => 'metadata7' } 
request.address.line_1 = 'line_16'
request.address.line_2 = 'line_20'
request.metadata = {'key0' => 'metadata3' } 

result = sellers_controller.update_seller(id, request, )
```


# Delete Seller

```ruby
def delete_seller(seller_id,
                  idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `seller_id` | `String` | Template, Required | Seller Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSellerResponse`](/doc/models/get-seller-response.md)

## Example Usage

```ruby
seller_id = 'sellerId4'

result = sellers_controller.delete_seller(seller_id, )
```


# Get Seller by Id

```ruby
def get_seller_by_id(id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Seller Id |

## Response Type

[`GetSellerResponse`](/doc/models/get-seller-response.md)

## Example Usage

```ruby
id = 'id0'

result = sellers_controller.get_seller_by_id(id)
```


# Get Sellers

```ruby
def get_sellers(page: nil,
                size: nil,
                name: nil,
                document: nil,
                code: nil,
                status: nil,
                type: nil,
                created_since: nil,
                created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `name` | `String` | Query, Optional | - |
| `document` | `String` | Query, Optional | - |
| `code` | `String` | Query, Optional | - |
| `status` | `String` | Query, Optional | - |
| `type` | `String` | Query, Optional | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |

## Response Type

[`ListSellerResponse`](/doc/models/list-seller-response.md)

## Example Usage

```ruby
result = sellers_controller.get_sellers()
```

