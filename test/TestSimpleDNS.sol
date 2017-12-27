pragma solidity ^0.4.16;

import "truffle/Assert.sol";
import "../contracts/SimpleDNS.sol";

contract TestSimpleDNS {
    function testSimpleDomain() public {
        SimpleDNS dns = new SimpleDNS();
        dns.addDomain("hello.com", "127.0.0.1");
        string value = dns.getDomain("hello.com");
        //Assert.equal("127.0.0.1", "127.0.0.1", "hello.com should be 127.0.0.1");
      //  Assert.equal(value, "hello.com", "The world as we know it has ended!");
    }
}
