<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

namespace Messages;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * A statement of work for a specific task.
 *
 * Generated from protobuf message <code>messages.SOW</code>
 */
class SOW extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>bytes nonce = 1;</code>
     */
    private $nonce = '';
    /**
     * Generated from protobuf field <code>string topic = 2;</code>
     */
    private $topic = '';
    /**
     * Generated from protobuf field <code>string work_unit = 3;</code>
     */
    private $work_unit = '';
    /**
     * Generated from protobuf field <code>string currency_unit = 4;</code>
     */
    private $currency_unit = '';
    /**
     * Generated from protobuf field <code>.messages.Signature signature = 5;</code>
     */
    private $signature = null;
    /**
     * Generated from protobuf field <code>bytes data = 6;</code>
     */
    private $data = '';

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type string $nonce
     *     @type string $topic
     *     @type string $work_unit
     *     @type string $currency_unit
     *     @type \Messages\Signature $signature
     *     @type string $data
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Messages::initOnce();
        parent::__construct($data);
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
     * Generated from protobuf field <code>string topic = 2;</code>
     * @return string
     */
    public function getTopic()
    {
        return $this->topic;
    }

    /**
     * Generated from protobuf field <code>string topic = 2;</code>
     * @param string $var
     * @return $this
     */
    public function setTopic($var)
    {
        GPBUtil::checkString($var, True);
        $this->topic = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string work_unit = 3;</code>
     * @return string
     */
    public function getWorkUnit()
    {
        return $this->work_unit;
    }

    /**
     * Generated from protobuf field <code>string work_unit = 3;</code>
     * @param string $var
     * @return $this
     */
    public function setWorkUnit($var)
    {
        GPBUtil::checkString($var, True);
        $this->work_unit = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>string currency_unit = 4;</code>
     * @return string
     */
    public function getCurrencyUnit()
    {
        return $this->currency_unit;
    }

    /**
     * Generated from protobuf field <code>string currency_unit = 4;</code>
     * @param string $var
     * @return $this
     */
    public function setCurrencyUnit($var)
    {
        GPBUtil::checkString($var, True);
        $this->currency_unit = $var;

        return $this;
    }

    /**
     * Generated from protobuf field <code>.messages.Signature signature = 5;</code>
     * @return \Messages\Signature
     */
    public function getSignature()
    {
        return $this->signature;
    }

    /**
     * Generated from protobuf field <code>.messages.Signature signature = 5;</code>
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
     * Generated from protobuf field <code>bytes data = 6;</code>
     * @return string
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * Generated from protobuf field <code>bytes data = 6;</code>
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

