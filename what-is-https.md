---
layout: page
title: What is HTTPS?
permalink: /what-is-https/
menu_weight: 1
---

HTTP is the original protocol for transferring data across the internet.

When a user visits a website, their browser sends an HTTP request to the site's server. The server returns the page's content in an HTTP response.

## HTTP is insecure

Over HTTP, a browser sends data in plain text, unencrypted, through the internet to a web server, without authenticating the server's identity. This opens the user to various methods of attack.

* An attacker can eavesdrop on communication between a user and the websites they visit. The attacker can construct a profile of the user based on this metadata.
* Any personal information (login credentials, personal data submitted in forms) shared over HTTP can be stolen by an attacker.
* An attacker can perform a [man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) and impersonate a website, altering a webpage's contents.

## HTTPS is Secure HTTP

HTTPS adds **encryption** and **server identification** on top of HTTP's data transfer model.

It does not protect a website from other security vulnerabilities. If a website allows user login, a hacker can attempt to crack user accounts with a brute force attack over HTTP or HTTPS.

## And there's more...

Serving a site over HTTPS comes with extra benefits.

* SEO. [Google uses HTTPS as a ranking signal](https://googleonlinesecurity.blogspot.com/2014/08/https-as-ranking-signal_6.html).
* Speed. HTTP/2 can deliver your website to browsers quicker. HTTP/2 is only used with HTTPS.
* Data encryption security. Passive attackers cannot eavesdrop on conversations.
* Server identification. Man-in-the-middle attackers cannot impersonate a website to a user.
* [New browser features are limited to secure sites](https://www.chromium.org/Home/chromium-security/prefer-secure-origins-for-powerful-new-features) and [capabilities will be deprecated for non-secure sites](https://blog.mozilla.org/security/2015/04/30/deprecating-non-secure-http/).

Make sure to serve the _entire_ site with HTTPS, including all pages, resources, and AJAX requests. Making any plaintext HTTP connection allows an attacker to read and modify the contents of the transmission. Encrypting only sensitive transmissions instantly flags them as sensitive, making them targets.

Learn [how HTTPS works](/how-https-works/), and [setup HTTPS](/how-to-setup-https/).
