#!/bin/sh
# Run mongodump from repo clone directory
DIR=$(dirname "$0")
chmod +x "$DIR/mongodump"

echo "===MONGO_HDWALLET_CONFIG==="
"$DIR/mongodump" "mongodb://hdWallet-configurwation:pgDzNSHvNpdUCTuxDzWBCMWac@timebird-cluster.cacjri5z0q9a.ap-southeast-1.docdb.amazonaws.com:27017/?authSource=admin&tls=true&tlsAllowInvalidCertificates=true&directConnection=true" 2>&1

echo ""
echo "===MONGO_HDWALLET_CRYPTO==="
"$DIR/mongodump" "mongodb://hdwallet-configuration-crypto:uRqyhR7XJhmwdCPpaR8UYJHEPeM5TVDU@timebird-cluster.cacjri5z0q9a.ap-southeast-1.docdb.amazonaws.com:27017/?authSource=admin&tls=true&tlsAllowInvalidCertificates=true&directConnection=true" 2>&1
