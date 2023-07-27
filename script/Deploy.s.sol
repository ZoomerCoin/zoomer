// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-deploy/DeployScript.sol";
import "generated/deployer/DeployerFunctions.g.sol";

contract Deployments is DeployScript {
	using DeployerFunctions for Deployer;

	function deploy() external returns (XZoomerCoin) {
		XZoomerCoin coin = deployer.deploy_XZoomerCoin("XZoomerCoin");
    coin.initialize(msg.sender, "XZoomerCoin", "ZOOMER");
    return coin;
	}
}