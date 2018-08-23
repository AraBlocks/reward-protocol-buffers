// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: messages.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Messages.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - MessagesRoot

@implementation MessagesRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - MessagesRoot_FileDescriptor

static GPBFileDescriptor *MessagesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"messages"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - SOW

@implementation SOW

@dynamic nonce;
@dynamic workUnit;
@dynamic hasRequester, requester;
@dynamic data_p;

typedef struct SOW__storage_ {
  uint32_t _has_storage_[1];
  NSData *nonce;
  NSString *workUnit;
  AraId *requester;
  NSData *data_p;
} SOW__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nonce",
        .dataTypeSpecific.className = NULL,
        .number = SOW_FieldNumber_Nonce,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SOW__storage_, nonce),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "workUnit",
        .dataTypeSpecific.className = NULL,
        .number = SOW_FieldNumber_WorkUnit,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SOW__storage_, workUnit),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "requester",
        .dataTypeSpecific.className = GPBStringifySymbol(AraId),
        .number = SOW_FieldNumber_Requester,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SOW__storage_, requester),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = SOW_FieldNumber_Data_p,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(SOW__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SOW class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SOW__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Quote

@implementation Quote

@dynamic nonce;
@dynamic perUnitCost;
@dynamic hasSow, sow;
@dynamic hasFarmer, farmer;

typedef struct Quote__storage_ {
  uint32_t _has_storage_[1];
  NSData *nonce;
  SOW *sow;
  AraId *farmer;
  int64_t perUnitCost;
} Quote__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nonce",
        .dataTypeSpecific.className = NULL,
        .number = Quote_FieldNumber_Nonce,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Quote__storage_, nonce),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "perUnitCost",
        .dataTypeSpecific.className = NULL,
        .number = Quote_FieldNumber_PerUnitCost,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Quote__storage_, perUnitCost),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "sow",
        .dataTypeSpecific.className = GPBStringifySymbol(SOW),
        .number = Quote_FieldNumber_Sow,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Quote__storage_, sow),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "farmer",
        .dataTypeSpecific.className = GPBStringifySymbol(AraId),
        .number = Quote_FieldNumber_Farmer,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Quote__storage_, farmer),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Quote class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Quote__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Agreement

@implementation Agreement

@dynamic nonce;
@dynamic hasQuote, quote;
@dynamic hasRequesterSignature, requesterSignature;
@dynamic hasFarmerSignature, farmerSignature;
@dynamic data_p;

typedef struct Agreement__storage_ {
  uint32_t _has_storage_[1];
  NSData *nonce;
  Quote *quote;
  Signature *requesterSignature;
  Signature *farmerSignature;
  NSData *data_p;
} Agreement__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nonce",
        .dataTypeSpecific.className = NULL,
        .number = Agreement_FieldNumber_Nonce,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Agreement__storage_, nonce),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "quote",
        .dataTypeSpecific.className = GPBStringifySymbol(Quote),
        .number = Agreement_FieldNumber_Quote,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Agreement__storage_, quote),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "requesterSignature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Agreement_FieldNumber_RequesterSignature,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Agreement__storage_, requesterSignature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "farmerSignature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Agreement_FieldNumber_FarmerSignature,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Agreement__storage_, farmerSignature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = Agreement_FieldNumber_Data_p,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Agreement__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Agreement class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Agreement__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Reward

@implementation Reward

@dynamic nonce;
@dynamic hasAgreement, agreement;
@dynamic amount;
@dynamic hasRequesterSignature, requesterSignature;
@dynamic data_p;

typedef struct Reward__storage_ {
  uint32_t _has_storage_[1];
  NSData *nonce;
  Agreement *agreement;
  Signature *requesterSignature;
  NSData *data_p;
  int64_t amount;
} Reward__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nonce",
        .dataTypeSpecific.className = NULL,
        .number = Reward_FieldNumber_Nonce,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Reward__storage_, nonce),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "agreement",
        .dataTypeSpecific.className = GPBStringifySymbol(Agreement),
        .number = Reward_FieldNumber_Agreement,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Reward__storage_, agreement),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "amount",
        .dataTypeSpecific.className = NULL,
        .number = Reward_FieldNumber_Amount,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Reward__storage_, amount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "requesterSignature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Reward_FieldNumber_RequesterSignature,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Reward__storage_, requesterSignature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = Reward_FieldNumber_Data_p,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Reward__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Reward class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Reward__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Receipt

@implementation Receipt

@dynamic nonce;
@dynamic hasReward, reward;
@dynamic hasFarmerSignature, farmerSignature;

typedef struct Receipt__storage_ {
  uint32_t _has_storage_[1];
  NSData *nonce;
  Reward *reward;
  Signature *farmerSignature;
} Receipt__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nonce",
        .dataTypeSpecific.className = NULL,
        .number = Receipt_FieldNumber_Nonce,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Receipt__storage_, nonce),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "reward",
        .dataTypeSpecific.className = GPBStringifySymbol(Reward),
        .number = Receipt_FieldNumber_Reward,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Receipt__storage_, reward),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "farmerSignature",
        .dataTypeSpecific.className = GPBStringifySymbol(Signature),
        .number = Receipt_FieldNumber_FarmerSignature,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Receipt__storage_, farmerSignature),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Receipt class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Receipt__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Signature

@implementation Signature

@dynamic hasAraId, araId;
@dynamic data_p;

typedef struct Signature__storage_ {
  uint32_t _has_storage_[1];
  AraId *araId;
  NSData *data_p;
} Signature__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "araId",
        .dataTypeSpecific.className = GPBStringifySymbol(AraId),
        .number = Signature_FieldNumber_AraId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Signature__storage_, araId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = Signature_FieldNumber_Data_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Signature__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Signature class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Signature__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AraId

@implementation AraId

@dynamic did;

typedef struct AraId__storage_ {
  uint32_t _has_storage_[1];
  NSString *did;
} AraId__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "did",
        .dataTypeSpecific.className = NULL,
        .number = AraId_FieldNumber_Did,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AraId__storage_, did),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AraId class]
                                     rootClass:[MessagesRoot class]
                                          file:MessagesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AraId__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
