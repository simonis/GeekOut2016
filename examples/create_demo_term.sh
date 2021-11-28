#!/bin/bash

XDG_CONFIG_HOME=~/.config_presentation xfce4-terminal --disable-server -T "Interpreter" -e "`pwd`/create_demo_tab.sh interpreter" --tab -T "JIT Bug" -e "`pwd`/create_demo_tab.sh jit_bug" --tab -T "jdb" -e "`pwd`/create_demo_tab.sh jdb" --tab -T "JIT Loop" -e "`pwd`/create_demo_tab.sh jit_loop" --tab -T "JIT Loop with GC" -e "`pwd`/create_demo_tab.sh jit_loop_with_gc" --tab -T "IGV" -e "`pwd`/create_demo_tab.sh igv"&

