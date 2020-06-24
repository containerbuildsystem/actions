# Actions

Container Build System's GitHub Action collection

New actions should live in their own directory - *not* on new branches

Current collection:

- flake8
  - docker
  - Fedora: 32
  - Py: 3
  - config: defaults, with "--max-line-length=100"
- markdownlint (ruby)
  - docker
  - Fedora: 32
  - ruby: Fedora latest
  - config: currently per-repo
- shellcheck: Only enabled for 'test.sh'
  - docker
  - Fedora: 32
  - shellcheck: Fedora latest
  - config: defaults
