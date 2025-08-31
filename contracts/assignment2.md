# SimpleWallet

A very simple Ethereum wallet contract. It can store ETH, take deposits from anyone, and only the owner (the deployer) can send money out.

---

## Functions

* **`deposit()`**
  Anyone can call this and attach ETH. It adds funds into the wallet.

* **`sendTo(address recipient, uint amount)`**
  Lets the owner send ETH from the contract to another wallet or even another contract.

  * Safe checks: only the owner can call it, and it won’t let you send more than what’s inside.

* **`getBalance()`**
  Shows how much ETH is currently in the wallet. Anyone can check this.

* **`receive()`**
  Special fallback function. It triggers when someone sends ETH directly to the contract without calling a function (like using MetaMask’s “Send”).

---

## How it’s used

1. Deploy → the deployer becomes the owner.
2. Add funds → use `deposit()` or just send ETH directly.
3. Track → call `getBalance()` to see how much is inside.
4. Withdraw → the owner uses `sendTo()` to send ETH out (to themselves or others).
