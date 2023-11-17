# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mymodule
class mymodule (
  Integer $sleep_sec = 10,
) {
  notify { 'notify resources always create intentional changes': }

  echo { 'echo resources behave like notify except they dont create intentional changes': }

  exec { "wait ${sleep_sec} seconds":
    path    => '/usr/bin:/bin',
    command => "sleep ${sleep_sec}",
    timeout => 0, # default timeout is 300s, 0 = infinite
  }

  echo { 'a dupe': }
  echo { 'testing': }
  if $trusted['certname'] == 'pe-nixagent-0.garrett.rowell' {
    echo { 'a dupe': }
  }
}
