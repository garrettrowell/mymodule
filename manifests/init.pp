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

  exec { 'wait X amount of seconds':
    path    => '/usr/bin:/bin',
    command => "sleep ${sleep_sec}",
  }
}
