pragma solidity ^0.4.16;

import "truffle/Assert.sol";
import "../contracts/SimpleDNS.sol";

contract TestSimpleDNS {
    function testSimpleDomain() public {
        SimpleDNS dns = new SimpleDNS("hello");

        dns.addDomain("hello.com", "127.0.0.1");
        Assert.equal(uint256(dns.getSize()), 1, "Expected increase in size");

        dns.addDomain("world.com", "127.0.0.1");
        Assert.equal(uint256(dns.getSize()), 2, "Expected increase in size");

        dns.addDomain("hello.com", "192.168.0.1");
        Assert.equal(uint256(dns.getSize()), 2, "Did not expect increase in size");

        Assert.equal(dns.getDomain("hello.com"), "192.168.0.1", "Expected 192.168.0.1 as the address");
    }
}
