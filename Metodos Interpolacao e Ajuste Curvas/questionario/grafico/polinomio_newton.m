## Copyright (C) 2023 Diego Sanches
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{Pz} =} polinomio_newton (@var{m}, @var{x}, @var{y}, @var{z})
## Pz = valor interpolado
## m = numero de pontos
## x = vetor de abcissas
## y = vetor de ordenadas
## z = valor a interpolar
## @seealso{}
## @end deftypefn

## Author: Diego Sanches
## Created: 2023-05-26

function Pz = polinomio_newton (m, x, y, z)
  for i = 1 : m
    Dely(i) = y(i);
  endfor
  for k = 1 : m-1
    for i = m : -1 : k+1
      Dely(i) = (Dely(i) - Dely(i-1))/(x(i) - x(i-k));
    endfor
  endfor
  Pz = Dely(m);
  for i = m-1 : -1 : 1
    Pz = Pz * (z - x(i)) + Dely(i);
  endfor
endfunction
