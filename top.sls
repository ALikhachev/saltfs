# NOTE: Ensure all node types are covered in .travis.yml

base:
  '*':
    - common
    - servo-dependencies

  'os:Ubuntu':
    - match: grain
    - ubuntu

  'servo-head':
    - buildbot.slave
    - android-dependencies

  'servo-linux-android\d+':
    - match: pcre
    - buildbot.slave
    - android-dependencies
    - gonk-dependencies

  'servo-(mac|macpro)\d+':
    - match: pcre
    - osx
    - buildbot.slave

  'servo-linux\d+':
    - match: pcre
    - buildbot.slave
    - xvfb

  'servo-master':
    - buildbot.master
    - homu
    - nginx
    - longview
