# 'doc8' docker action

A GitHub action to lint reStructuredText source files using [PyCQA/doc8][].

## Inputs

### Paths to files to check, default config ('docs/') otherwise

## Outputs

### None

## Example usage

```yaml
   uses: containerbuildsystem/actions/doc8@master
```

```yaml
   uses: containerbuildsystem/actions/doc8@master
   with:
     path: 'rst_files/'
```

[PyCQA/doc8]: https://github.com/PyCQA/doc8
