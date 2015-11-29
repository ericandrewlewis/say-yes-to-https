---
layout: page
title: How HTTPS Works
permalink: /how-https-works/
menu_weight: 20
---

Given a correct setup with current software in use by all participants HTTPS provides these security features: **authenticity** via server identification, **data integrity** via checksums and **privacy** via encryption.

**Server identification** ensures that the user only connects to the website if it can prove to be the one it claims. A man-in-the-middle impersonating the website will be detected. Server identification is verified with a **TLS certificate** and **public key encryption**.

A **certificate authority** (CA) issues TLS certificates for hostnames, usually in exchange for money. 

When a client initiates a connection to an HTTPS server, the server responds with its TLS certificate. A TLS certificate contains a **digital signature** of the issuing CA and the **web server's public key**.

The digital signature proves that a specific certificate authority created a certificate. A browser or operating system implicitly trusts certain certificate authorities, and holds a copy of their respecting root certificates. When receiving a TLS certificate from a website, the client can verify the certificate's authenticity by checking the digital signature with the signer's public key.

The certificate also includes the web server's public key. When the digital signature is correctly verified, the public key can be trusted as well. The public key is used in negotiating the encryption scheme between the client and the web server. Although attackers might be able to get an encrypted message, they can't decode it.

**Data integrity** maintains consistency of the data sent and received. This makes manipulation of the encrypted data in transit detectable.