
use nostr_sdk::prelude::*;
use std::io;

#[derive(Debug, serde::Deserialize)]
struct DemoUser {
    private_key: String,
    username: String,
    display_name: String, 
    about: String,
    picture_url: String,
    banner_url: String,
    nip05: String,
}

#[tokio::main]
async fn main() -> Result<()> {

    let mut rdr = csv::Reader::from_reader(io::stdin());

    for result in rdr.deserialize() {
       let record: DemoUser = result?;

        let my_keys = Keys::from_sk_str(&record.private_key)?;
        let opts = Options::new().wait_for_send(true);

        let client = Client::new_with_opts(&my_keys, opts);
        client.add_relay("wss://relay.rip", None).await?;
        client.connect().await;
    
        let metadata = Metadata::new()
            .name(&record.username)
            .display_name(record.display_name)
            .about(record.about)
            .picture(Url::parse(&record.picture_url)?)
            .banner(Url::parse(&record.banner_url)?)
            .nip05(record.nip05);
    
        // Update metadata
        let event_id = client.set_metadata(metadata).await?;

        println!("Setting metadata for name: {}; bech32: {}; hex: {}; event: {}", record.username, my_keys.public_key().to_bech32().unwrap(), my_keys.public_key(), event_id);
    }  

    Ok(())
}