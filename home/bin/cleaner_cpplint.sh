#!/bin/bash

sed \
  -e "s/){/) {/g" \
  -e "s/if(/if (/g" \
  -e "s/for(/for (/g" \
  -e "s/ \{1,\}$//" \
  -e "s/else{/else {/" \
  -e "s/}else/} else/" \
  -e "s/,\([^ ]\)/, \1/g" \
