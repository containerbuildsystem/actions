# Actions

Container Build System's GitHub Action collection

New actions should live in their own directory - *not* on new branches

Current collection:

- ansible-lint
  - docker
  - Fedora: 34
  - Py 3, Fedora latest (3.9.x)
  - pip:
    - ansible>=2.10,<2.11
    - ansible-lint latest (5.2.x)
      - with "[community,yamllint]"
  - config: strictly per-repo
- flake8 latest
  - docker
  - Fedora: 34
  - Py 3, Fedora latest
  - config: defaults, with "--max-line-length=100"
- [markdownlint][] (ruby)
  - docker
  - Fedora: 34
  - ruby: Fedora latest
  - mdl:'>=0.11.0'
  - config: currently per-repo
- shellcheck
  - docker
  - Fedora: 34
  - shellcheck: Fedora latest
  - config: defaults; only enabled for 'test.sh'
- [tekton-lint][] (nodejs)
  - docker
  - Fedora: 34
  - node >12 (uses Fedora latest, currently >14)
  - tekton-lint@v0.6.0
  - config: defaults; restricted to tekton yaml only

[ansible-lint]: https://github.com/ansible-community/ansible-lint
[markdownlint]: https://github.com/markdownlint/markdownlint
[tekton-lint]: https://github.com/IBM/tekton-lint
