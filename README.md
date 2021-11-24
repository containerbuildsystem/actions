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
- [doc8][]
  > NOTE: ignores Sphinx-specific false positives
  >
  > TLDR; this isn't really a Sphinx linter
  - docker
  - Fedora 35
  - Py 3, Fedora default (3.10.x)
  - pip
    - doc8==0.9.1
  - config
    - defaults
    - '--max-line-length=100'
  - inputs
    - 'path' parameter (required), default 'docs/'
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
- [mypy][]
  - docker
  - Fedora 35
  - Py 3, Fedora default (3.10.x)
  - python3-mypy >= 0.910, Fedora default (0.910)
  - config
    - defaults
    - '--install-types'
    - '--non-interactive'
    - '--ignore-missing-imports'
  - inputs
    - 'package' parameter (required) (arg for '--package')
- [pytype][]
  - docker
  - Fedora 34
  - Py 3 < 3.10, Fedora default (3.9.x)
  - pip
    - pytype (latest)
  - config
    - defaults
    - '-d import-error': ignore imports (pytype will fail (in GitHub workflows)
      when checking for third party imports, unless they're explicitly
      installed)
  - inputs
    - 'path' parameter (required), default '.'
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
[doc8]: ./doc8/README.md
[flake8]: ./flake8/README.md
[markdownlint]: ./markdownlint/README.md
[mypy]: ./mypy/README.md
[pytype]: ./pytype/README.md
[ShellCheck]: ./shellcheck/README.md
[tekton-lint]: ./tekton-lint/README.md
[yamllint]: ./yamllint/README.md
