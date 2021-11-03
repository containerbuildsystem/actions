# Actions

Container Build System's GitHub Action collection

New actions should live in their own directory - *not* on new branches

Current collection:

- [ansible-lint][]
  - docker
  - Fedora: 34
  - Py 3, Fedora latest (3.9.x)
  - pip:
    - ansible>=2.10,<2.11
    - ansible-lint latest (5.2.x)
      - with "[community,yamllint]"
  - config: strictly in-repo
- [flake8][]
  - docker
  - Fedora: 34
  - Py 3, Fedora latest
  - python3-flake8, Fedora default (3.9.x)
  - config: defaults, with "--max-line-length=100"
- [markdownlint][] (ruby version)
  - docker
  - Fedora: 34
  - ruby >= 2.6, Fedora default (3.0.x)
  - gem:
    - mdl:'>=0.11.0'
  - called from 'action.sh'
  - config: in-repo
- [ShellCheck][]
  - docker
  - Fedora: 34
  - ShellCheck: Fedora default (0.7.x)
  - called from 'action.sh'
  - config: defaults; only enabled for 'test.sh'
- [tekton-lint][] (nodejs)
  - docker
  - Fedora: 34
  - node >12 (uses Fedora latest, currently >14)
  - npm:
    - tekton-lint@v0.6.0
  - config: defaults; restricted to tekton yaml only

[ansible-lint]: ./ansible-lint/README.md
[flake8]: ./flake8/README.md
[markdownlint]: ./markdownlint/README.md
[ShellCheck]: ./shellcheck/README.md
[tekton-lint]: ./tekton-lint/README.md
