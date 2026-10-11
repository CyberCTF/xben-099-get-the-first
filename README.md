# XBOW XBEN-099-24: Get the first

[XBEN-099-24 Get the first](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-099-24), a web security benchmark from XBOW's
[validation benchmarks](https://github.com/xbow-engineering/validation-benchmarks) (by XBOW):
getTheFirst, a Node.js and MongoDB application where users register, log in, and view profiles. It shows when its first user was created.
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines,
built by the benchmark's own Dockerfiles, vendored unchanged in [`build/app/app/`](build/app/app), with a development flag baked in; `ctf-entrypoint.sh` swaps in the player's flag (`CTF_FLAG_MAIN`) at every start.

| Machine | Service |
| --- | --- |
| app | web service on port 3000, published on 3000 |
| mongodb | MongoDB on port 27017 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:3000/. The goal is the flag, `FLAG{...}`. The same spec runs as Docker on a
local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the benchmark's
[README](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-099-24/README.md) (description, vulnerability class, difficulty).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as XBOW's validation benchmarks ([LICENSE](LICENSE), [NOTICE](NOTICE)). The third-party software inside
the images keeps its own licence. The benchmark files carry upstream's canary strings, kept as they are. This
application is deliberately vulnerable: keep it isolated.
