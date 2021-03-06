<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

namespace Messages;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A reward for a specific agreement, sent by a verifiable peer.
 *
 * Generated from protobuf message <code>messages.Reward</code>
 */
class Reward extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>bytes nonce = 1;</code>
     */
    private $nonce = '';
    /**
     * Generated from protobuf field <code>.messages.Agreement agreement = 2;</code>
     */
    private $agreement = null;
    /**
     * Generated from protobuf field <code>string amount = 3;</code>
     */
    private $amount = '';
    /**
     * Generated from protobuf field <code>.messages.Signature signature = 4;</code>
     */
    private $signature = null;
    /**
     * Generated from protobuf field <code>bytes data = 5;</code>
     */
    private $data = '';

    public function __construct() {
        \GPBMetadata\Messages::initOnce();
        parent::__construct();
    }

    /**
     * Generated from protobuf field <code>bytes nonce = 1;</code>
     * @return string
     */
    public function getNonce()
    {
        return $this->nonce;
    }

    /**
     * Generated from protobuf field <code>bytes nonce = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setNonce($var)
    {
        GPBUtil::checkString($var, False);
        $this->nonce = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>.messages.Agreement agreement = 2;</code>
     * @return \Messages\Agreement
     */
    public function getAgreement()
    {
        return $this->agreement;
    }

    /**
     * Generated from protobuf field <code>.messages.Agreement agreement = 2;</code>
     * @param \Messages\Agreement $var
     * @return $this
     */
    public function setAgreement($var)
    {
        GPBUtil::checkMessage($var, \Messages\Agreement::class);
        $this->agreement = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string amount = 3;</code>
     * @return string
     */
    public function getAmount()
    {
        return $this->amount;
    }

    /**
     * Generated from protobuf field <code>string amount = 3;</code>
     * @param string $var
     * @return $this
     */
    public function setAmount($var)
    {
        GPBUtil::checkString($var, True);
        $this->amount = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>.messages.Signature signature = 4;</code>
     * @return \Messages\Signature
     */
    public function getSignature()
    {
        return $this->signature;
    }

    /**
     * Generated from protobuf field <code>.messages.Signature signature = 4;</code>
     * @param \Messages\Signature $var
     * @return $this
     */
    public function setSignature($var)
    {
        GPBUtil::checkMessage($var, \Messages\Signature::class);
        $this->signature = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>bytes data = 5;</code>
     * @return string
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * Generated from protobuf field <code>bytes data = 5;</code>
     * @param string $var
     * @return $this
     */
    public function setData($var)
    {
        GPBUtil::checkString($var, False);
        $this->data = $var;

        return $this;
    }

}

