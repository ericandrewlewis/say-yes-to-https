---
layout: page
title: What is HTTPS?
permalink: /what-is-https/
---

HTTP is the original protocol for transferring data across the internet.

When a user visits a website, their browser sends an HTTP request to the site's server. The server returns the page's content in an HTTP response.

## HTTP is insecure

Over HTTP, a browser sends data in plain text, unencrypted, through the internet to a web server, without authenticating the server's identity. This opens the user to various methods of attack.

* An attacker can eavesdrop on communication between a user and the websites they visit. The attacker can construct a profile of the user based on this metadata.
* Any personal information (login credentials, personal data submitted in forms) shared over HTTP can be stolen by an attacker.
* An attacker can perform a [man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) and impersonate a website, altering a webpage's contents.

## HTTPS is a secure version of HTTP

HTTPS adds encryption and server identification on top of HTTP's data transfer model.

Learn more about how HTTPS works, or how to setup HTTPS.