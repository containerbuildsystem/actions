# 'yamllint' docker action

A GitHub action to lint YAML files using [adrienverge/yamllint][].

## Inputs

### Paths to files to check, default config ('.') otherwise

## Outputs

### None

## Example usages

```yaml
   uses: containerbuildsystem/actions/yamllint@master
   with:
     path: 'file.yml'
```

```yaml
   uses: containerbuildsystem/actions/yamllint@master
   with:
     path: 'foo/'
```

```yaml
   uses: containerbuildsystem/actions/yamllint@master
   with:
     path: 'foo/ bar/'
```

[adrienverge/yamllint]: https://github.com/adrienverge/yamllint
