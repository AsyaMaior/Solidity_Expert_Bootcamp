## Using forking to test a contract

Forking is especially useful when you need to interact with existing contracts. You may choose to do integration testing this way, as if you were on an actual network.

- Use a single fork for all your tests with the `--fork-url` flag
```bash
forge test --fork-url "PUT_THIS_PATH_TO_RPC_URL_NETWORK"
```

To use forking from a special block number put the command:
```bash
forge test --fork-url "PUT_THIS_PATH_TO_RPC_URL_NETWORK" --fork-block-number BLOCK_NUMBER
```

- Use a multiple forks with Foundry Cheatcodes

You can see an example of using Cheatcodes in the file `test/Forking.t.sol`

To run test use command:
```bash
forge test --mc ForkTest
```

You can find more information about forking in [documentation](https://book.getfoundry.sh/forge/fork-testing)