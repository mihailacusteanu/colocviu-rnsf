## Copyright (C) 2018 mihai
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} covariatie (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mihai <mihai@bazz>
## Created: 2018-05-09

function [cov] = covariatie (x, y)
  
    medie_x = medie(x);
    medie_y = medie(y); 
    N = size(x,2);
    sum = 0;
    
    for i=1:N
        sum+= (x(i) - medie_x)*(y(i) - medie_y)  ;
    end
    
    cov = sum/N;
endfunction
