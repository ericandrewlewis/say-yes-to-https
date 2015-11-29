---
layout: page
title: How HTTPS Works
permalink: /how-https-works/
menu_weight: 20
---

HTTPS provides these security features: **server identification**, **integrity** and **encryption**.

**Server identification** ensures that the user makes an authentic connection to the real website, and not a man-in-the-middle impersonating the website. Server identification is verified with an **TLS certificate** and **public key encryption**.

A **certificate authority** (CA) validates that an organization has ownership of a domain, and then issues an TLS certificate for the domain.

When initializing a connection over HTTPS, the server sends the client its TLS certificate. An TLS certificate contains a **digital signature** and the **web server's public key**.

The digital signature proves that a specific certificate authority created a certificate. A browser or operating system implicitly trusts certain certificate authorities, and holds a copy of the root certificate. When receiving an TLS certificate from a website, the client can confirm the certificate's authenticity by comparing the digital signature with the signer's public key.

The certificate also includes the web server's public key. If the digital signature is verified, the public key can be trusted as well. The public key is used in negotiating the encryption scheme between the client and the web server. Although attackers might be able to get an encrypted message, they can't decode it.