# 'ShellCheck' docker action

A GitHub action to lint shell scripts using [ShellCheck][].

## Inputs

### Path to files to check, default config otherwise

## Outputs

### None

## Example usage

```yaml
   uses: containerbuildsystem/actions/shellcheck@master
   with:
     path: '.'
```

[ShellCheck]: https://github.com/koalaman/shellcheck
