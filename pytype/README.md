# 'pytype' docker action

A GitHub action to statically check Python types, using
[google/pytype][].

## Inputs

### Path to Python sources to check

## Outputs

### None

## Example usage

```yaml
   uses: containerbuildsystem/actions/pytype@master
   with:
     path: 'atomic_reactor'
```

[google/pytype]: https://github.com/google/pytype
