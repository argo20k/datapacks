{mkDataPack}:
mkDataPack {
  name = "pause-day-cycle";
  version = "1.1.1";

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

  include = ["LICENSE"];
}
