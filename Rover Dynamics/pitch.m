clear




%% Constants

M_R = 0.250 ;
M_F = 0.25;
M_G = 0.25;
M_M = 0.25;
M_1 = 0.32351;

D_1 = 7.94;          %Nsm
D_F =440080;       % Nsm
D_M =440080;         %Nsm
D_R =440080;        %Nsm
D_H =7.94;           %Nsm
D_L= 7.94;           %Nsm

K_M =196.96;        %N/m
K_R =196.96;        %N/m
K_L =196.96;        %N/m
K_F = 196.96;

%% Initial State
initial_state = [0; 0; 0; 0; 0; 0];  %[Y_F; Y_M; Y_R; P_F; P_M; h];


%% Iterative Time Steps

dt = 1;     % Time Step
t_f = 100;  % Seconds

%% Allocating Memory
num_points = uint8((t_f/dt)+1);
x_record = zeros(7,num_points);
t_record = zeros(1,num_points);
column_number = 1;

%% For Loop
    
 for t = 0:dt:t_f
     
     %% Initial Velocities 

    V_RG = initial_state(7)/M_1; 
    V_MG = initial_state(7)/M_1;
    V_FG = initial_state(7)/M_1;
     
      x_plus_dt = rk4(initial_state, dt, V_RG, V_MG, V_FG, M_M, M_F, M_R, M_1, D_F, D_M, D_R, D_1, K_M, K_R, K_L, K_F);
      
      x_dt = x_plus_dt;
      initial_state = x_plus_dt;
      column_number = column_number + 1;
      x_record(:, column_number) = x_dt;
      t_record(1,column_number) = t;
          
 end 