const test = require('ava')
const { messages } = require('../index')

const {
  Agreement,
  Receipt,
  Reward,
  Quote,
  SOW,
  AraId,
  Signature
} = messages

const testString = 'testString'
const testBytes = Buffer.from(testString, 'ascii')
const testNumber = 42

const id = new AraId()
id.setDid(testString)

const sig = new Signature()
sig.setAraId(id)
sig.setData(testBytes)

const sow = new SOW()
sow.setNonce(testBytes)
sow.setData(testBytes)
sow.setRequester(id)
sow.setWorkUnit(testString)

const quote = new Quote()
quote.setNonce(testBytes)
quote.setSow(sow)
quote.setFarmer(id)
quote.setPerUnitCost(testNumber)

const agreement = new Agreement()
agreement.setNonce(testBytes)
agreement.setData(testBytes)
agreement.setQuote(quote)
agreement.setRequesterSignature(sig)
agreement.setFarmerSignature(sig)

const reward = new Reward()
reward.setNonce(testBytes)
reward.setData(testBytes)
reward.setAgreement(agreement)
reward.setAmount(testNumber)
reward.setRequesterSignature(sig)

const receipt = new Receipt()
receipt.setNonce(testBytes)
receipt.setReward(reward)
receipt.setFarmerSignature(sig)

test('id', (t) => {
  const bin = id.serializeBinary()
  const debin = AraId.deserializeBinary(bin)

  t.true(debin.getDid() === testString)
})

test('signature', (t) => {
  const bin = sig.serializeBinary()
  const debin = Signature.deserializeBinary(bin)

  t.true(debin.getAraId().getDid() === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
})

test('sow', (t) => {
  const bin = sow.serializeBinary()
  const debin = SOW.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(debin.getRequester().getDid() === testString)
  t.true(debin.getWorkUnit() === testString)
})

test('quote', (t) => {
  const bin = quote.serializeBinary()
  const debin = Quote.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getSow().getNonce()).toString('ascii') === testString)
  t.true(debin.getFarmer().getDid() === testString)
  t.true(debin.getPerUnitCost() === testNumber)
})

test('agreement', (t) => {
  const bin = agreement.serializeBinary()
  const debin = Agreement.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getQuote().getNonce()).toString('ascii') === testString)
  t.true(debin.getRequesterSignature().getAraId().getDid() === testString)
  t.true(debin.getFarmerSignature().getAraId().getDid() === testString)
})

test('reward', (t) => {
  const bin = reward.serializeBinary()
  const debin = Reward.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getAgreement().getNonce()).toString('ascii') === testString)
  t.true(debin.getAmount() === testNumber)
  t.true(debin.getRequesterSignature().getAraId().getDid() === testString)
})

test('receipt', (t) => {
  const bin = receipt.serializeBinary()
  const debin = Receipt.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getReward().getNonce()).toString('ascii') === testString)
  t.true(debin.getFarmerSignature().getAraId().getDid() === testString)
})
