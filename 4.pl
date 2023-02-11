#!/usr/bin/env perl
use strict;

my @list = (1, 2, 3, 4, 'ab');

sub shuffle
{                                           # Тасовка Фишера-Йейтса
    my $array = shift;                      # получаем первый элемент с удалением его из переданного списка (?)
    my $i;                                  # объявляем итерируемую переменную
    for ($i = @$array; --$i;)               # проходимся по изменяемому списку с сохранением в объявленной переменной его длины минус 1 (?)
    {                                       
        my $j = int rand ($i + 1);          # выбираем рандомный элемент
        next if $i == $j;                   # если итерируемый элемент и рандомный совпадают, делаем следующую итерацию
        @$array[$i,$j] = @$array[$j,$i];    # меняем местами
    }
}

print 'Before: ', @list, "\n";
shuffle \@list;
print 'After: ', @list, "\n";