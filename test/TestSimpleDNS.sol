pragma solidity ^0.4.16;

import "truffle/Assert.sol";
import "../contracts/SimpleDNS.sol";

contract TestSimpleDNS {
    function testSimpleDomain() public {
        SimpleDNS dns = new SimpleDNS();
        dns.addDomain("hello.com", "127.0.0.1");
        Assert.equals(dns.getDomain("hello.com"), "127.0.0.1", "hello.com should be 127.0.0.1");
    }
}
