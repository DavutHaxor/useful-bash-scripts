#!/usr/bin/bash
read in out arg

gcc $in -o $out $arg
chmod +x $out
./$out
