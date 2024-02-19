# Tokens

```ruby
tokens_controller = client.tokens
```

## Class Name

`TokensController`

## Methods

* [Create Token](../../doc/controllers/tokens.md#create-token)
* [Get Token](../../doc/controllers/tokens.md#get-token)


# Create Token

```ruby
def create_token(public_key,
                 request,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `public_key` | `String` | Template, Required | Public key |
| `request` | [`CreateTokenRequest`](../../doc/models/create-token-request.md) | Body, Required | Request for creating a token |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetTokenResponse`](../../doc/models/get-token-response.md)

## Example Usage

```ruby
public_key = 'public_key6'

request = CreateTokenRequest.new(
  'card',
  CreateCardTokenRequest.new(
    'number6',
    'holder_name2',
    228,
    68,
    'cvv4',
    'brand0',
    'label6'
  )
)

result = tokens_controller.create_token(
  public_key,
  request
)
```


# Get Token

Gets a token from its id

```ruby
def get_token(id,
              public_key)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Token id |
| `public_key` | `String` | Template, Required | Public key |

## Response Type

[`GetTokenResponse`](../../doc/models/get-token-response.md)

## Example Usage

```ruby
id = 'id0'

public_key = 'public_key6'

result = tokens_controller.get_token(
  id,
  public_key
)
```

