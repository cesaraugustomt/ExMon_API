# ExMon_API Start

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Database used

- [postgresql](https://www.postgresql.org/)

## Ecto

Create the database

```bash
mix ecto.create
```

Delete the database

```bash
mix ecto.drop
```

Create the migration

```bash
mix ecto.gen.migration create_trainer_table
```

Perform the migrations

```bash
mix ecto.migrate
```

## Phoenix

start the server

```bash
mix phx.server
```

## Deps

- [Guardian](https://github.com/ueberauth/guardian)
- [Tesla](https://github.com/teamon/tesla)
- [pbkdf2_elixir](https://github.com/riverrun/pbkdf2_elixir)

---

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
