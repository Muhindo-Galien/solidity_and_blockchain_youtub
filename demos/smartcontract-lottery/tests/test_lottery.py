from brownie import Lottery, accounts, config, network
from web3 import Web3
# 0.015
# 150000000000000000

def test_get_entrance_fee():
    account = accounts[0]
    lottery = Lottery.deploy(config["networks"][network.show_active()]["eth_usd_price_feed"],{"from": account})
    
    # assert 2>1
    assert lottery.getEntranceFee() >  Web3.toWei(0.013, "ether")
    assert lottery.getEntranceFee() <  Web3.toWei(0.022, "ether")