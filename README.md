A server app to retrieve [oEmbed](https://en.wikipedia.org/wiki/OEmbed) metadata from various providers.

# Installation

Lets get started by creating the template file from [oEmbed Spec](https://github.com/iamcal/oembed)

```
$ yarn install
```

# Running the sample

## Running with the Dart SDK

You can run the example with the [Dart SDK](https://dart.dev/get-dart)
like this:

```
$ dart run bin/server.dart
```

And then from a second terminal:
```
$ curl http://0.0.0.0:8080/oembed?url=https://www.youtube.com/watch?v=eX2qFMC8cFo
```

## Running with Docker

You can build and run the server with the `docker-compose` command:

```
$ docker-compose build --pull --no-cache
$ docker-compose up --detach
```

And then from a second terminal:
```
$ curl https://localhost/oembed?url=https://www.youtube.com/watch?v=eX2qFMC8cFo
```

You should see the logging printed in the first terminal:
```
2021-05-06T15:47:08.392928  0:00:00.001216 GET     [200] oembed?url=https%3A%2F%2Fwww.tiktok.com%2F%40scout2015%2Fvideo%2F6718335390845095173
```

# Limitation

Some providers (like Facebook) ask you to register your app to autorize connection.

For now, this basic server do not handle such feature.