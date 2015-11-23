---
layout: page
title: How HTTPS Works
permalink: /how-https-works/
---

HTTPS provides certain security features: **server identification** and **encryption**.

**Server identification** ensures that the user is connecting to the real website, and not a man-in-the-middle impersonating the website. Server identification is verified with an **SSL certificate**.

A **certificate authority** (CA) validates domain ownership and issues SSL certificates.

When a user first connects to a website over HTTPS, the server returns an SSL certificate. A certificate includes two important pieces of information: a **digital signature** and the **web server's public key**.

The digital signature (along with the certificate chain) proves the CA created the certificate, which means the certificate can be trusted. [Learn how a digital signature works](about-public-key-cryptography.md#digital-signature).

The certificate also includes the web server's public key. If the digital signature is verified, the public key can be trusted as well. The public key is used in encrypting data between the user and the web server. Although attackers might be able to get an encrypted message, they can't decode it. [Learn how public key cryptography works](https://github.com/ericandrewlewis/https-http2-and-wordpress/blob/master/about-public-key-cryptography.md#encrypting-plaintext).