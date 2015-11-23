---
layout: page
title: HTTPS Setup Guide
permalink: /how-to-setup-https/
---

To configure a website to serve HTTPS, you will need to modify the web server's configuration. If you don't have access to the configuration, ask your hosting provider how to set up HTTPS.

## Create a private key and SSL certificate

A web server needs a private key and an SSL certificate (which includes a public key) to serve HTTPS.

[SSLMate](https://sslmate.com/) is an easy-to-use, commercial certificate authority.

[Let's Encrypt](https://letsencrypt.com) is a free certificate authority, currently in beta. Public beta opens in December 2015.

## Configure the site to serve HTTP and HTTPS

Mozilla has an [HTTPS configuration generator](https://mozilla.github.io/server-side-tls/ssl-config-generator/) which produces boilerplate for configuring various web servers for HTTPS.

Make sure to serve both HTTP and HTTPS.

## Transition content

If you're migrating a site that was previously serving over HTTP, you probably have a lot of embedded content (images, javascript files, stylesheets). References to this content may be hardcoded in a file or in a database, e.g. `Here's a piceture from our 2006 trip to Joshua Tree! <img src="http://example.com/image.jpg">`

Change these references to load over `https`. The secure version is always preferred, and [the protocol relative URL is an anti-pattern](http://www.paulirish.com/2010/the-protocol-relative-url/).

## Force users to connect over HTTPS

HTTP Strict Transport Security (HSTS) is a mechanism to force users to connect to a site over HTTPS, and avoid security downgrade attacks. [Read more about HSTS and how to implement it](https://https.cio.gov/hsts/).

## Add 301 redirects from HTTP to HTTPS

Older clients don't support HSTS, so always 301 redirect HTTP requests to the HTTPS version. See configuratione examples for [NGINX](http://serverfault.com/a/337893) and [Apache](https://www.sslshopper.com/apache-redirect-http-to-https.html).

## Verify latest server packages

The web server's system kernel and openssl packages should be updated to the latest for performance optimizations.

## Does your server need a unique IP?

If you want to avoid security warnings in some older browsers (e.g. IE 8 Windows XP and similar), you will need a unique IP for your certificate for clients that don't have [SNI support](https://en.wikipedia.org/wiki/Server_Name_Indication).

## Test your HTTPS

SSL Labs offers [a free SSL report](https://www.ssllabs.com/ssltest/), which will grade your HTTPS implementation.