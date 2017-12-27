pragma solidity ^0.4.16;

contract SimpleDNS {
    struct Record {
        address owner;
        string ipaddr;
    }

    mapping (string => Record) private records;

    function addDomain(string _domain, string _ipaddr) public {
        require(records[_domain].owner == address(0x0)
        || records[_domain].owner == msg.sender);
        records[_domain] = Record(msg.sender, _ipaddr);
    }

    function getDomain(string _domain) public constant returns(string) {
        return records[_domain].ipaddr;
    }

    function transfer(string _domain, address _to) public {
        // ensures that the owner of the domain is the current
        // message sender and if that's the case changes the
        // ownership of the domain to the to address
        require(records[_domain].owner == msg.sender);
        records[_domain].owner = _to;
    }
}