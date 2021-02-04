function out = pitch_system_dynamics_1(x_t, V_RG, V_MG, V_FG, M_M, M_F, M_R)

out(1) = V_FG - (x_t(4)/M_F);
out(2) = V_MG - (x_t(5)/M_M);
out(3) = V_RG - (x_t(6)/M_R);
out(4) = (D_F*(V_FG - (x_t(4)/M_F)) + K_F*x_t(1)) - D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);
out(5) = (D_M*(V_MG - (x_t(5)/M_M)) + K_M*x_t(2)) - D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);
out(6) = (D_M*(V_RG - (x_t(6)/M_R)) + K_R*x_t(3)) - D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);
out(7) = D_1*(x_t(5)/M_M + x_t(4)/M_F + x_t(6)/M_R - x_t(7)/M_1);

end 