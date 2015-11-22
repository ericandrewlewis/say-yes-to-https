---
layout: page
title: What is HTTPS?
permalink: /what-is-https/
---

HTTP is the protocol for transferring data on the internet. When requesting a webpage, a browser sends an HTTP request to a web server, and the web server returns the content in an HTTP response.

## HTTP is insecure.

A browser sends data **unencrypted** (in plaintext) through the internet to a web server over HTTP, **without authenticating** the server's identity. This makes users vulnerable to attack.

Users browsing websites over HTTP on an insecure wireless network are vulnerable. An attacker can eavesdrop on all communication between the user and the internet, allowing the attacker to collect metadata about the user's online behavior.

If a user logs into a website over HTTP, an attacker eavesdropping on the communication can steal the user's login credentials.

Since HTTP lacks server authentication, an attacker performing a [man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) can act as a website (e.g. your bank), interacting with a user to steal their personal information.

HTTPS is a secure version of HTTP that addresses these security problems, adding **encryption** and **server identification** to the HTTP data transfer model.

## What is HTTPS not?

HTTPS provides security of **server identification** and **encryption** for data transfer. It **does not** make your website immune to other security vulnerabilities. If a website allows user login, a hacker can still attempt to crack user accounts with a brute force attack, over HTTP or HTTPS.

## Why setup HTTPS?

HTTPS is the way forward for the web. Various organizations have decided that privacy by default is the future, and will actively work towards that goal.

* SEO. [Google uses HTTPS as a ranking signal](http://googlewebmastercentral.blogspot.com/2014/08/https-as-ranking-signal.html).
* Speed. HTTP/2 can deliver your website to browsers quicker. HTTP/2 can only be used with HTTPS.
* Data encryption security. Middle-men attackers cannot listen to conversations.
* Server identification. Middle-men attackers cannot pretend to be the server we want to communicate with.
* New browser features are limited to HTTPS sites. Browsers will soon deprecate features for HTTP sites ([1](https://blog.mozilla.org/security/2015/04/30/deprecating-non-secure-http/), [2](https://www.chromium.org/Home/chromium-security/marking-http-as-non-secure)).