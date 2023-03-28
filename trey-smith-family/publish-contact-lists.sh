export MARGARET_KEY=96c227553f3c2f66439b24d52304a642aeb98b5e243cbaf69bb0e17c673b52c4
export HENRY_KEY=5bf8e0330ea98c6e10e66f54ffa49c309a3b8cd0b3362f93f39bef73f545c6fd
export ANGELA_KEY=4e518d576d2b676d64f2c6607e3d0006ae6a02ef5c760c41c2f7636aabdf136d
export SAMANTHA_KEY=b13a44c3c958b0151cec17c90b29f9b6717b51aac608be03e08ecb18c9223e42
export RENE_KEY=23704fe68b7589878bcb961888255c124049ce3f4744a3bcb1d4a805d953af76
export SULLY_KEY=70abe1862d76c9316be70fbb82704ca1a8c38c4b68541e8dedaaa33ae24feb69
export TREY_KEY=0d9b3eff1a2b28b41128ec8bad1f60caa74b2834b3f135464d2faf0a1d6ea0ca
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $MARGARET_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $HENRY_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $ANGELA_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $SAMANTHA_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $RENE_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $SULLY_KEY publish-contact-list-csv -f trey-smith-family/contact-list.csv
~/github.com/0xtrr/nostr-tool/target/release/nostr-tool -r wss://relay.rip --private-key $TREY_KEY publish-contact-list-csv -f trey-smith-family/trey-contact-list.csv

