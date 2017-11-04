%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [u] = make_u(t,t_shift,c,n)
% Outputs: u - nx1 array of input current
% Inputs:
%   t - time at which to evaluate function (scalar)
%   t_shift - time shift
%   c - compartment at which current is applied
%   n - number of compartments
%
% This function returns the input current at a given time t with a time
% shift t_shift at the compartment c. It is used within a loop to 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [u] = make_u(t,t_shift,c,n)
u = zeros(n,1);

% % step function
% u(c) = heaviside(t-t_shift);


% decaying exp
tpeak = 50; % us
u(c) = (t-t_shift)/tpeak.*exp(1-(t-t_shift)/tpeak);
end