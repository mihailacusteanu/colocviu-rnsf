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
## @deftypefn {} {@var{retval} =} plot_data (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mihai <mihai@bazz>
## Created: 2018-05-13

function [retval] = plot_data (d, X, C)
    for i=1:1:size(d, 1)
    switch d(i)
        case 1
            plot(X(i,1), X(i,2), 'ro');
            hold on;
        case 2
            plot(X(i,1), X(i,2), 'go');
            hold on;
        case 3
            plot(X(i,1), X(i,2), 'yo');
            hold on;
        case 4
            plot(X(i,1), X(i,2), 'co');
            hold on;
            
    end
end



plot(C(:,1), C(:,2), 'k+');
endfunction
