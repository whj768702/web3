pragma solidity ^0.4.21;

contract Coin {
    // 关键字public让变量可以从外部读取
    address public minter;
    mapping(address => uint256) public balances;

    // 轻客户端可以通过事件针对变化作出高效的反应
    event Sent(address from, address to, uint256 amount);

    // 这是构造函数，只有当合约创建时运行
    function Coin() public {
        minter = msg.sender;
    }

    function mint(address receiver, uint256 amount) public {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
    }

    function send(address receiver, unit amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
