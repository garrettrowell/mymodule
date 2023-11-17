# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include mymodule
class mymodule {
  notify { 'notify resources always create intentional changes': }
  echo { 'echo resources behave like notify except they dont create intentional changes': }
  echo { 'testing': }
}
