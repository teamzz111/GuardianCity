# GuardianCity

GuardianCity is a citizen-security platform for a locality of Bogotá, Colombia. It was designed to improve how safe residents feel: they can file complaints (*denuncias*), see which zones are reported as unsafe, and get help from an IBM Watson virtual assistant.

> **Context:** university project (2018), built by a student team for the *Talento Bogotá / Fedesoft* challenge on citizen security. It is kept here as a portfolio reference and is no longer maintained.

## What it includes

The work is split across branches of this repository:

| Branch | Contents |
| --- | --- |
| `master` | All components merged, plus the project documentation (use cases, mockups, relational model, architecture) |
| `APP-IONIC` | Mobile app (Ionic 3 / Angular / TypeScript): login, sign-up, tutorial, complaints, search, chat with the assistant, settings |
| `API` | REST API (Ruby on Rails, JWT via Knock): users and roles, zones, complaint types, complaints, Watson integration |
| `Watson` (default) | Ruby on Rails prototype that integrates the IBM Watson Assistant service |
| `landing-page` | Node.js / Express landing page (deployed on Heroku), with an embedded preview of the Ionic app |

Planned modules (from the project documentation):

- **Complaints**: citizens report incidents and can attach photos, and the police can follow them up. The design proposed storing complaints on a blockchain so they cannot be altered.
- **Zones**: reports on the most unsafe areas of the locality.
- **Surveys** for residents of the identified zones.
- **Help**: an IBM Watson assistant on the landing page.
- **Admin dashboard** with places, complaints and statistics.

## Tech stack

Ionic 3 · Angular · TypeScript · Ruby on Rails 5 · IBM Watson Assistant · Node.js / Express · SQLite / PostgreSQL · Heroku

## Companion repositories

- [GuardianCity-API-App](https://github.com/teamzz111/GuardianCity-API-App): the main REST API (Ruby on Rails).
- [GuardianCity-API-Watson](https://github.com/teamzz111/GuardianCity-API-Watson): the API that wraps the IBM Watson services.

## Team

Commit authors: Andrés Largo ([@teamzz111](https://github.com/teamzz111)), [@orjuela45](https://github.com/orjuela45), Erika Infante ([@MonoAncestral](https://github.com/MonoAncestral)), Yulian Cardenas, Carlos Moreno ([@carlooos28](https://github.com/carlooos28)) and [@D4v1d98Ru1z](https://github.com/D4v1d98Ru1z).
