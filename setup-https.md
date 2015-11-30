---
layout: page
title: HTTPS Setup Guide
permalink: /how-to-setup-https/
menu_weight: 40
---

To configure a website to serve HTTPS, you will need to modify the web server's configuration. If you don't have access to the configuration, ask your hosting provider how to set up HTTPS.

## Decide on SNI support

Sever Name Indication (SNI) allows a client to connect to different sites hosted on a single IP address. Most web hosts only work with SNI by default, so supporting older clients that don't support SNI (e.g. Internet Explorer on Windows XP) is an extra configuration step. [Learn more about SNI](https://https.cio.gov/sni/), and decide whether or not to support these clients.

## Get an SSL certificate and private key

A web server needs a private key and an SSL certificate (which includes a public key) to serve HTTPS.

An SSL certificate should be acquired from a trusted certificate authority.

[SSLMate](https://sslmate.com/) is a nice command-line tool to purchase certificates.

[Let's Encrypt](https://letsencrypt.org) is a new free certificate authority. Public beta opens in December 2015.

## Serve HTTP and HTTPS

Configure your site to serve both HTTP and HTTPS traffic. Although HTTP is insecure, clients may look for your website over this protocol, e.g. a user typing in `http://yoursite.com` into their browser. We'll take steps to make sure these requests are upgraded to the secure version, but we don't want to break browsing experiences by not serving HTTP at all.

Mozilla has an [HTTPS configuration generator](https://mozilla.github.io/server-side-tls/ssl-config-generator/) which produces boilerplate for adding HTTPS to various web servers.

## Transition content

If you're migrating a site that was previously serving over HTTP, you probably have a lot of embedded content (images, javascript files, stylesheets). References to this content may be hardcoded in a file or in a database, e.g. `Here's a picture from our 2006 trip to Joshua Tree! <img src="http://example.com/image.jpg">`

Change these references to load over `https`. The secure version is always preferred, and [the protocol relative URL is an anti-pattern](https://www.paulirish.com/2010/the-protocol-relative-url/).

## Force users to connect over HTTPS

HTTP Strict Transport Security (HSTS) is a mechanism to force users to connect to a site over HTTPS, and avoid security downgrade attacks. [Read more about HSTS and how to implement it](https://https.cio.gov/hsts/).

## Add 301 redirects from HTTP to HTTPS

Older clients don't support HSTS, so always 301 redirect HTTP requests to the HTTPS version. See configuration examples for [NGINX](https://serverfault.com/questions/67316/in-nginx-how-can-i-rewrite-all-http-requests-to-https-while-maintaining-sub-dom/337893#337893) and [Apache](https://www.sslshopper.com/apache-redirect-http-to-https.html).

## Verify latest server packages

The web server's system kernel and openssl packages should be updated to the latest for performance optimizations.

## Test your HTTPS

SSL Labs offers [a free SSL report](https://www.ssllabs.com/ssltest/), which will grade your HTTPS implementation.
