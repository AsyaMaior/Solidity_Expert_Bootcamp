## Completed assembly exercises supplemented by tests

1. [Intro](./src/Intro.sol)

Stack variables are instantiated with `let variable_name := VALßUE`

Instantiate a stack variable that holds the value of `mol`

To return it needs to be stored in memory with command `mstore(MEMORY_LOCATION, STACK_VARIABLE)`

To return you need to specify address and the size from the starting point

2. [Add](./src/Add.sol)

Intermediate variables can't communicate between  assembly blocks, but they can be written to memory in one block and retrieved in another.

Fix this code using memory to store the result between the blocks and return the result from the second block

3. [SubOverflow](./src/SubOverflow.sol)

Modify this function so that on overflow it returns the value 0, otherwise it should return x - y

4. [Scope](./src/Scope.sol)

Modify state of the `count` variable from within the assembly segment

---

See Yul functions in [latest documentation](https://docs.soliditylang.org/en/latest/yul.html#evm-dialect)