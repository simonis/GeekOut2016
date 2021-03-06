
export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

if test "x$1" = "xinterpreter"; then
  export PATH=/share/output-jdk9-dev-dbg/images/jdk/bin:$PATH
else
  export PATH=/share/output-jdk9-hs-comp-dbg/images/jdk/bin:$PATH
fi

export LD_LIBRARY_PATH=/share/OpenJDK/hsdis

if test "x$1" = "xinterpreter"; then
  export _JAVA_OPTIONS='-XX:-LogVMOutput -XX:+UseSerialGC -XX:-UseCompressedOops'
elif test "x$1" = "xjit_bug" || test "x$1" = "xigv"; then
  export _JAVA_OPTIONS='-XX:+UnlockDiagnosticVMOptions -XX:-LogVMOutput -XX:+UseSerialGC -XX:-TieredCompilation -XX:CICompilerCount=1 -Xbatch -XX:-UseOnStackReplacement -XX:-UseCompressedOops'
elif test "x$1" = "xjit_loop"; then
  export _JAVA_OPTIONS='-XX:+UnlockDiagnosticVMOptions -XX:-LogVMOutput -XX:+UseSerialGC -XX:-TieredCompilation -XX:CICompilerCount=1 -XX:-UseOnStackReplacement -XX:-UseCompressedOops -XX:LoopUnrollLimit=0'
elif test "x$1" = "xjit_loop_with_gc"; then
  export _JAVA_OPTIONS='-XX:+UnlockDiagnosticVMOptions -XX:-LogVMOutput -XX:+UseSerialGC -XX:-TieredCompilation -XX:CICompilerCount=1 -XX:-UseOnStackReplacement -XX:-UseCompressedOops -XX:LoopUnrollLimit=0'
fi

alias javac=/share/output-jdk9-hs-comp-opt/images/jdk/bin/javac
alias jdb=/share/output-jdk9-hs-comp-opt/images/jdk/bin/jdb

cd /c/Users/D046063/public_html/hotspot/GeekOut2016/examples

set -o history
unset HISTFILE
history -c
echo Reading history from .history_$1
history -r .history_$1
