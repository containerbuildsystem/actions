# Actions

Container Build System's GitHub Action collection

New actions should live in their own directory - *not* on new branches

Current collection

- [ansible-lint][]
  - docker
  - Fedora 35
  - Py 3, Fedora default (3.10.x)
  - pip
    - ansible>=2.10,<2.11
    - ansible-lint latest (5.2.x)
      - with "[community,yamllint]"
  - config: in-repo
- [flake8][]
  - docker
  - Fedora 35
  - Py 3, Fedora default (3.10.x)
  - python3-flake8, Fedora default (3.9.x)
  - config
    - defaults
    - '--max-line-length=100'
  - Auto-finds .py files
- [markdownlint][] (ruby version)
  - docker
  - Fedora 35
  - ruby >= 2.6, Fedora default (3.0.x)
  - gem
    - mdl:'>=0.11.0'
  - called from 'action.sh'
  - config:
    - style rules are in-repo
    - '-g .': Use git to auto-find .md files in '.'
- [ShellCheck][]
  - docker
  - Fedora 35
  - ShellCheck, Fedora default (0.7.x)
  - called from 'action.sh'
  - config
    - defaults
    - '-Calways': always output color
  - inputs
    - 'path' parameter (required), default './test.sh'
- [tekton-lint][] (nodejs)
  - docker
  - Fedora 35
  - nodejs >= 16, Fedora default (16.11.x)
  - npm
    - tekton-lint@v0.6.0
  - config
    - defaults
  - inputs
    - 'path' parameter (required), default 'tekton/**/*.yaml'
- [yamllint][]
  - docker
  - Fedora 35
  - Py 3, Fedora default (3.10.x)
  - yamllint, Fedora default (1.26.x)
  - config
    - '-s': strict mode, warnings are reported as errors
    - '-f github': github output format, hits appear inline in diffs
    - 'line-length': {max: 100}
  - inputs
    - 'path' parameter (required), default '.' (all YAML files)

[ansible-lint]: ./ansible-lint/README.md
[flake8]: ./flake8/README.md
[markdownlint]: ./markdownlint/README.md
[ShellCheck]: ./shellcheck/README.md
[tekton-lint]: ./tekton-lint/README.md
[yamllint]: ./yamllint/README.md
