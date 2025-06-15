# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v4.1.0] - 2025-06-15
### :bug: Bug Fixes
- [`8b0b791`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/8b0b791b4a049466342396f6f14a1826bd52545d) - **goss**: removed failing command *(commit by [@visibilityspots](https://github.com/visibilityspots))*

### :wrench: Chores
- [`2c54ba2`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/2c54ba2cb9fad6121f0ea0ef69cc280db87dbcf1) - **deps**: bump setuptools in the pip group across 1 directory *(commit by [@dependabot[bot]](https://github.com/apps/dependabot))*
- [`3e49f9a`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/3e49f9aa292f5850da612a95c660047956f95c6b) - **update**: python v3.15.5 + alpine v3.22 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`bb1fb4a`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/bb1fb4a216cf4b6fa5551d1e52162ddc693170bf) - **update**: certbot v4.1.0 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`37f8209`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/37f820925f61a4aa74206dab10925b168d454a51) - **update**: certbot v4.1.1 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`eaa29a4`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/eaa29a42502d1051fde723d815e21d1bc29a4849) - **update**: certbot v4.1.0 *(commit by [@visibilityspots](https://github.com/visibilityspots))*


## [v4.0.0] - 2025-04-13
### :wrench: Chores
- [`2b965a2`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/2b965a20f7fd3296338437e7f49918640d28d8d3) - **update**: certbot v4.0.0 + python v3.13.3 *(commit by [@visibilityspots](https://github.com/visibilityspots))*


## [v3.3.0] - 2025-03-11
### :wrench: Chores
- [`907da6d`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/907da6defdcf87d6aa3bb4f8367f11f4edf7e723) - **update**: certbot v3.3.0 *(commit by [@visibilityspots](https://github.com/visibilityspots))*


## [v3.2.0] - 2025-02-18
### :wrench: Chores
- [`03a61ca`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/03a61ca50c15396f82114da711739c29e56a57be) - **update**: certbot v3.2.0 *(commit by [@visibilityspots](https://github.com/visibilityspots))*


## [v3.1.0] - 2025-01-08
### :wrench: Chores
- [`581c578`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/581c5788797898bbdeb4d9563cc33538d39f6c32) - **doc**: refactored docker run command with env.list *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`83159ec`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/83159ecd2ad9036cfb30beb22dd1181d21b418cf) - **update**: certbot v3.1.0 *(commit by [@visibilityspots](https://github.com/visibilityspots))*


## [v3.0.1] - 2024-11-20
### :sparkles: New Features
- [`66ec0ad`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/66ec0ad762bde916b84b63b3956a69690c30955f) - **ci**: implementing trivy reusable workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`b0b5a4a`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/b0b5a4a426bdf5061805c608a226cc7d50d9521f) - **ci**: implementing docker-hub-description reusable workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`97eace8`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/97eace8aa7e9d5de26d630cd6165361fd5f3e8b1) - **ci**: excluding arm/v6 from platforms build array *(commit by [@visibilityspots](https://github.com/visibilityspots))*

### :bug: Bug Fixes
- [`dcb683a`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/dcb683a6c40b48dad3f9e4d3f3901d6e23c2f2d5) - **ci**: using variable over secret for dockerhub username *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`c3f4a1c`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/c3f4a1c3853bab4e0312bcd16afd0db8a5736d6f) - **ci**: using platforms input instead *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`42fe7b1`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/42fe7b156e07de5f78415a354c7ff38bff8d8580) - **ci**: excluded arm/v7 from platforms cause failing builds *(commit by [@visibilityspots](https://github.com/visibilityspots))*

### :wrench: Chores
- [`12b854a`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/12b854aa4d0e1ceda4de73d16f50bed684920bc6) - **update**: certbot v3.0.1 *(commit by [@visibilityspots](https://github.com/visibilityspots))*
- [`20dfd86`](https://github.com/visibilityspots/dockerfile-certbot-s3front/commit/20dfd86cf066ac963220e39e71cefd57f0442af9) - **ci**: using reusable main workflow *(commit by [@visibilityspots](https://github.com/visibilityspots))*

[v3.0.1]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v3.0.0...v3.0.1
[v3.1.0]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v3.0.1...v3.1.0
[v3.2.0]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v3.1.0...v3.2.0
[v3.3.0]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v3.2.0...v3.3.0
[v4.0.0]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v3.3.0...v4.0.0
[v4.1.0]: https://github.com/visibilityspots/dockerfile-certbot-s3front/compare/v4.0.0...v4.1.0
