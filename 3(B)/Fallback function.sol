pragma solidity ^0.8.18;
// SPDX-License-Identifier: MIT
//Fallback function:
//View function:
contract ViewFunction{
    uint public x;

    receive() external payable {
        x = 1;
    }
} 
contract Sink {
    fallback() external payable{}
}

contract Caller {
    function callTest(ViewFunction viewContract) public returns (bool) {
        (bool success, ) = address(viewContract).call(abi.encodeWithSignature("nonExistingFunction"));
        require(success);
        // viewContract.x is now 1
        address payable viewPayable = payable(address(viewContract));
        // Sending ether to ViewFunction contract,
        // the transfer will fail, i.e. this returns false here.
        return (viewPayable.send(2 ether));
    }

    function callSink(Sink sink) public returns (bool) {
        address payable sinkPayable = payable(address(sink));
        return (sinkPayable.send(2 ether));
    }
}