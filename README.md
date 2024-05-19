# devenv launchpad starter

A declarative and reproducible starting point for multi-repo clojure projects.

## Dependencies
[devenv.sh](https://devenv.sh/) provides a declarative and reproducible environment.

Devenv will download and prepare few clojure utilities:
- [babashka/babashka](https://github.com/babashka/babashka)
- [seancorfield/deps-new](https://github.com/seancorfield/deps-new)
- [babashka/neil](https://github.com/babashka/neil)
- and finally [lambdaisland/launchpad](https://github.com/lambdaisland/launchpad).

Please refer to those projects' documentation for more detailed usage instructions.

# Setup
To start a new project, feel free to clone this repo first.

`.devcontainer.json` is auto-generated from `devenv.nix` enabling this repo to be run in VSCode Devcontainer or Github Codespace with [calva](https://calva.io/) and nix extensions ready.


There are (at least) 3 different ways of running this project:
- [locally](#locally-on-your-machine)
- [in Devcontainer](#in-vscode-devcontainer)
- [in Codespace](#in-github-codespace)

## Locally on your machine
Follow [devenv getting-started guide](https://devenv.sh/getting-started/) to setup nix, devenv, [direnv](https://devenv.sh/automatic-shell-activation/) and then run `devenv shell` - it will download and prepare all the rest!

## In VSCode Devcontainer
When you open this repo in VSCode it should prompt you to run it as Devcontainer.
If it doesn't happen, hit `⇧` `⌘` `P` on keyboard to `Show Command Panel` and choose `Dev Containers: Open Folder in Container...`.

This should be enough to get everything up and ready!



## In Github Codespace
If you're viewing this on github.com:
- press `.` on your keyboard (or [click here](https://github.dev/roterski/devenv-launchpad-starter)) to view this repo in online editor,
- then start it in a codespace:
    - hit keyboard shortcut `⇧` `⌘` `P` to `Show Command Panel`
    - then choose `Codespaces: Continue Working in New Codespace`

It should start a new Codespace container and once it's ready you will land in a fully configured and functional clojure dev environment! 🎉

# Usage

The recommended way of working with this project is to:
- start launchpad (`bb launchpad` or `bin/launchpad`)
- connect Calva launchpad's REPL via `Calva: Connect to a Running REPL in the Project` (keyboard shortcut: `^` `⌥` `C` + `^` `⌥` `C`)
- generate sub-projects from templates via `neil new ...`,
- then add sub-projects to [deps.edn aliases as launchpad suggests](https://github.com/lambdaisland/launchpad/blob/main/template/deps.edn#L8-L12),
- try out new dependencies (without reloading the REPL!) via `neil dep add ... --deps-file deps.local.edn` 

Feel free to play around with different `devenv.nix` and launchpad configurations, this repo is just a humble starter.

The world is now your declarative oyster! 🦪
