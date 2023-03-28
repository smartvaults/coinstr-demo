# 2 of 2 Policy
## Add 2 of 2 policy
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli save-policy lee \
    "Simple Short term Policy" \
    "Requires 2 of 2 Lee and Sarah" \
"thresh(2,pk(c04e8da91853b7fd215102e6aa48477d8e1ba6b3c16902371a153d3784a1b0f7),pk(ea527e059759d368a55253270454e58e9d6e4fe2e98d302d6e01821fa973259d))"
```

## Get policies
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli get policies lee 
```

## Get policy
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get policy lee d5c9a1934245a5076dd8eda548e36ba3a42559d08d5393d304cd41b211e518c6
```

## Get proposals
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get proposals lee 
```

## Propose spend
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet spend lee d5c9a1934245a5076dd8eda548e36ba3a42559d08d5393d304cd41b211e518c6 tb1plu6ut9gctyzgpedctfe87pejtxvhexshtkqyv7anfhdxk2djeq3qkw4ruk 1000 "send to 3 of 5 policy"
```

## Get proposal
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get proposals lee 
```

## Approve proposal (Lee)
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet approve lee dd7cd8af5fd901dde87e6a046cc3c8df292dce817bd27e1e1d987f32bbadad8d
```

## Approve proposal (Sarah)
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet approve sarah dd7cd8af5fd901dde87e6a046cc3c8df292dce817bd27e1e1d987f32bbadad8d
```

## Broadcast proposal (Lee)
```
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet broadcast lee dd7cd8af5fd901dde87e6a046cc3c8df292dce817bd27e1e1d987f32bbadad8d
```


