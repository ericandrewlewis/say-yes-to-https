---
layout: page
title: What is HTTPS?
permalink: /what-is-https/
---

HTTP is a protocol for transferring data on the internet.

When a user visits a website, the browser sends an HTTP request to the site's server. The server returns the page's content in an HTTP response.

## HTTP is insecure

Over HTTP, a browser sends data unencrypted through the internet to a web server over HTTP, without authenticating the server's identity. This opens the user to attack.

An attacker can eavesdrop on all communication between the user and the internet, allowing the attacker to collect metadata about the user's online behavior.

If a user logs into a website over HTTP, an attacker eavesdropping on the communication can steal the user's login credentials.

An attacker can perform a [man-in-the-middle attack](https://en.wikipedia.org/wiki/Man-in-the-middle_attack) and impersonate the website.

## HTTPS is a secure version of HTTP

HTTPS adds encryption and server identification on top of HTTP's data transfer model.