pragma solidity ^0.4.21;

contract LoggerContract{
    
    mapping(address => mapping(uint => string)) private transactions;
    mapping(address => uint) private count;
    
    event LogEvent(
       address sender,
       string values,
       uint logdate
    );
    
    function Log(string _log, uint _logdate) public returns(address){
        emit LogEvent(msg.sender, _log ,_logdate);
    }
    
    function LogTransactions(string _thash) public {
        count[msg.sender]++;
        transactions[msg.sender][count[msg.sender]] = _thash;
       
    }
    
    function GetTransactions(uint _count) public view returns(string){
        return transactions[msg.sender][_count];
    }
    
     function GetCount() public view returns(uint){
        return count[msg.sender];
    }
    
    
}