# 'mypy' docker action

A GitHub action to check static type annotations in Python sources, using
[python/mypy][].

## Inputs

### package: Python package to check

## Outputs

### None

## Example usage

```yaml
   uses: containerbuildsystem/actions/mypy@master
   with:
     package: 'osbs'
```

[python/mypy]: https://github.com/python/mypy
