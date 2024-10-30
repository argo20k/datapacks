{ buildDataPack }:
buildDataPack {
  name = "drop-xp";
  version = "1.0.0";

  src = ./.;

  preprocess = ''
    shopt -s nullglob globstar
    pushd data
    for dir in **/function **/advancement; do
      cp -r $dir ''${dir}s
    done
    popd
    touch **
  '';

  include = [
    "LICENSE"
    "README.txt"
  ];
}
