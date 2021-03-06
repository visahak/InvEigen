%{

  Copyright (c) 2015, Vatche Ishakian, Benjamin Lubin, Jesse Shore

  This file is part of the InvEigen Project.

  InvEigen is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, version 3 of the License.

  Foobar is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with InvEigen.  If not, see <http://www.gnu.org/licenses/>.

%}

function [Value] = ThethaEdgeWeight(X , K, alpha)

SoftMin = (X * exp( alpha * X) + K * exp( alpha * K) ) / (exp(alpha *X) + exp(alpha * K));
%SoftMin = -log(exp(alpha*X)+exp(alpha*K))/alpha;
Value = 1.0/K * SoftMin;

%Value = 1/K * softmin(X,K, Alpha);
