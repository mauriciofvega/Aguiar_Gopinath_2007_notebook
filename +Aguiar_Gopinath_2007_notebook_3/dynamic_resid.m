function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Aguiar_Gopinath_2007_notebook_3.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(21, 1);
    residual(1) = (y(8)) - (T(1)*T(7));
    residual(2) = (y(14)) - (params(9)*y(5)+x(it_, 1));
    residual(3) = (y(11)) - ((1-params(3))*params(1)+params(3)*y(4)+x(it_, 2));
    residual(4) = (y(13)) - (T(4)^(1-params(2))/(1-params(2)));
    residual(5) = (y(15)) - ((1-params(2))*y(13)*params(12)/y(6));
    residual(6) = (y(16)) - ((1-params(2))*y(13)*(-(1-params(12)))/(1-y(12)));
    residual(7) = (y(6)+y(7)*exp(y(11))) - (y(8)+(1-params(4))*y(1)-T(11)-y(3)+y(9)*exp(y(11))*y(10));
    residual(8) = (1/y(10)) - (1+params(10)+params(6)*(exp(y(9)-params(7))-1));
    residual(9) = (exp(y(11))*y(15)*(1+params(5)*T(9))) - (T(6)*T(16));
residual(10) = y(16)+y(8)*params(8)*y(15)/y(12);
    residual(11) = (y(10)*exp(y(11))*y(15)) - (T(6));
    residual(12) = (y(19)) - (T(11)+y(7)*exp(y(11))-(1-params(4))*y(1));
    residual(13) = (y(17)) - (y(6)/y(8));
    residual(14) = (y(18)) - (y(19)/y(8));
    residual(15) = (y(20)) - ((y(3)-y(9)*exp(y(11))*y(10))/y(8));
    residual(16) = (y(21)) - (log(y(18)));
    residual(17) = (y(22)) - (log(y(17)));
    residual(18) = (y(23)) - (log(y(8)));
    residual(19) = (y(24)) - (log(y(6)));
    residual(20) = (y(25)) - (log(y(19)));
    residual(21) = (y(26)) - (y(4)+log(y(8))-log(y(2)));

end
