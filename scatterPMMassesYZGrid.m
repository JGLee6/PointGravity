#    PointGravity: a simple point-wise Newtonian gravitation calculator.
#    Copyright (C) 2017  Charles A. Hagedorn
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, version 3.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

%randomly scatters point mass arrays in the y and z directions with standard deviation of the scan gridsize.
%Gridsize is hardcoded for scope.
function M = scatterPMMassesYZGrid(M);

	run3147PendulumParameters;

	R = pendulumPMScanGridSize * randn(rows(M), 2);

	M(:,2:3) = M(:,2:3) + R;

end
