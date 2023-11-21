# Docker container for Thunderbird
[![Release](https://img.shields.io/github/release/jlesage/docker-thunderbird.svg?logo=github&style=for-the-badge)](https://github.com/jlesage/docker-thunderbird/releases/latest)
[![Docker Image Size](https://img.shields.io/docker/image-size/jlesage/thunderbird/latest?logo=docker&style=for-the-badge)](https://hub.docker.com/r/jlesage/thunderbird/tags)
[![Docker Pulls](https://img.shields.io/docker/pulls/jlesage/thunderbird?label=Pulls&logo=docker&style=for-the-badge)](https://hub.docker.com/r/jlesage/thunderbird)
[![Docker Stars](https://img.shields.io/docker/stars/jlesage/thunderbird?label=Stars&logo=docker&style=for-the-badge)](https://hub.docker.com/r/jlesage/thunderbird)
[![Build Status](https://img.shields.io/github/actions/workflow/status/jlesage/docker-thunderbird/build-image.yml?logo=github&branch=master&style=for-the-badge)](https://github.com/jlesage/docker-thunderbird/actions/workflows/build-image.yml)
[![Source](https://img.shields.io/badge/Source-GitHub-blue?logo=github&style=for-the-badge)](https://github.com/jlesage/docker-thunderbird)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg?style=for-the-badge)](https://paypal.me/JocelynLeSage)

This is a Docker container for [Thunderbird](https://www.thunderbird.net).

The GUI of the application is accessed through a modern web browser (no
installation or configuration needed on the client side) or via any VNC client.

---

[![Thunderbird logo](https://images.weserv.nl/?url=raw.githubusercontent.com/jlesage/docker-templates/master/jlesage/images/thunderbird-icon.png&w=110)](https://www.thunderbird.net)[![Thunderbird](https://images.placeholders.dev/?width=352&height=110&fontFamily=monospace&fontWeight=400&fontSize=52&text=Thunderbird&bgColor=rgba(0,0,0,0.0)&textColor=rgba(121,121,121,1))](https://www.thunderbird.net)

Thunderbird is a free email application that's easy to set up and customize.

---

## Quick Start

**NOTE**:
    The Docker command provided in this quick start is given as an example
    and parameters should be adjusted to your need.

Launch the Thunderbird docker container with the following command:
```shell
docker run -d \
    --name=thunderbird \
    -p 5800:5800 \
    -v /docker/appdata/thunderbird:/config:rw \
    jlesage/thunderbird
```

Where:

  - `/docker/appdata/thunderbird`: This is where the application stores its configuration, states, log and any files needing persistency.

Browse to `http://your-host-ip:5800` to access the Thunderbird GUI.

## Documentation

Full documentation is available at https://github.com/jlesage/docker-thunderbird.

## Support or Contact

Having troubles with the container or have questions?  Please
[create a new issue].

For other great Dockerized applications, see https://jlesage.github.io/docker-apps.

[create a new issue]: https://github.com/jlesage/docker-thunderbird/issues
