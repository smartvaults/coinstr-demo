# Create Profiles
```
cargo run < waterwell/profiles.csv
cargo run < trey-smith-family/profiles.csv

```
# Set Contact Lists
```
./waterwell/publish-contact-lists.sh
./trey-smith-family/publish-contact-lists.sh
```

# Setup Environment (both)
```
./populate-demo-data.sh
```

# Add policy
./target/release/coinstr-cli save-policy rasputin \
    "Mid-range Savings" \
    "Requires joint approval with spouse with backups with children and grandchildren" \
    "or(and(pk(ec8dc2fca9810a3715ad5ee74e68c29de474c520eceef4d2591abb2c664a9be3),pk(a204f2e2d9a9775cd51ce5ca0fd94a81a870987e94ad3c8cf8db7d6ab8edc269)),thresh(1,thresh(1,pk(ec8dc2fca9810a3715ad5ee74e68c29de474c520eceef4d2591abb2c664a9be3),pk(a204f2e2d9a9775cd51ce5ca0fd94a81a870987e94ad3c8cf8db7d6ab8edc269)),thresh(2,pk(3be424aa1310fc493b743957f7e8589a70ecae9ac583ee796ea967c80688dbcb),pk(51fd73484c435388b4a276a86b7a6888d83c074e91621e10736f39f3dc77284f),older(4320)))and(thresh(2,pk(b62ee1c4ce0679dc35a20a4afd7fb1346213ac11377ec055c025ca342ccd5daa),pk(559a86045c76939bea8485b9450e1a29f49c75ee9684061c4b92de98d4e0e438),pk(e4b12ba0893584422b1e205441bd962b79e6228a1e2d2fc112c4efbc82234964)),older(518400)))"


# Add policy
./target/release/coinstr-cli save-policy lee \
    "3 of 5 board member initial adopters" \
    "Requires 3 of 5 board members" \
    "thresh(3,pk(0dd81025a7b83c6f432b7afe1591417a4074b2e64b9824990a4f5709eb566320),pk(101e7953a54b18d0f41ea199b9adf2d7e643441b5af8e539531e6d7275cee1df),pk(41be80424dfb9b33d66ea4f5369cc6b10afaa1b0b167ad7b8112fd6848faa32e),pk(51fd73484c435388b4a276a86b7a6888d83c074e91621e10736f39f3dc77284f),pk(ea527e059759d368a55253270454e58e9d6e4fe2e98d302d6e01821fa973259d))"

