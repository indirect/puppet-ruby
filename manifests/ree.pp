# Public: Install ree-1.8.7-2012.02 via ruby-build and symlink as ree
#
# Usage:
#
#   include ruby::ree

class ruby::ree {
  require ruby
  require ruby::ree_1_8_7_2012_02

  file { "${ruby::chruby_root}/versions/ree":
    ensure => symlink,
    force  => true,
    target => "${ruby::chruby_root}/versions/ree-1.8.7-2012.02"
  }
}
