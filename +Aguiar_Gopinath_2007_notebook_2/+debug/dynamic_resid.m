function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(16, 1);
lhs = NaN(21, 1);
rhs = NaN(21, 1);
T(1) = (exp(y(27))*y(28))^params(8);
T(2) = y(22)^params(12);
T(3) = (1-y(28))^(1-params(12));
T(4) = T(2)*T(3);
T(5) = params(5)/2;
T(6) = params(11)*exp(y(27)*params(12)*(1-params(2)))*y(52);
T(7) = exp(y(30))*y(2)^(1-params(8));
T(8) = y(23)*exp(y(27))/y(2);
T(9) = T(8)-exp(params(1));
T(10) = T(5)*T(9)^2;
T(11) = y(2)*T(10);
T(12) = y(44)*exp(y(48))/y(23);
T(13) = 2*(T(12)-exp(params(1)));
T(14) = exp(y(48))*(-T(13));
T(15) = y(44)*T(14);
T(16) = 1-params(4)+(1-params(8))*y(45)/y(23)-T(5)*(T(15)/y(23)+(T(12)-exp(params(1)))^2);
lhs(1) = y(24);
rhs(1) = T(1)*T(7);
lhs(2) = y(30);
rhs(2) = params(9)*y(9)+x(1);
lhs(3) = y(27);
rhs(3) = (1-params(3))*params(1)+params(3)*y(6)+x(2);
lhs(4) = y(29);
rhs(4) = T(4)^(1-params(2))/(1-params(2));
lhs(5) = y(31);
rhs(5) = (1-params(2))*y(29)*params(12)/y(22);
lhs(6) = y(32);
rhs(6) = (1-params(2))*y(29)*(-(1-params(12)))/(1-y(28));
lhs(7) = y(22)+y(23)*exp(y(27));
rhs(7) = y(24)+(1-params(4))*y(2)-T(11)-y(4)+y(25)*exp(y(27))*y(26);
lhs(8) = 1/y(26);
rhs(8) = 1+params(10)+params(6)*(exp(y(25)-params(7))-1);
lhs(9) = exp(y(27))*y(31)*(1+params(5)*T(9));
rhs(9) = T(6)*T(16);
lhs(10) = y(32)+y(24)*params(8)*y(31)/y(28);
rhs(10) = 0;
lhs(11) = y(26)*exp(y(27))*y(31);
rhs(11) = T(6);
lhs(12) = y(35);
rhs(12) = T(11)+y(23)*exp(y(27))-(1-params(4))*y(2);
lhs(13) = y(33);
rhs(13) = y(22)/y(24);
lhs(14) = y(34);
rhs(14) = y(35)/y(24);
lhs(15) = y(36);
rhs(15) = (y(4)-y(25)*exp(y(27))*y(26))/y(24);
lhs(16) = y(37);
rhs(16) = log(y(34));
lhs(17) = y(38);
rhs(17) = log(y(33));
lhs(18) = y(39);
rhs(18) = log(y(24));
lhs(19) = y(40);
rhs(19) = log(y(22));
lhs(20) = y(41);
rhs(20) = log(y(35));
lhs(21) = y(42);
rhs(21) = y(6)+log(y(24))-log(y(3));
end