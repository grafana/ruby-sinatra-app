# Sinatra app

Example Sinatra app with Prometheus instrumentation.

Run with:

```sh
$ bundle exec rackup
```

The app will run at `http://localhost:9292`.

You can check the output of the default `/` route with `curl`:

```sh
$ curl http://localhost:9292
Hello world!
```

Prometheus metrics are exposed at `http://localhost:9292/metrics`.
