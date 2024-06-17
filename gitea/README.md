# Home assistant add-on: Gitea

[![Donate][donation-badge]](https://www.buymeacoffee.com/alexbelgium)
[![Donate][paypal-badge]](https://www.paypal.com/donate/?hosted_button_id=DZFULJZTP3UQA)

![Version](https://img.shields.io/badge/dynamic/json?label=Version&query=%24.version&url=https%3A%2F%2Fraw.githubusercontent.com%2Falexbelgium%2Fhassio-addons%2Fmaster%2Fgitea%2Fconfig.json)
![Ingress](https://img.shields.io/badge/dynamic/json?label=Ingress&query=%24.ingress&url=https%3A%2F%2Fraw.githubusercontent.com%2Falexbelgium%2Fhassio-addons%2Fmaster%2Fgitea%2Fconfig.json)
![Arch](https://img.shields.io/badge/dynamic/json?color=success&label=Arch&query=%24.arch&url=https%3A%2F%2Fraw.githubusercontent.com%2Falexbelgium%2Fhassio-addons%2Fmaster%2Fgitea%2Fconfig.json)

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/9c6cf10bdbba45ecb202d7f579b5be0e)](https://www.codacy.com/gh/Mesteriis/hassio-addons-avm/dashboard?utm_source=github.com&utm_medium=referral&utm_content=Mesteriis/hassio-addons-avm&utm_campaign=Badge_Grade)
[![GitHub Super-Linter](https://img.shields.io/github/actions/workflow/status/Mesteriis/hassio-addons-avm/weekly-supelinter.yaml?label=Lint%20code%20base)](https://github.com/Mesteriis/hassio-addons-avm/actions/workflows/weekly-supelinter.yaml)
[![Builder](https://img.shields.io/github/actions/workflow/status/Mesteriis/hassio-addons-avm/onpush_builder.yaml?label=Builder)](https://github.com/Mesteriis/hassio-addons-avm/actions/workflows/onpush_builder.yaml)

[donation-badge]: https://img.shields.io/badge/Buy%20me%20a%20coffee%20(no%20paypal)-%23d32f2f?logo=buy-me-a-coffee&style=flat&logoColor=white
[paypal-badge]: https://img.shields.io/badge/Buy%20me%20a%20coffee%20with%20Paypal-0070BA?logo=paypal&style=flat&logoColor=white

_Thanks to everyone having starred my repo! To star it click on the image below, then it will be on top right. Thanks!_

[![Stargazers repo roster for @Mesteriis/hassio-addons-avm](https://raw.githubusercontent.com/Mesteriis/hassio-addons-avm/master/.github/stars2.svg)](https://github.com/Mesteriis/hassio-addons-avm/stargazers)

![downloads evolution](https://raw.githubusercontent.com/Mesteriis/hassio-addons-avm/master/gitea/stats.png)

## About

[Gitea](https://about.gitea.com/) is a painless self-hosted all-in-one software development service, it includes Git hosting, code review, team collaboration, package registry and CI/CD. It is similar to GitHub, Bitbucket and GitLab.

Various tweaks and configuration options addition.
This addon is based on the [docker image](https://hub.docker.com/r/gitea/gitea).

## Configuration

```yaml
certfile: fullchain.pem #ssl certificate, must be located in /ssl
keyfile: privkey.pem #sslkeyfile, must be located in /ssl
ssl: should the app use https or not
APP_NAME: name of the app
DOMAIN: domain to be reached # default : homeassistant.local
ROOT_URL: customize root_url, should not be needed unless specific needs
```

Webui can be found at `<your-ip>:port`.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add my Hass.io add-ons repository][repository] to your Hass.io instance.
1. Install this add-on.
1. Click the `Save` button to store your configuration.
1. Start the add-on.
1. Check the logs of the add-on to see if everything went well.
1. Go to the webui, where you will initialize the app
1. Restart the addon, to apply any option that should be applied

[repository]: https://github.com/Mesteriis/hassio-addons-avm