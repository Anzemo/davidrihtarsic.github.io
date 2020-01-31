#! /bin/zsh

find ../*/*md | sed "s/^/<a href =/" | \
                sed "s/.md/.html><++><\/a>/" | \
                sed "/index/ s/^/<details><summary>/" | \
                sed "/index/ s/$/<\/summary>/" | \
                sed "/index/ ! s/^/<il>/" | \
                sed "/index/ ! s/$/<\/li>/"
