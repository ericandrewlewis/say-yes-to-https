---
layout: page
title: HTTPS Setup Guide
permalink: /how-to-setup-https/
menu_weight: 40
---

To configure a website to serve HTTPS, you will need to modify the web server's configuration. If you don't have access to the configuration, ask your hosting provider how to set up HTTPS.

## SNI support

[Sever Name Indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication) is a TLS extension which allows multiple certificates for the same IP address. Older clients (e.g. Internet Explorer on Windows XP) do not support SNI.

Decide whether or not to require SNI, based on client support requirements and the cost of a static IP.

## Get an SSL certificate and private key

A web server needs a private key and an SSL certificate (which includes a public key) to serve HTTPS.

An SSL certificate should be acquired from a trusted certificate authority.

[SSLMate](https://sslmate.com/) is a nice command-line tool to purchase certificates.

[Let's Encrypt](https://letsencrypt.org) is a new free certificate authority. Public beta opens in December 2015.

## Serve HTTP and HTTPS

Configure your site to serve both HTTP and HTTPS traffic.

Mozilla has an [HTTPS configuration generator](https://mozilla.github.io/server-side-tls/ssl-config-generator/) which produces boilerplate for adding HTTPS to various web servers.

## Transition content

If you're migrating a site that was previously serving over HTTP, you probably have a lot of embedded content (images, javascript files, stylesheets). References to this content may be hardcoded in a file or in a database, e.g. `Here's a piceture from our 2006 trip to Joshua Tree! <img src="http://example.com/image.jpg">`

Change these references to load over `https`. The secure version is always preferred, and [the protocol relative URL is an anti-pattern](http://www.paulirish.com/2010/the-protocol-relative-url/).

## Force users to connect over HTTPS

HTTP Strict Transport Security (HSTS) is a mechanism to force users to connect to a site over HTTPS, and avoid security downgrade attacks. [Read more about HSTS and how to implement it](https://https.cio.gov/hsts/).

## Add 301 redirects from HTTP to HTTPS

Older clients don't support HSTS, so always 301 redirect HTTP requests to the HTTPS version. See configuratione examples for [NGINX](http://serverfault.com/a/337893) and [Apache](https://www.sslshopper.com/apache-redirect-http-to-https.html).

## Verify latest server packages

The web server's system kernel and openssl packages should be updated to the latest for performance optimizations.

## Test your HTTPS

SSL Labs offers [a free SSL report](https://www.ssllabs.com/ssltest/), which will grade your HTTPS implementation.
