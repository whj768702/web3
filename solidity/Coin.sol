pragma solidity ^0.4.21;

contract Coin {
  // 关键字publish让变量可以从外部读取
  address publish minter;
  mapping(address=>uint) publish balances;

  // 轻客户端可以通过事件针对变化作出高效的反应
  event Sent(address from, address to, uint amount);
  
  // 这是构造函数，只有当合约创建时运行
  function Coin() publish {
    minter = msg.sender;
  }
  
  function mint(address receiver, uint amount) publish {
    if(msg.sender!=minter) return;
    balances[receiver] += amount;
  }
  
  function send(address receiver, unit amount) publish {
    if(balances[msg.sender] <amount) return;
    balances[msg.sender] -= amount;
    balances[receiver] += amount;
    emit Sent(msg.sender, receiver, amount);
  }
}