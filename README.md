# CredoExCoverallsUncovered

This plugin adds a new check to Credo:
`Credo.Check.Warning.ExCoverallsUncovered`

If this plugin is configured, and you have also generated a previous "cover/excoveralls.json" file, via `mix coveralls.json`, it will search for files missing test coverage.

The plugin will need to be added to your Credo configuration and will automatically enable the check once configured.

## Installation

From Hex, the package can be installed
by adding `credo_ex_coveralls_uncovered` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:credo_ex_coveralls_uncovered, "~> 0.1.0", only: [:dev]}
  ]
end
```

You will need to enable it as a Credo plugin in your `.credo.exs` file.