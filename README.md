# homebrew-greeg

Homebrew tap for [greeg](https://github.com/thiagodmont/greeg), a grep for
coding agents: indexed, syntax-aware, budgeted, ripgrep-compatible flags.

```
brew install thiagodmont/greeg/greeg
```

or

```
brew tap thiagodmont/greeg
brew install greeg
```

`Formula/greeg.rb` is rendered by greeg's release workflow from
`homebrew/greeg.rb.in` for every `v*` tag and points at the prebuilt
tarballs (macOS arm64/x86_64, Linux x86_64/aarch64) on the GitHub release.
