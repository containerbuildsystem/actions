# Actions

Container Build System's GitHub Action collection

New actions should live in their own directory - *not* on new branches

Current collection:

- flake8 latest
  - docker
  - Fedora: 34
  - Py 3, Fedora latest
  - config: defaults, with "--max-line-length=100"
- [markdownlint][] (ruby)
  - docker
  - Fedora: 34
  - ruby: Fedora latest
  - mdl:0.9
  - config: currently per-repo
- shellcheck
  - docker
  - Fedora: 34
  - shellcheck: Fedora latest
  - config: defaults; only enabled for 'test.sh'

[markdownlint]: https://github.com/markdownlint/markdownlint
