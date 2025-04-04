# Recipients

```ruby
recipients_controller = client.recipients
```

## Class Name

`RecipientsController`

## Methods

* [Update Recipient](../../doc/controllers/recipients.md#update-recipient)
* [Create Anticipation](../../doc/controllers/recipients.md#create-anticipation)
* [Get Anticipation Limits](../../doc/controllers/recipients.md#get-anticipation-limits)
* [Get Recipients](../../doc/controllers/recipients.md#get-recipients)
* [Get Withdraw by Id](../../doc/controllers/recipients.md#get-withdraw-by-id)
* [Update Recipient Default Bank Account](../../doc/controllers/recipients.md#update-recipient-default-bank-account)
* [Update Recipient Metadata](../../doc/controllers/recipients.md#update-recipient-metadata)
* [Get Transfers](../../doc/controllers/recipients.md#get-transfers)
* [Get Transfer](../../doc/controllers/recipients.md#get-transfer)
* [Create Withdraw](../../doc/controllers/recipients.md#create-withdraw)
* [Update Automatic Anticipation Settings](../../doc/controllers/recipients.md#update-automatic-anticipation-settings)
* [Get Anticipation](../../doc/controllers/recipients.md#get-anticipation)
* [Update Recipient Transfer Settings](../../doc/controllers/recipients.md#update-recipient-transfer-settings)
* [Get Anticipations](../../doc/controllers/recipients.md#get-anticipations)
* [Get Recipient](../../doc/controllers/recipients.md#get-recipient)
* [Get Balance](../../doc/controllers/recipients.md#get-balance)
* [Get Withdrawals](../../doc/controllers/recipients.md#get-withdrawals)
* [Create Transfer](../../doc/controllers/recipients.md#create-transfer)
* [Create Recipient](../../doc/controllers/recipients.md#create-recipient)
* [Get Recipient by Code](../../doc/controllers/recipients.md#get-recipient-by-code)
* [Get Default Recipient](../../doc/controllers/recipients.md#get-default-recipient)
* [Create KYC Link](../../doc/controllers/recipients.md#create-kyc-link)
* [Update Recipient Code](../../doc/controllers/recipients.md#update-recipient-code)


# Update Recipient

Updates a recipient

```ruby
def update_recipient(recipient_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientRequest`](../../doc/models/update-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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
```


# Create Anticipation

Creates an anticipation

```ruby
def create_anticipation(recipient_id,
                        request,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`CreateAnticipationRequest`](../../doc/models/create-anticipation-request.md) | Body, Required | Anticipation data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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
```


# Get Anticipation Limits

Gets the anticipation limits for a recipient

```ruby
def get_anticipation_limits(recipient_id,
                            timeframe,
                            payment_date)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `timeframe` | `String` | Query, Required | Timeframe |
| `payment_date` | `DateTime` | Query, Required | Anticipation payment date |

## Response Type

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
```


# Get Recipients

Retrieves paginated recipients information

```ruby
def get_recipients(page: nil,
                   size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListRecipientResponse`](../../doc/models/list-recipient-response.md)

## Example Usage

```ruby
result = recipients_controller.get_recipients
```


# Get Withdraw by Id

```ruby
def get_withdraw_by_id(recipient_id,
                       withdrawal_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `withdrawal_id` | `String` | Template, Required | - |

## Response Type

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

withdrawal_id = 'withdrawal_id2'

result = recipients_controller.get_withdraw_by_id(
  recipient_id,
  withdrawal_id
)
```


# Update Recipient Default Bank Account

Updates the default bank account from a recipient

```ruby
def update_recipient_default_bank_account(recipient_id,
                                          request,
                                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientBankAccountRequest`](../../doc/models/update-recipient-bank-account-request.md) | Body, Required | Bank account data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateRecipientBankAccountRequest.new(
  CreateBankAccountRequest.new(
    'holder_name0',
    'holder_type6',
    'holder_document8',
    'bank2',
    'branch_number0',
    'account_number4',
    'account_check_digit0',
    'type6',
    {
      'key0': 'metadata1',
      'key1': 'metadata0'
    }
  ),
  'bank_transfer'
)

result = recipients_controller.update_recipient_default_bank_account(
  recipient_id,
  request
)
```


# Update Recipient Metadata

Updates recipient metadata

```ruby
def update_recipient_metadata(recipient_id,
                              request,
                              idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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

[`ListTransferResponse`](../../doc/models/list-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_transfers(recipient_id)
```


# Get Transfer

Gets a transfer

```ruby
def get_transfer(recipient_id,
                 transfer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `transfer_id` | `String` | Template, Required | Transfer id |

## Response Type

[`GetTransferResponse`](../../doc/models/get-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

transfer_id = 'transfer_id6'

result = recipients_controller.get_transfer(
  recipient_id,
  transfer_id
)
```


# Create Withdraw

```ruby
def create_withdraw(recipient_id,
                    request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `request` | [`CreateWithdrawRequest`](../../doc/models/create-withdraw-request.md) | Body, Required | - |

## Response Type

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = CreateWithdrawRequest.new(
  242
)

result = recipients_controller.create_withdraw(
  recipient_id,
  request
)
```


# Update Automatic Anticipation Settings

Updates recipient metadata

```ruby
def update_automatic_anticipation_settings(recipient_id,
                                           request,
                                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateAutomaticAnticipationSettingsRequest`](../../doc/models/update-automatic-anticipation-settings-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

request = UpdateAutomaticAnticipationSettingsRequest.new

result = recipients_controller.update_automatic_anticipation_settings(
  recipient_id,
  request
)
```


# Get Anticipation

Gets an anticipation

```ruby
def get_anticipation(recipient_id,
                     anticipation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `anticipation_id` | `String` | Template, Required | Anticipation id |

## Response Type

[`GetAnticipationResponse`](../../doc/models/get-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

anticipation_id = 'anticipation_id0'

result = recipients_controller.get_anticipation(
  recipient_id,
  anticipation_id
)
```


# Update Recipient Transfer Settings

```ruby
def update_recipient_transfer_settings(recipient_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Identificator |
| `request` | [`UpdateTransferSettingsRequest`](../../doc/models/update-transfer-settings-request.md) | Body, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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

[`ListAnticipationResponse`](../../doc/models/list-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_anticipations(recipient_id)
```


# Get Recipient

Retrieves recipient information

```ruby
def get_recipient(recipient_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipiend id |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_recipient(recipient_id)
```


# Get Balance

Get balance information for a recipient

```ruby
def get_balance(recipient_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |

## Response Type

[`GetBalanceResponse`](../../doc/models/get-balance-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_balance(recipient_id)
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

[`ListWithdrawals`](../../doc/models/list-withdrawals.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_withdrawals(recipient_id)
```


# Create Transfer

Creates a transfer for a recipient

```ruby
def create_transfer(recipient_id,
                    request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Id |
| `request` | [`CreateTransferRequest`](../../doc/models/create-transfer-request.md) | Body, Required | Transfer data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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
```


# Create Recipient

Creates a new recipient

```ruby
def create_recipient(request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateRecipientRequest`](../../doc/models/create-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
request = CreateRecipientRequest.new(
  CreateBankAccountRequest.new(
    'holder_name4',
    'holder_type0',
    'holder_document2',
    'bank6',
    'branch_number4',
    'account_number8',
    'account_check_digit4',
    'type2',
    {
      'key0': 'metadata5',
      'key1': 'metadata4',
      'key2': 'metadata3'
    }
  ),
  {
    'key0': 'metadata3'
  },
  'code4',
  'bank_transfer'
)

result = recipients_controller.create_recipient(request)
```


# Get Recipient by Code

Retrieves recipient information

```ruby
def get_recipient_by_code(code)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Template, Required | Recipient code |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
code = 'code8'

result = recipients_controller.get_recipient_by_code(code)
```


# Get Default Recipient

```ruby
def get_default_recipient
```

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
result = recipients_controller.get_default_recipient
```


# Create KYC Link

Create a KYC link

```ruby
def create_kyc_link(recipient_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |

## Response Type

[`CreateKYCLinkResponse`](../../doc/models/create-kyc-link-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.create_kyc_link(recipient_id)
```


# Update Recipient Code

Updates recipient code

```ruby
def update_recipient_code(recipient_id,
                          request,
                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientCodeRequest`](../../doc/models/update-recipient-code-request.md) | Body, Required | UpdateRecipientCodeRequest |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

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
```

