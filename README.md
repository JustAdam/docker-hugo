docker-hugo
===========

A Docker imagae for [hugo](http://gethugo.io), a very fast static site generator.

# Build the image

Set the version number you want:

```
$ export HUGO_VERSION=0.14
```

Get a copy of the hugo binary:

```
$ ./gethugo.sh
```

Build the image:

```
$ docker build -t justadam/hugo:$HUGO_VERSION .
```

# Usage examples

Hugo help:

```
$ docker run --rm justadam/hugo:$HUGO_VERSION help
```

Run hugo's web server; building files from the host (at /path/to/hugo/content) including all drafts.  Access the server at http://localhost:1313.

```
$ docker run -d --name hugo-web -p 1313:1313 -v /path/to/hugo/content:/content justadam/hugo:$HUGO_VERSION server --watch --baseUrl=http://localhost --source=/content --destination=/hugo --buildDrafts
```
