function out = pitch_system_dynamics(x_t, V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F)

out(1,1) = V_FG - (x_t(4)/M_F);
out(2,1) = V_MG - (x_t(5)/M_M);
out(3,1) = V_RG - ((L_3/J)*h);
out(4, 1) = (D_F*(V_FG - (x_t(4)/M_F)) + K_F*x_t(1)) - D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);
out(5,1) = (D_M*(V_MG - (x_t(5)/M_M)) + K_M*x_t(2)) - D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);
out(6,1) = 

end 