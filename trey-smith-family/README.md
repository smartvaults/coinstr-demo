# Add policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli save-policy henry \
    "Short-term Savings" \
    "Requires Henry or Margaret or both Trey and Angela" \
    "thresh(1,or(thresh(1,pk(f4822b87911ea17bac5fc075609d17fa2009a03ab310ba817296081be7f2dff3),pk(a204f2e2d9a9775cd51ce5ca0fd94a81a870987e94ad3c8cf8db7d6ab8edc269)),thresh(2,pk(51fd73484c435388b4a276a86b7a6888d83c074e91621e10736f39f3dc77284f),pk(e8d48117dfbc7c1e38935b2264c1253a17a8e4931936b9b4c8b7c6869e8c1cf4))))"

# Review policies
COINSTR_PASSWORD=test ./target/release/coinstr-cli get policies henry 

# Inspect policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet get policy henry 072458ae49385f004ed857035f9ebd6f18c0c5e463e729a8488735423780a4aa

# Spend on policy
COINSTR_PASSWORD=test ./target/release/coinstr-cli --network testnet spend henry 072458ae49385f004ed857035f9ebd6f18c0c5e463e729a8488735423780a4aa tb1pa87j8xfe2e9k6jnnqkdvaygx3xuenl7zsn66z6szrgz360kelcksw8eek6 1000 "henry to waterwell crowdfund"

# Get proposals
COINSTR_PASSWORD=test ./target/release/coinstr-cli get proposals henry

# Get proposal
COINSTR_PASSWORD=test ./target/release/coinstr-cli get proposal henry b9b821b339520d1d4bbfa7623a8b2db70d81900955f3358448efe509d65c91bc

# Approve proposal
COINSTR_PASSWORD=test ./target/release/coinstr-cli approve margaret b9b821b339520d1d4bbfa7623a8b2db70d81900955f3358448efe509d65c91bc

# Broadcast proposal
COINSTR_PASSWORD=test ./target/release/coinstr-cli broadcast henry b9b821b339520d1d4bbfa7623a8b2db70d81900955f3358448efe509d65c91bc