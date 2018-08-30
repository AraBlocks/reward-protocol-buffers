<img src="https://github.com/arablocks/farming-protocol-buffers/blob/master/ara.png" width="30" height="30" /> farming-protocol-buffers
========

[![Build Status](https://travis-ci.com/AraBlocks/farming-protocol-buffers.svg?token=6WjTyCg41y8MBmCzro5x&branch=master)](https://travis-ci.com/AraBlocks/farming-protocol-buffers)

Protocol buffers for Ara Farming

## Status
**In Active Development**

## Dependencies
- [google-protobuf](https://www.npmjs.com/package/google-protobuf)
- [protoc](https://github.com/protocolbuffers/protobuf/releases)

## API
* [AraId](#araid)
* [Signature](#signature)
* [SOW](#sow)
* [Quote](#quote)
* [Agreement](#agreement)
* [Reward](#reward)
* [Receipt](#receipt)

### AraId <a name="araid"></a>
The Ara Identity associated with a peer.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| did | string |  |  |

### Signature <a name="signature"></a>
A signed piece of data that can be used to validate a peer.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ara_id | [AraId](#araid) |  |  |
| data | bytes |  |  |

### SOW <a name="sow"></a>
A statement of work for a specific task.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | bytes |  |  |
| work_unit | string |  |  |
| requester | [AraId](#araid) |  |  |
| data | bytes |  |  |

### Quote <a name="quote"></a>
A quote from a specific farmer for a specific SOW.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | bytes |  |  |
| per_unit_cost | string |  |  |
| sow | [SOW](#sow) |  |  |
| farmer | [AraId](#araid) |  |  |

### Agreement <a name="agreement"></a>
An abstract agreement between two peers (a farmer and a requester) spelling out the terms of a task.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | bytes |  |  |
| quote | [Quote](#quote) |  |  |
| requester_signature | [Signature](#signature) |  |  |
| farmer_signature | [Signature](#signature) |  |  |
| data | bytes |  |  |

### Reward <a name="reward"></a>
A reward for a specific agreement, sent by a verifiable peer.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | bytes |  |  |
| agreement | [Agreement](#agreement) |  |  |
| amount | int64 |  |  |
| requester_signature | [Signature](#signature) |  |  |
| data | bytes |  |  |

### Receipt <a name="receipt"></a>
A receipt for a reward, sent by a verifiable peer.

| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | bytes |  |  |
| reward | [Reward](#reward) |  |  |
| farmer_signature | [Signature](#signature) |  |  |

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
- [RFC](https://github.com/AraBlocks/RFCs/pull/10/files) 

## License
LGPL-3.0
