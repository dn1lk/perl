#!/usr/bin/env perl
use strict;

my @list = ('Аа', 'Ab', 'Cc', 2, 3, '1', 'Zя');

print sort {("\L$a" =~ /[а-яёй]+/ && "\L$b" !=~ /[а-яёй]+/) ? -1 : $a cmp $b} @list; # вроде сортирует, но проверить не могу - в терминале кириллические крягозябры