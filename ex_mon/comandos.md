params = %{name: "Cesar12", password: "123456senha"}

{:ok, struct} = ExMon.Trainer.build(params)
ExMon.Trainer.builder(params)

ExMon.Repo.insert(changeset)

changeset = ExMon.Trainer.changeset(params)

iex.bat -S mix

mix do ecto.drop, ecto.create, ecto.migrate Observe que isso irá remover e recriar o banco de dados.

ExMon.Trainer.Update.call(params)

ExMon.Repo.all(ExMon.Trainer)

http put http://localhost:4000/api/trainers/9f3aa4f4-bf7c-4b33-9e12-f22f65c5d3ee name="José Silva" password="123456"

http https://pokeapi.co/api/v2/pokemon/pikachu

mix deps.get

mix deps.clean phoenix mix deps.compile phoenix

mix ecto.gen.migration add_pokemons_table

params = %{name: "pikachu", nickname: "oi", weight: 50, types: ["eletric"], trainer_id: 1234}

---

teste de schema, module e controller.

o data_case é um arquivo de cofiguração do ECTO.

ERROR 42P07:

MIX_ENV=test mix ecto.drop

mix test
