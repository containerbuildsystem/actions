# 'tekton-lint' docker action

A GitHub action to lint Tekton resource definitions (yaml files), using
[IBM/tekton-lint][].

## Inputs

### Path to files to check

## Outputs

### None

## Example usage

```yaml
   uses: containerbuildsystem/actions/tekton-lint@master
   with:
     path: 'tekton/**/*.yaml'
```

[IBM/tekton-lint]: https://github.com/IBM/tekton-lint
