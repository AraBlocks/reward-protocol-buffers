<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: messages.proto

namespace Messages;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * An ARAid
 *
 * Generated from protobuf message <code>messages.AraId</code>
 */
class AraId extends \Google\Protobuf\Internal\Message
{
    /**
     * Generated from protobuf field <code>string did = 1;</code>
     */
    private $did = '';

    public function __construct() {
        \GPBMetadata\Messages::initOnce();
        parent::__construct();
    }

    /**
     * Generated from protobuf field <code>string did = 1;</code>
     * @return string
     */
    public function getDid()
    {
        return $this->did;
    }

    /**
     * Generated from protobuf field <code>string did = 1;</code>
     * @param string $var
     * @return $this
     */
    public function setDid($var)
    {
        GPBUtil::checkString($var, True);
        $this->did = $var;

        return $this;
    }

}
