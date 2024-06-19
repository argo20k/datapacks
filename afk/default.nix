{mkDataPack}:
mkDataPack {
  name = "afk";
  version = "1.1.1";

  src = ./.;

  prepare = ''
    shopt -s nullglob globstar
    pushd data
    for dir in **/function **/advancement; do
      cp -r $dir ''${dir}s
    done
    popd
    touch **
  '';

  include = ["LICENSE"];
}
