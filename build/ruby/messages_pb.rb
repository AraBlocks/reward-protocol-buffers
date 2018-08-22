# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "messages.SOW" do
    optional :nonce, :bytes, 1
    optional :work_unit, :string, 2
    optional :requester, :message, 3, "messages.AraId"
    optional :data, :bytes, 4
  end
  add_message "messages.Quote" do
    optional :nonce, :bytes, 1
    optional :per_unit_cost, :int64, 2
    optional :sow, :message, 3, "messages.SOW"
    optional :farmer, :message, 4, "messages.AraId"
  end
  add_message "messages.Agreement" do
    optional :nonce, :bytes, 1
    optional :quote, :message, 2, "messages.Quote"
    optional :requester_signature, :message, 3, "messages.Signature"
    optional :farmer_signature, :message, 4, "messages.Signature"
    optional :data, :bytes, 5
  end
  add_message "messages.Reward" do
    optional :nonce, :bytes, 1
    optional :agreement, :message, 2, "messages.Agreement"
    optional :amount, :int64, 3
    optional :requester_signature, :message, 4, "messages.Signature"
    optional :data, :bytes, 5
  end
  add_message "messages.Receipt" do
    optional :nonce, :bytes, 1
    optional :reward, :message, 2, "messages.Reward"
    optional :farmer_signature, :message, 3, "messages.Signature"
  end
  add_message "messages.Signature" do
    optional :ara_id, :message, 1, "messages.AraId"
    optional :data, :bytes, 2
  end
  add_message "messages.AraId" do
    optional :did, :string, 1
  end
end

module Messages
  SOW = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.SOW").msgclass
  Quote = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.Quote").msgclass
  Agreement = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.Agreement").msgclass
  Reward = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.Reward").msgclass
  Receipt = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.Receipt").msgclass
  Signature = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.Signature").msgclass
  AraId = Google::Protobuf::DescriptorPool.generated_pool.lookup("messages.AraId").msgclass
end