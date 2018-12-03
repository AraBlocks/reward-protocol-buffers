<img src="https://github.com/arablocks/ara-module-template/blob/master/ara.png" width="30" height="30" /> reward-protocol-buffers
========

[![Build Status](https://travis-ci.com/AraBlocks/reward-protocol-buffers.svg?token=6WjTyCg41y8MBmCzro5x&branch=master)](https://travis-ci.com/AraBlocks/reward-protocol-buffers)

Protocol buffers for Ara Rewards

## Status
**In Active Development**

## Dependencies
- [google-protobuf](https://www.npmjs.com/package/google-protobuf)
- [protoc](https://github.com/protocolbuffers/protobuf/releases)

## API
* [Signature](#signature)
* [SOW](#sow)
* [Quote](#quote)
* [Agreement](#agreement)
* [Reward](#reward)
* [Receipt](#receipt)

<a name="signature"></a>
### Signature
A signed piece of data that can be used to validate a peer.

| Field | Type | Description |
| ----- | ---- | ----------- |
| did | string | The DID associated with a peer |
| data | bytes | Data signed by the private key of the associated AraId |

<a name="sow"></a>
### SOW
A statement of work for a specific task.

| Field | Type | Description |
| ----- | ---- | ----------- |
| nonce | bytes | Identifier for the SOW |
| topic | string | The topic of interest |
| work_unit | string | An individual unit of work (i.e GB, Frame, etc.) |
| currency_unit | string | An individual unit of currency (i.e. Ara^-18, USD, wei, etc.) |
| signature | [Signature](#signature) | The signature associated with a peer |
| data | bytes | Miscellaneous data |

<a name="quote"></a>
### Quote
A quote from a peer for a specific SOW.

| Field | Type | Description |
| ----- | ---- | ----------- |
| nonce | bytes | Identifier for the quote |
| per_unit_cost | int64 | The cost (in `currency_units`) per unit of work (in `work_units`) |
| sow | [SOW](#sow) | The associated SOW |
| signature | [Signature](#signature) | The signature associated with a peer |
| data | bytes | Miscellaneous data |

<a name="agreement"></a>
### Agreement
An abstract agreement between two peers spelling out the terms of a task.

| Field | Type | Description |
| ----- | ---- | ----------- |
| nonce | bytes | Identifier for the agreement |
| quote | [Quote](#quote) | The associated quote |
| signature | [Signature](#signature) | The signature associated with a peer |
| data | bytes | Miscellaneous data |

<a name="reward"></a>
### Reward
A reward for a specific agreement, sent by a verifiable peer.

| Field | Type | Description |
| ----- | ---- | ----------- |
| nonce | bytes | Identifier for the reward |
| agreement | [Agreement](#agreement) | The associated agreement |
| amount | int64 | The reward amount (in `currency_units`) |
| signature | [Signature](#signature) | The signature associated with a peer |
| data | bytes | Miscellaneous data |

<a name="receipt"></a>
### Receipt
A receipt for a reward, sent by a verifiable peer.

| Field | Type | Description |
| ----- | ---- | ----------- |
| nonce | bytes | Identifier for the receipt |
| reward | [Reward](#reward) | The associated reward |
| signature | [Signature](#signature) | The signature associated with a peer |

## Local Development Setup
### Generating Protobuf files

To generate the build files, run:

```sh
npm run build
```

> **Important**: Generating protobufs requires you have [protoc](https://github.com/protocolbuffers/protobuf/releases) installed.

## Contributing
- [Commit message format](/.github/COMMIT_FORMAT.md)
- [Commit message examples](/.github/COMMIT_FORMAT_EXAMPLES.md)
- [How to contribute](/.github/CONTRIBUTING.md)

Releases follow [Semantic Versioning](https://semver.org/)

## See Also
- [RFC](https://github.com/AraBlocks/RFCs/blob/c110d3a8bc5fbdc7f331853667ce780f012a2244/text/0000-afp.md)
- [ara-identity](https://github.com/AraBlocks/ara-identity)

## License
LGPL-3.0
