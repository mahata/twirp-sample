# Twirp Sample

```bash
bundle install
bundle exec puma -p 3000 config.ru
```

In another terminal:

```bash
bundle exec ruby client.rb

(or)

curl --request POST \
  --url http://localhost:3000/twirp/example.HelloWorld/Hello \
  --header 'Content-Type: application/json' \
  --data '{"name":"World"}'
```
