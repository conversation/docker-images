FROM theconversation/node AS ci

# Install the SFDX CLI client for SalesForce
RUN npm install --global sfdx-cli@6.37.0

# Install openssl for decrypting JWT auth keys
RUN apk add --no-cache openssl
