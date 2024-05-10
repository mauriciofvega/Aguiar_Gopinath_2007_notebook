function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 20);

T = Aguiar_Gopinath_2007_notebook.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(17) = getPowerDeriv(T(4),1-params(2),1);
T(18) = (-(1/y(8)));
T(19) = T(10)+y(1)*T(5)*(-(y(7)*exp(y(11))))/(y(1)*y(1))*2*T(9);
T(20) = getPowerDeriv(exp(y(11))*y(12),params(8),1);

end
