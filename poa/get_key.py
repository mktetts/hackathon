from web3.auto import w3
import binascii
with open("/home/mktetts/Desktop/hackathon/poa/node1/keystore/UTC--2023-09-24T01-20-21.073782995Z--c4ddf46048d3d4a892bc861a3324596da1d3c567") as keyfile:
    encrypted_key = keyfile.read()
    private_key = w3.eth.account.decrypt(encrypted_key, 
                                             '12345')

print(binascii.b2a_hex(private_key))