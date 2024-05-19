{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/
  # devenv.debug = true;

  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ pkgs.git
               pkgs.babashka
               pkgs.neil
               pkgs.clojure];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  scripts.install-deps-new.exec = "clojure -Ttools install-latest :lib io.github.seancorfield/deps-new :as new";
  scripts.prepare-deps-local.exec = "cp -n deps.local.edn.template deps.local.edn";

  enterShell = ''
    hello
    install-deps-new
    prepare-deps-local
    git --version
    bb tasks
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version
  '';

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
  devcontainer.enable = true;
  devcontainer.settings.customizations.vscode.extensions =
  [ "mkhl.direnv"
    "betterthantomorrow.calva"
    "bbenoist.Nix"];
}
