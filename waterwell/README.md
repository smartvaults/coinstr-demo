# Add policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli save-policy lee \
    "Crowdfunding Policy" \
    "Requires 3 out of 5 of the selected Waterwell board members" \
    "thresh(1,pk(101e7953a54b18d0f41ea199b9adf2d7e643441b5af8e539531e6d7275cee1df),pk(41be80424dfb9b33d66ea4f5369cc6b10afaa1b0b167ad7b8112fd6848faa32e),pk(5d1d3ce637247af69c09f46cd0d7312befc40891646efe74764bd7d426841f7b),pk(c04e8da91853b7fd215102e6aa48477d8e1ba6b3c16902371a153d3784a1b0f7),pk(ea527e059759d368a55253270454e58e9d6e4fe2e98d302d6e01821fa973259d))"

# Review policies
COINSTR_PASSWORD=test ./target/release/coinstr-cli get policies henry 

# Inspect policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get policy henry 072458ae49385f004ed857035f9ebd6f18c0c5e463e729a8488735423780a4aa

# Spend on policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet spend henry 072458ae49385f004ed857035f9ebd6f18c0c5e463e729a8488735423780a4aa
