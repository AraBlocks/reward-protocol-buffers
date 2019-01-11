const test = require('ava')
const { messages } = require('../index')

const {
  Agreement,
  Receipt,
  Reward,
  Quote,
  SOW,
  Signature
} = messages

const testString = 'testString'
const testBytes = Buffer.from(testString, 'ascii')
const testNumber = '420000000000000000.000000000000007'

const sig = new Signature()
sig.setDid(testString)
sig.setData(testBytes)

const sow = new SOW()
sow.setNonce(testBytes)
sow.setTopic(testString)
sow.setData(testBytes)
sow.setSignature(sig)
sow.setWorkUnit(testString)

const quote = new Quote()
quote.setNonce(testBytes)
quote.setSow(sow)
quote.setSignature(sig)
quote.setPerUnitCost(testNumber)

const agreement = new Agreement()
agreement.setNonce(testBytes)
agreement.setData(testBytes)
agreement.setQuote(quote)
agreement.setSignature(sig)

const reward = new Reward()
reward.setNonce(testBytes)
reward.setData(testBytes)
reward.setAgreement(agreement)
reward.setAmount(testNumber)
reward.setSignature(sig)

const receipt = new Receipt()
receipt.setNonce(testBytes)
receipt.setReward(reward)
receipt.setSignature(sig)

test('signature', (t) => {
  const bin = sig.serializeBinary()
  const debin = Signature.deserializeBinary(bin)

  t.true(debin.getDid() === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
})

test('sow', (t) => {
  const bin = sow.serializeBinary()
  const debin = SOW.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(debin.getSignature().getDid() === testString)
  t.true(debin.getWorkUnit() === testString)
  t.true(debin.getTopic() === testString)
})

test('quote', (t) => {
  const bin = quote.serializeBinary()
  const debin = Quote.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getSow().getNonce()).toString('ascii') === testString)
  t.true(debin.getSignature().getDid() === testString)
  t.true(debin.getPerUnitCost() === testNumber)
})

test('agreement', (t) => {
  const bin = agreement.serializeBinary()
  const debin = Agreement.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getQuote().getNonce()).toString('ascii') === testString)
  t.true(debin.getSignature().getDid() === testString)
})

test('reward', (t) => {
  const bin = reward.serializeBinary()
  const debin = Reward.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getData()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getAgreement().getNonce()).toString('ascii') === testString)
  t.true(debin.getAmount() === testNumber)
  t.true(debin.getSignature().getDid() === testString)
})

test('receipt', (t) => {
  const bin = receipt.serializeBinary()
  const debin = Receipt.deserializeBinary(bin)

  t.true(Buffer.from(debin.getNonce()).toString('ascii') === testString)
  t.true(Buffer.from(debin.getReward().getNonce()).toString('ascii') === testString)
  t.true(debin.getSignature().getDid() === testString)
})
