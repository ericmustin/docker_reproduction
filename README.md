### Demonstrate issue with opentelemetry-sdk v0.9.0

- To reproduce, ensure you have docker installed
- `docker-compose up`

Output Should look like

```
Fetching gem metadata from https://rubygems.org/...
Resolving dependencies...
Using bundler 2.1.4
Fetching opentelemetry-api 0.9.0
Installing opentelemetry-api 0.9.0
Fetching opentelemetry-sdk 0.9.0
Downloading opentelemetry-sdk-0.9.0 revealed dependencies not in the API or the
lockfile (opentelemetry-common (~> 0.9.0)).
Either installing with `--full-index` or running `bundle update
opentelemetry-sdk` should fix the problem.
ERROR: Service 'ruby-example' failed to build: The command '/bin/sh -c bundle install --no-cache' returned a non-zero code: 34
```