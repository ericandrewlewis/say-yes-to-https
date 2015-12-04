---
layout: page
title: How HTTPS Works
permalink: /how-https-works/
menu_weight: 20
---

HTTPS provides three security features: **server identification**, **data integrity** and **encryption**.

**Server identification** ensures that a user only connects to a website if it can prove to be the one it claims. This means a man-in-the-middle attacker cannot impersonate the website. Server identification is verified with a **certificate** and **public key encryption**.

A **certificate authority** (CA) validates that an organization has ownership of a domain, and then issues a certificate for the domain.

When a client initiates a connection to an HTTPS server, the server responds with its certificate. A certificate contains a **digital signature** of the issuing CA and the **web server's public key**.

The digital signature proves that a specific certificate authority created a certificate. A browser or operating system implicitly trusts certain certificate authorities, and holds a copy of their respective root certificates. When receiving a certificate from a website, the client can verify the certificate's authenticity by checking the digital signature with the signer's public key.

The certificate also includes the web server's public key. If the digital signature is verified, the public key can be trusted as well. The public key is used in negotiating the encryption scheme between the client and the web server. Although attackers might be able to get an encrypted message, they can't decode it.

HTTPS messages include a **data integrity** check to ensure the message sent is the message received, unaltered in transit.