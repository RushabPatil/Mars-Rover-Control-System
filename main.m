%% Initial Velocities 

V_RG = 0; 
V_MG = 0;
V_FG = 0;

%% Constants

M_R = ;
M_F = ;
M_G = ;


%% Initial State
initial_State = [0; 0; 0; 0; 0; 0; 0];  %[Y_F; Y_M; Y_R; P_F; P_M; P_R; P_1; V_RG; V_MG; V_FG];


%% Iterative Time Steps

dt = 1;     % Time Step
t_f = 100;  % Seconds

%% Allocating Memory
num_points = uint8((t_b/dt_1)+1);
x_record = zeros(4,num_points);
t_record = zeros(1,num_points);
column_number = 1;

%% For Loop
    
 for t = 0:dt:t_f
     
      x_plus_dt = rk4(initial_state, V_RG, V_MG, V_FG, M_M, M_F, M_R);
      
      x_t = x_plus_dt;
      column_number = column_number + 1;
      x_record(:, column_number) = x_plus_dt;
      t_record(1,column_number) = t;
          
 end 