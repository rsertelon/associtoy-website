pkg_name=associtoy-website
pkg_origin=rsertelon
pkg_version="0.1.0"
pkg_upstream_url="https://github.com/rsertelon/associtoy-website"
pkg_description="Asso' Citoy website"
pkg_maintainer="Romain Sertelon <romain@sertelon.fr>"
pkg_license=('CC-BY-SA-4.0')
pkg_deps=(
  rsertelon/thttpd
)

pkg_build_deps=(
  core/git
)

pkg_version() {
  git describe --tags
}

do_before() {
  do_default_before
  update_pkg_version
}

do_build() {
  return 0
}

do_install() {
  mkdir -p $pkg_prefix/webroot
  cp -R src/* $pkg_prefix/webroot
}
