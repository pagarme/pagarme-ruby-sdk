# Recipients

```ruby
recipients_controller = client.recipients
```

## Class Name

`RecipientsController`

## Methods

* [Create Anticipation](../../doc/controllers/recipients.md#create-anticipation)
* [Create KYC Link](../../doc/controllers/recipients.md#create-kyc-link)
* [Create Recipient](../../doc/controllers/recipients.md#create-recipient)
* [Create Transfer](../../doc/controllers/recipients.md#create-transfer)
* [Create Withdraw](../../doc/controllers/recipients.md#create-withdraw)
* [Get Anticipation](../../doc/controllers/recipients.md#get-anticipation)
* [Get Anticipation Limits](../../doc/controllers/recipients.md#get-anticipation-limits)
* [Get Anticipations](../../doc/controllers/recipients.md#get-anticipations)
* [Get Balance](../../doc/controllers/recipients.md#get-balance)
* [Get Default Recipient](../../doc/controllers/recipients.md#get-default-recipient)
* [Get Recipient](../../doc/controllers/recipients.md#get-recipient)
* [Get Recipient by Code](../../doc/controllers/recipients.md#get-recipient-by-code)
* [Get Recipients](../../doc/controllers/recipients.md#get-recipients)
* [Get Transfer](../../doc/controllers/recipients.md#get-transfer)
* [Get Transfers](../../doc/controllers/recipients.md#get-transfers)
* [Get Withdraw by Id](../../doc/controllers/recipients.md#get-withdraw-by-id)
* [Get Withdrawals](../../doc/controllers/recipients.md#get-withdrawals)
* [Update Automatic Anticipation Settings](../../doc/controllers/recipients.md#update-automatic-anticipation-settings)
* [Update Recipient](../../doc/controllers/recipients.md#update-recipient)
* [Update Recipient Code](../../doc/controllers/recipients.md#update-recipient-code)
* [Update Recipient Default Bank Account](../../doc/controllers/recipients.md#update-recipient-default-bank-account)
* [Update Recipient Metadata](../../doc/controllers/recipients.md#update-recipient-metadata)
* [Update Recipient Transfer Settings](../../doc/controllers/recipients.md#update-recipient-transfer-settings)


# Create Anticipation

Creates an anticipation

```ruby
def create_anticipation(recipient_id,
                        request,
                        idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`CreateAnticipationRequest`](../../doc/models/create-anticipation-request.md) | Body, Required | Anticipation data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetAnticipationResponse`](../../doc/models/get-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = CreateAnticipationRequest.new(
  242,
  'timeframe8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)

result = recipients_controller.create_anticipation(
  recipient_id,
  request
)
puts result
```


# Create KYC Link

Create a KYC link

```ruby
def create_kyc_link(recipient_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |

## Response Type

**200**

[`CreateKYCLinkResponse`](../../doc/models/create-kyc-link-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.create_kyc_link(recipient_id)
puts result
```


# Create Recipient

Creates a new recipient

```ruby
def create_recipient(request,
                     idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateRecipientRequest`](../../doc/models/create-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
request = CreateRecipientRequest.new(
  CreateBankAccountRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    {}
  ),
  {},
  nil,
  'bank_transfer'
)

result = recipients_controller.create_recipient(request)
puts result
```


# Create Transfer

Creates a transfer for a recipient

```ruby
def create_transfer(recipient_id,
                    request,
                    idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Id |
| `request` | [`CreateTransferRequest`](../../doc/models/create-transfer-request.md) | Body, Required | Transfer data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetTransferResponse`](../../doc/models/get-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = CreateTransferRequest.new(
  242,
  {
    'key0': 'metadata3'
  }
)

result = recipients_controller.create_transfer(
  recipient_id,
  request
)
puts result
```


# Create Withdraw

```ruby
def create_withdraw(recipient_id,
                    request)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `request` | [`CreateWithdrawRequest`](../../doc/models/create-withdraw-request.md) | Body, Required | - |

## Response Type

**200**

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = CreateWithdrawRequest.new(
  242,
  {}
)

result = recipients_controller.create_withdraw(
  recipient_id,
  request
)
puts result
```


# Get Anticipation

Gets an anticipation

```ruby
def get_anticipation(recipient_id,
                     anticipation_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `anticipation_id` | `String` | Template, Required | Anticipation id |

## Response Type

**200**

[`GetAnticipationResponse`](../../doc/models/get-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

anticipation_id = 'anticipation_id0'

result = recipients_controller.get_anticipation(
  recipient_id,
  anticipation_id
)
puts result
```


# Get Anticipation Limits

Gets the anticipation limits for a recipient

```ruby
def get_anticipation_limits(recipient_id,
                            timeframe,
                            payment_date)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `timeframe` | `String` | Query, Required | Timeframe |
| `payment_date` | `DateTime` | Query, Required | Anticipation payment date |

## Response Type

**200**

[`GetAnticipationLimitResponse`](../../doc/models/get-anticipation-limit-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

timeframe = 'timeframe2'

payment_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = recipients_controller.get_anticipation_limits(
  recipient_id,
  timeframe,
  payment_date
)
puts result
```


# Get Anticipations

Retrieves a paginated list of anticipations from a recipient

```ruby
def get_anticipations(recipient_id,
                      page: nil,
                      size: nil,
                      status: nil,
                      timeframe: nil,
                      payment_date_since: nil,
                      payment_date_until: nil,
                      created_since: nil,
                      created_until: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `status` | `String` | Query, Optional | Filter for anticipation status |
| `timeframe` | `String` | Query, Optional | Filter for anticipation timeframe |
| `payment_date_since` | `DateTime` | Query, Optional | Filter for start range for anticipation payment date |
| `payment_date_until` | `DateTime` | Query, Optional | Filter for end range for anticipation payment date |
| `created_since` | `DateTime` | Query, Optional | Filter for start range for anticipation creation date |
| `created_until` | `DateTime` | Query, Optional | Filter for end range for anticipation creation date |

## Response Type

**200**

[`ListAnticipationResponse`](../../doc/models/list-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_anticipations(recipient_id)
puts result
```


# Get Balance

Get balance information for a recipient

```ruby
def get_balance(recipient_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |

## Response Type

**200**

[`GetBalanceResponse`](../../doc/models/get-balance-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_balance(recipient_id)
puts result
```


# Get Default Recipient

```ruby
def get_default_recipient
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
result = recipients_controller.get_default_recipient
puts result
```


# Get Recipient

Retrieves recipient information

```ruby
def get_recipient(recipient_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipiend id |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_recipient(recipient_id)
puts result
```


# Get Recipient by Code

Retrieves recipient information

```ruby
def get_recipient_by_code(code)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Template, Required | Recipient code |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
code = 'code8'

result = recipients_controller.get_recipient_by_code(code)
puts result
```


# Get Recipients

Retrieves paginated recipients information

```ruby
def get_recipients(page: nil,
                   size: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

**200**

[`ListRecipientResponse`](../../doc/models/list-recipient-response.md)

## Example Usage

```ruby
result = recipients_controller.get_recipients
puts result
```


# Get Transfer

Gets a transfer

```ruby
def get_transfer(recipient_id,
                 transfer_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `transfer_id` | `String` | Template, Required | Transfer id |

## Response Type

**200**

[`GetTransferResponse`](../../doc/models/get-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

transfer_id = 'transfer_id6'

result = recipients_controller.get_transfer(
  recipient_id,
  transfer_id
)
puts result
```


# Get Transfers

Gets a paginated list of transfers for the recipient

```ruby
def get_transfers(recipient_id,
                  page: nil,
                  size: nil,
                  status: nil,
                  created_since: nil,
                  created_until: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `status` | `String` | Query, Optional | Filter for transfer status |
| `created_since` | `DateTime` | Query, Optional | Filter for start range of transfer creation date |
| `created_until` | `DateTime` | Query, Optional | Filter for end range of transfer creation date |

## Response Type

**200**

[`ListTransferResponse`](../../doc/models/list-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_transfers(recipient_id)
puts result
```


# Get Withdraw by Id

```ruby
def get_withdraw_by_id(recipient_id,
                       withdrawal_id)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `withdrawal_id` | `String` | Template, Required | - |

## Response Type

**200**

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

withdrawal_id = 'withdrawal_id2'

result = recipients_controller.get_withdraw_by_id(
  recipient_id,
  withdrawal_id
)
puts result
```


# Get Withdrawals

Gets a paginated list of transfers for the recipient

```ruby
def get_withdrawals(recipient_id,
                    page: nil,
                    size: nil,
                    status: nil,
                    created_since: nil,
                    created_until: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `page` | `Integer` | Query, Optional | - |
| `size` | `Integer` | Query, Optional | - |
| `status` | `String` | Query, Optional | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |

## Response Type

**200**

[`ListWithdrawals`](../../doc/models/list-withdrawals.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_withdrawals(recipient_id)
puts result
```


# Update Automatic Anticipation Settings

Updates recipient metadata

```ruby
def update_automatic_anticipation_settings(recipient_id,
                                           request,
                                           idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateAutomaticAnticipationSettingsRequest`](../../doc/models/update-automatic-anticipation-settings-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateAutomaticAnticipationSettingsRequest.new

result = recipients_controller.update_automatic_anticipation_settings(
  recipient_id,
  request
)
puts result
```


# Update Recipient

Updates a recipient

```ruby
def update_recipient(recipient_id,
                     request,
                     idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientRequest`](../../doc/models/update-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateRecipientRequest.new(
  'name6',
  'email0',
  'description6',
  'type4',
  'status8',
  {
    'key0': 'metadata3'
  }
)

result = recipients_controller.update_recipient(
  recipient_id,
  request
)
puts result
```


# Update Recipient Code

Updates recipient code

```ruby
def update_recipient_code(recipient_id,
                          request,
                          idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientCodeRequest`](../../doc/models/update-recipient-code-request.md) | Body, Required | UpdateRecipientCodeRequest |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateRecipientCodeRequest.new(
  'code4'
)

result = recipients_controller.update_recipient_code(
  recipient_id,
  request
)
puts result
```


# Update Recipient Default Bank Account

Updates the default bank account from a recipient

```ruby
def update_recipient_default_bank_account(recipient_id,
                                          request,
                                          idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientBankAccountRequest`](../../doc/models/update-recipient-bank-account-request.md) | Body, Required | Bank account data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateRecipientBankAccountRequest.new(
  CreateBankAccountRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    {}
  ),
  'bank_transfer'
)

result = recipients_controller.update_recipient_default_bank_account(
  recipient_id,
  request
)
puts result
```


# Update Recipient Metadata

Updates recipient metadata

```ruby
def update_recipient_metadata(recipient_id,
                              request,
                              idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateMetadataRequest.new(
  {
    'key0': 'metadata3'
  }
)

result = recipients_controller.update_recipient_metadata(
  recipient_id,
  request
)
puts result
```


# Update Recipient Transfer Settings

```ruby
def update_recipient_transfer_settings(recipient_id,
                                       request,
                                       idempotency_key: nil)
```

## Authentication

This endpoint requires [httpBasic](../../doc/auth/basic-authentication.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Identificator |
| `request` | [`UpdateTransferSettingsRequest`](../../doc/models/update-transfer-settings-request.md) | Body, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

**200**

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateTransferSettingsRequest.new(
  'transfer_enabled2',
  'transfer_interval6',
  'transfer_day6'
)

result = recipients_controller.update_recipient_transfer_settings(
  recipient_id,
  request
)
puts result
```

