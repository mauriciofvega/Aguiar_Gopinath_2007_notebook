function [lhs, rhs] = static_resid(y, x, params)
T = NaN(8, 1);
lhs = NaN(21, 1);
rhs = NaN(21, 1);
T(1) = (exp(y(6))*y(7))^params(8);
T(2) = exp(y(9))*y(2)^(1-params(8));
T(3) = y(1)^params(12);
T(4) = (1-y(7))^(1-params(12));
T(5) = T(3)*T(4);
T(6) = params(5)/2;
T(7) = (exp(y(6))-exp(params(1)))^2;
T(8) = 1-params(4)+y(3)*(1-params(8))/y(2)-T(6)*(T(7)+exp(y(6))*(-(2*(exp(y(6))-exp(params(1))))));
lhs(1) = y(3);
rhs(1) = T(1)*T(2);
lhs(2) = y(9);
rhs(2) = y(9)*params(9)+x(1);
lhs(3) = y(6);
rhs(3) = (1-params(3))*params(1)+y(6)*params(3)+x(2);
lhs(4) = y(8);
rhs(4) = T(5)^(1-params(2))/(1-params(2));
lhs(5) = y(10);
rhs(5) = (1-params(2))*y(8)*params(12)/y(1);
lhs(6) = y(11);
rhs(6) = (1-params(2))*y(8)*(-(1-params(12)))/(1-y(7));
lhs(7) = y(1)+exp(y(6))*y(2);
rhs(7) = y(3)+y(2)*(1-params(4))-y(2)*T(6)*T(7)-y(4)+y(4)*exp(y(6))*y(5);
lhs(8) = 1/y(5);
rhs(8) = 1+params(10)+params(6)*(exp(y(4)-params(7))-1);
lhs(9) = exp(y(6))*y(10)*(1+params(5)*(exp(y(6))-exp(params(1))));
rhs(9) = y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)))*T(8);
lhs(10) = y(11)+y(3)*params(8)*y(10)/y(7);
rhs(10) = 0;
lhs(11) = y(5)*exp(y(6))*y(10);
rhs(11) = y(10)*params(11)*exp(y(6)*params(12)*(1-params(2)));
lhs(12) = y(14);
rhs(12) = y(2)*T(6)*T(7)+exp(y(6))*y(2)-y(2)*(1-params(4));
lhs(13) = y(12);
rhs(13) = y(1)/y(3);
lhs(14) = y(13);
rhs(14) = y(14)/y(3);
lhs(15) = y(15);
rhs(15) = (y(4)-y(4)*exp(y(6))*y(5))/y(3);
lhs(16) = y(16);
rhs(16) = log(y(13));
lhs(17) = y(17);
rhs(17) = log(y(12));
lhs(18) = y(18);
rhs(18) = log(y(3));
lhs(19) = y(19);
rhs(19) = log(y(1));
lhs(20) = y(20);
rhs(20) = log(y(14));
lhs(21) = y(21);
rhs(21) = y(6);
end
