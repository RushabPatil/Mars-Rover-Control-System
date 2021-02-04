function x_tplusdt = rk4(x_t,dt, V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F)

k_1 = dt*pitch_system_dynamics(x_t, V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F);
k_2 = dt*pitch_system_dynamics((x_t + 1/2*k_1), V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F);
k_3 = dt*pitch_system_dynamics((x_t + 1/2*k_2), V_RG, V_MG, V_FG, M_M, M_F, M_R,M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F);
k_4 = dt*pitch_system_dynamics((x_t + k_3),V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F);

x_tplusdt = x_t + (1/6)*k_1 + (1/3)*k_2 + (1/3)*k_3 + (1/6)*k_4;

end