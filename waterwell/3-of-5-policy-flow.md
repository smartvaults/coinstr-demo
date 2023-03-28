# 3 of 5 policy
## Add 3 of 5 policy
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli save-policy lee \
    "Crowdfunding Policy" \
    "Requires 3 out of 5 of the selected Waterwell board members" \
    "thresh(3,pk(c04e8da91853b7fd215102e6aa48477d8e1ba6b3c16902371a153d3784a1b0f7),pk(ea527e059759d368a55253270454e58e9d6e4fe2e98d302d6e01821fa973259d),pk(5d1d3ce637247af69c09f46cd0d7312befc40891646efe74764bd7d426841f7b),pk(101e7953a54b18d0f41ea199b9adf2d7e643441b5af8e539531e6d7275cee1df),pk(41be80424dfb9b33d66ea4f5369cc6b10afaa1b0b167ad7b8112fd6848faa32e))"
```

## Get policies
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli get policies lee 
```

## Get policy
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get policy lee b3074024415e7a1495025ecb113f663d3759fe46dbda8f2e46ed264ae6bae6ea
```

## Spend on policy
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet spend lee  86ec85ad912675a69b984a77624de4f58bd8aba0e0baa2848da763410445d711 tb1pmjdn3wtyfuftmancsv7jpfaqna8qlv9vk7lvn289qgpmnt98vamsfzlmel 1000 "send to 2 of 2 policy"
```

## Get proposals
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli get proposals lee 
```

## Get proposal
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli get proposal lee 916d9195363ec53d617dfcadac0db23ae380f8d8fc88c441e6a91e44ec4d1d30
```

## Approve proposal
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli approve lee 916d9195363ec53d617dfcadac0db23ae380f8d8fc88c441e6a91e44ec4d1d30
```
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli approve sarah 916d9195363ec53d617dfcadac0db23ae380f8d8fc88c441e6a91e44ec4d1d30
```

## Broadcast proposal
```
 COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet broadcast lee 916d9195363ec53d617dfcadac0db23ae380f8d8fc88c441e6a91e44ec4d1d30
```

