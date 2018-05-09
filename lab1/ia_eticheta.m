## Copyright (C) 2018 mihai
## 

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} ia_eticheta (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mihai <mihai@bazz>
## Created: 2018-05-09

function [eticheta] = ia_eticheta (input)
  
    if input == 1
        eticheta = 'xr';
    elseif input ==0
        eticheta = 'xb';
    end

endfunction
