function out = roll_system_dynamics(x_t)

out(1) = V_HG - x_t(4)/M_H;
out(2) = V_LG - x_t(3)/M_L;
out(3) = D_L1*(V_LG - x_t(3)/M_L) + K_L*x_t(1) - D_L*(x_t(3)/M_L + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll);
out(4) = D_H1*(V_HG - x_t(4)/M_H) + K_H*x_t(2) - D_H*(x_t(4)/M_H + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll);
out(5) = L_1*D_L*(x_t(3)/M_L + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll) + L_1*D_H*(x_t(4)/M_H + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll);
out(6) = 2*(D_L*x_t(3)/M_L + D_L*x_t(5)/M_Roll - D_L*L_1*x_t(6)/J_Roll) + D_L*(x_t(3)/M_L + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll) + D_H*(x_t(4)/M_H + x_t(5)/M_Roll - L_1*x_t(6)/J_Roll);

end