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