%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'Aguiar_Gopinath_2007_notebook_3';
M_.dynare_version = '6.1';
oo_.dynare_version = '6.1';
options_.dynare_version = '6.1';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eps_z'};
M_.exo_names_tex(1) = {'eps\_z'};
M_.exo_names_long(1) = {'eps_z'};
M_.exo_names(2) = {'eps_g'};
M_.exo_names_tex(2) = {'eps\_g'};
M_.exo_names_long(2) = {'eps_g'};
M_.endo_names = cell(21,1);
M_.endo_names_tex = cell(21,1);
M_.endo_names_long = cell(21,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'k'};
M_.endo_names_tex(2) = {'k'};
M_.endo_names_long(2) = {'k'};
M_.endo_names(3) = {'y'};
M_.endo_names_tex(3) = {'y'};
M_.endo_names_long(3) = {'y'};
M_.endo_names(4) = {'b'};
M_.endo_names_tex(4) = {'b'};
M_.endo_names_long(4) = {'b'};
M_.endo_names(5) = {'q'};
M_.endo_names_tex(5) = {'q'};
M_.endo_names_long(5) = {'q'};
M_.endo_names(6) = {'g'};
M_.endo_names_tex(6) = {'g'};
M_.endo_names_long(6) = {'g'};
M_.endo_names(7) = {'l'};
M_.endo_names_tex(7) = {'l'};
M_.endo_names_long(7) = {'l'};
M_.endo_names(8) = {'u'};
M_.endo_names_tex(8) = {'u'};
M_.endo_names_long(8) = {'u'};
M_.endo_names(9) = {'z'};
M_.endo_names_tex(9) = {'z'};
M_.endo_names_long(9) = {'z'};
M_.endo_names(10) = {'uc'};
M_.endo_names_tex(10) = {'uc'};
M_.endo_names_long(10) = {'uc'};
M_.endo_names(11) = {'ul'};
M_.endo_names_tex(11) = {'ul'};
M_.endo_names_long(11) = {'ul'};
M_.endo_names(12) = {'c_y'};
M_.endo_names_tex(12) = {'c\_y'};
M_.endo_names_long(12) = {'c_y'};
M_.endo_names(13) = {'i_y'};
M_.endo_names_tex(13) = {'i\_y'};
M_.endo_names_long(13) = {'i_y'};
M_.endo_names(14) = {'invest'};
M_.endo_names_tex(14) = {'invest'};
M_.endo_names_long(14) = {'invest'};
M_.endo_names(15) = {'nx'};
M_.endo_names_tex(15) = {'nx'};
M_.endo_names_long(15) = {'nx'};
M_.endo_names(16) = {'i_y_percentage'};
M_.endo_names_tex(16) = {'i\_y\_percentage'};
M_.endo_names_long(16) = {'i_y_percentage'};
M_.endo_names(17) = {'c_y_percentage'};
M_.endo_names_tex(17) = {'c\_y\_percentage'};
M_.endo_names_long(17) = {'c_y_percentage'};
M_.endo_names(18) = {'log_y'};
M_.endo_names_tex(18) = {'log\_y'};
M_.endo_names_long(18) = {'log_y'};
M_.endo_names(19) = {'log_c'};
M_.endo_names_tex(19) = {'log\_c'};
M_.endo_names_long(19) = {'log_c'};
M_.endo_names(20) = {'log_i'};
M_.endo_names_tex(20) = {'log\_i'};
M_.endo_names_long(20) = {'log_i'};
M_.endo_names(21) = {'delta_y'};
M_.endo_names_tex(21) = {'delta\_y'};
M_.endo_names_long(21) = {'delta_y'};
M_.endo_partitions = struct();
M_.param_names = cell(13,1);
M_.param_names_tex = cell(13,1);
M_.param_names_long = cell(13,1);
M_.param_names(1) = {'mu_g'};
M_.param_names_tex(1) = {'mu\_g'};
M_.param_names_long(1) = {'mu_g'};
M_.param_names(2) = {'sigma'};
M_.param_names_tex(2) = {'sigma'};
M_.param_names_long(2) = {'sigma'};
M_.param_names(3) = {'rho_g'};
M_.param_names_tex(3) = {'rho\_g'};
M_.param_names_long(3) = {'rho_g'};
M_.param_names(4) = {'delta'};
M_.param_names_tex(4) = {'delta'};
M_.param_names_long(4) = {'delta'};
M_.param_names(5) = {'phi'};
M_.param_names_tex(5) = {'phi'};
M_.param_names_long(5) = {'phi'};
M_.param_names(6) = {'psi'};
M_.param_names_tex(6) = {'psi'};
M_.param_names_long(6) = {'psi'};
M_.param_names(7) = {'b_star'};
M_.param_names_tex(7) = {'b\_star'};
M_.param_names_long(7) = {'b_star'};
M_.param_names(8) = {'alpha'};
M_.param_names_tex(8) = {'alpha'};
M_.param_names_long(8) = {'alpha'};
M_.param_names(9) = {'rho_z'};
M_.param_names_tex(9) = {'rho\_z'};
M_.param_names_long(9) = {'rho_z'};
M_.param_names(10) = {'r_star'};
M_.param_names_tex(10) = {'r\_star'};
M_.param_names_long(10) = {'r_star'};
M_.param_names(11) = {'beta'};
M_.param_names_tex(11) = {'beta'};
M_.param_names_long(11) = {'beta'};
M_.param_names(12) = {'gamma'};
M_.param_names_tex(12) = {'gamma'};
M_.param_names_long(12) = {'gamma'};
M_.param_names(13) = {'b_share'};
M_.param_names_tex(13) = {'b\_share'};
M_.param_names_long(13) = {'b_share'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 21;
M_.param_nbr = 13;
M_.orig_endo_nbr = 21;
M_.aux_vars = [];
M_.predetermined_variables = [ 2 4 ];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 21;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 6 0;
 1 7 27;
 2 8 28;
 3 9 0;
 0 10 0;
 4 11 29;
 0 12 0;
 0 13 0;
 5 14 0;
 0 15 30;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;]';
M_.nstatic = 15;
M_.nfwrd   = 1;
M_.npred   = 2;
M_.nboth   = 3;
M_.nsfwrd   = 4;
M_.nspred   = 5;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [16; 4; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'y' ;
  2 , 'name' , 'z' ;
  3 , 'name' , 'g' ;
  4 , 'name' , 'u' ;
  5 , 'name' , 'uc' ;
  6 , 'name' , 'ul' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'invest' ;
  13 , 'name' , 'c_y' ;
  14 , 'name' , 'i_y' ;
  15 , 'name' , 'nx' ;
  16 , 'name' , 'i_y_percentage' ;
  17 , 'name' , 'c_y_percentage' ;
  18 , 'name' , 'log_y' ;
  19 , 'name' , 'log_c' ;
  20 , 'name' , 'log_i' ;
  21 , 'name' , 'delta_y' ;
};
M_.mapping.c.eqidx = [4 5 7 13 19 ];
M_.mapping.k.eqidx = [1 7 9 12 ];
M_.mapping.y.eqidx = [1 7 9 10 13 14 15 18 21 ];
M_.mapping.b.eqidx = [7 8 15 ];
M_.mapping.q.eqidx = [7 8 11 15 ];
M_.mapping.g.eqidx = [1 3 7 9 11 12 15 21 ];
M_.mapping.l.eqidx = [1 4 6 10 ];
M_.mapping.u.eqidx = [4 5 6 ];
M_.mapping.z.eqidx = [1 2 ];
M_.mapping.uc.eqidx = [5 9 10 11 ];
M_.mapping.ul.eqidx = [6 10 ];
M_.mapping.c_y.eqidx = [13 17 ];
M_.mapping.i_y.eqidx = [14 16 ];
M_.mapping.invest.eqidx = [12 14 20 ];
M_.mapping.nx.eqidx = [15 ];
M_.mapping.i_y_percentage.eqidx = [16 ];
M_.mapping.c_y_percentage.eqidx = [17 ];
M_.mapping.log_y.eqidx = [18 ];
M_.mapping.log_c.eqidx = [19 ];
M_.mapping.log_i.eqidx = [20 ];
M_.mapping.delta_y.eqidx = [21 ];
M_.mapping.eps_z.eqidx = [2 ];
M_.mapping.eps_g.eqidx = [3 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 1;
M_.block_structure.block(1).endo_nbr = 2;
M_.block_structure.block(1).mfs = 2;
M_.block_structure.block(1).equation = [ 2 3];
M_.block_structure.block(1).variable = [ 9 6];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 4;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [1 2 3 4 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 9;
M_.block_structure.block(2).mfs = 7;
M_.block_structure.block(2).equation = [ 4 6 1 5 11 8 7 9 10];
M_.block_structure.block(2).variable = [ 8 11 7 1 5 4 2 10 3];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 30;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [4 5 0 0 8 9 10 11 12 13 14 19 20 21 ];
M_.block_structure.block(3).Simulation_Type = 1;
M_.block_structure.block(3).endo_nbr = 10;
M_.block_structure.block(3).mfs = 10;
M_.block_structure.block(3).equation = [ 12 20 19 21 14 13 18 17 16 15];
M_.block_structure.block(3).variable = [ 14 20 19 21 13 12 18 17 16 15];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 14;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [11 12 13 14 15 16 17 18 19 20 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([]);
M_.block_structure.block(1).g1_sparse_colval = int32([]);
M_.block_structure.block(1).g1_sparse_colptr = int32([]);
M_.block_structure.block(2).g1_sparse_rowval = int32([5 1 5 6 1 2 7 2 5 7 3 4 5 4 5 5 6 2 3 6 7 1 5 7 6 3 6 6 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([4 5 5 5 8 8 8 9 9 9 10 10 10 11 11 12 12 13 13 13 13 14 14 14 19 20 20 21 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 1 1 2 5 5 5 8 11 14 16 18 22 25 25 25 25 25 26 28 29 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([]);
M_.block_structure.block(3).g1_sparse_colval = int32([]);
M_.block_structure.block(3).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 9 6 8 11 7 1 5 4 2 10 3 14 20 19 21 13 12 18 17 16 15];
M_.block_structure.equation_reordered = [ 2 3 4 6 1 5 11 8 7 9 10 12 20 19 21 14 13 18 17 16 15];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 2;
 2 9;
 3 6;
 7 2;
 7 4;
 9 2;
 12 2;
 15 4;
 21 3;
 21 6;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 3;
 1 6;
 1 7;
 1 9;
 2 9;
 3 6;
 4 1;
 4 7;
 4 8;
 5 1;
 5 8;
 5 10;
 6 7;
 6 8;
 6 11;
 7 1;
 7 2;
 7 3;
 7 4;
 7 5;
 7 6;
 8 4;
 8 5;
 9 2;
 9 6;
 9 10;
 10 3;
 10 7;
 10 10;
 10 11;
 11 5;
 11 6;
 11 10;
 12 2;
 12 6;
 12 14;
 13 1;
 13 3;
 13 12;
 14 3;
 14 13;
 14 14;
 15 3;
 15 4;
 15 5;
 15 6;
 15 15;
 16 13;
 16 16;
 17 12;
 17 17;
 18 3;
 18 18;
 19 1;
 19 19;
 20 14;
 20 20;
 21 3;
 21 21;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 9 2;
 9 3;
 9 6;
 9 10;
 11 10;
];
M_.block_structure.dyn_tmp_nbr = 19;
M_.state_var = [9 6 4 2 3 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(21, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(13, 1);
M_.endo_trends = struct('deflator', cell(21, 1), 'log_deflator', cell(21, 1), 'growth_factor', cell(21, 1), 'log_growth_factor', cell(21, 1));
M_.NNZDerivatives = [76; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([1 7 9 12 21 7 15 3 21 2 4 5 7 13 19 7 9 12 1 7 10 13 14 15 18 21 7 8 15 7 8 11 15 1 3 7 9 11 12 15 1 4 6 10 4 5 6 1 2 5 9 10 11 6 10 13 17 14 16 12 14 20 15 16 17 18 19 20 21 9 9 9 9 11 2 3 ]);
M_.dynamic_g1_sparse_colval = int32([2 2 2 2 3 4 4 6 6 9 22 22 22 22 22 23 23 23 24 24 24 24 24 24 24 24 25 25 25 26 26 26 26 27 27 27 27 27 27 27 28 28 28 28 29 29 29 30 30 31 31 31 31 32 32 33 33 34 34 35 35 35 36 37 38 39 40 41 42 44 45 48 52 52 64 65 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 5 6 8 8 10 10 10 11 11 11 11 11 11 11 11 11 11 11 11 11 16 19 27 30 34 41 45 48 50 54 56 58 60 63 64 65 66 67 68 69 70 70 71 72 72 72 73 73 73 73 75 75 75 75 75 75 75 75 75 75 75 75 76 77 ]);
M_.lhs = {
'y'; 
'z'; 
'g'; 
'u'; 
'uc'; 
'ul'; 
'c+k*exp(g)'; 
'1/q'; 
'exp(g)*uc*(1+phi*(k*exp(g)/k(-1)-exp(mu_g)))'; 
'ul+y*alpha*uc/l'; 
'q*exp(g)*uc'; 
'invest'; 
'c_y'; 
'i_y'; 
'nx'; 
'i_y_percentage'; 
'c_y_percentage'; 
'log_y'; 
'log_c'; 
'log_i'; 
'delta_y'; 
};
M_.static_tmp_nbr = [8; 2; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 2];
M_.block_structure_stat.block(1).variable = [ 9];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 3];
M_.block_structure_stat.block(2).variable = [ 6];
M_.block_structure_stat.block(3).Simulation_Type = 1;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 21];
M_.block_structure_stat.block(3).variable = [ 21];
M_.block_structure_stat.block(4).Simulation_Type = 6;
M_.block_structure_stat.block(4).endo_nbr = 9;
M_.block_structure_stat.block(4).mfs = 9;
M_.block_structure_stat.block(4).equation = [ 4 5 6 7 8 9 10 11 1];
M_.block_structure_stat.block(4).variable = [ 8 1 11 5 4 2 7 10 3];
M_.block_structure_stat.block(5).Simulation_Type = 1;
M_.block_structure_stat.block(5).endo_nbr = 9;
M_.block_structure_stat.block(5).mfs = 9;
M_.block_structure_stat.block(5).equation = [ 12 20 19 14 13 18 17 16 15];
M_.block_structure_stat.block(5).variable = [ 14 20 19 13 12 18 17 16 15];
M_.block_structure_stat.variable_reordered = [ 9 6 21 8 1 11 5 4 2 7 10 3 14 20 19 13 12 18 17 16 15];
M_.block_structure_stat.equation_reordered = [ 2 3 21 4 5 6 7 8 9 10 11 1 12 20 19 14 13 18 17 16 15];
M_.block_structure_stat.incidence.sparse_IM = [
 1 2;
 1 3;
 1 6;
 1 7;
 1 9;
 2 9;
 3 6;
 4 1;
 4 7;
 4 8;
 5 1;
 5 8;
 5 10;
 6 7;
 6 8;
 6 11;
 7 1;
 7 2;
 7 3;
 7 4;
 7 5;
 7 6;
 8 4;
 8 5;
 9 2;
 9 3;
 9 6;
 9 10;
 10 3;
 10 7;
 10 10;
 10 11;
 11 5;
 11 6;
 11 10;
 12 2;
 12 6;
 12 14;
 13 1;
 13 3;
 13 12;
 14 3;
 14 13;
 14 14;
 15 3;
 15 4;
 15 5;
 15 6;
 15 15;
 16 13;
 16 16;
 17 12;
 17 17;
 18 3;
 18 18;
 19 1;
 19 19;
 20 14;
 20 20;
 21 6;
 21 21;
];
M_.block_structure_stat.tmp_nbr = 13;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 2 3 1 2 4 3 7 4 5 8 4 5 4 6 9 1 3 7 9 2 6 7 8 4 6 7 9 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 1 1 2 2 2 3 3 4 4 4 5 5 6 6 6 7 7 7 7 8 8 8 8 9 9 9 9 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 4 7 9 12 14 17 21 25 29 ]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([4 5 7 13 19 1 7 9 12 1 7 9 10 13 14 15 18 7 8 15 7 8 11 15 1 3 7 9 11 12 15 21 1 4 6 10 4 5 6 1 2 5 9 10 11 6 10 13 17 14 16 12 14 20 15 16 17 18 19 20 21 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 1 2 2 2 2 3 3 3 3 3 3 3 3 4 4 4 5 5 5 5 6 6 6 6 6 6 6 6 7 7 7 7 8 8 8 9 9 10 10 10 10 11 11 12 12 13 13 14 14 14 15 16 17 18 19 20 21 ]);
M_.static_g1_sparse_colptr = int32([1 6 10 18 21 25 33 37 40 42 46 48 50 52 55 56 57 58 59 60 61 62 ]);
M_.params(11) = 0.9803921568627451;
beta = M_.params(11);
M_.params(12) = 0.36;
gamma = M_.params(12);
M_.params(13) = 0.1;
b_share = M_.params(13);
M_.params(6) = 0.001;
psi = M_.params(6);
M_.params(8) = 0.68;
alpha = M_.params(8);
M_.params(2) = 2;
sigma = M_.params(2);
M_.params(4) = 0.05;
delta = M_.params(4);
M_.params(5) = 4;
phi = M_.params(5);
M_.params(1) = 0.00727348396649847;
mu_g = M_.params(1);
M_.params(9) = 0.95;
rho_z = M_.params(9);
M_.params(3) = 0.01;
rho_g = M_.params(3);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.007025)^2;
M_.Sigma_e(2, 2) = (0.014982)^2;
options_.irf = 0;
options_.nofunctions = true;
options_.nomoments = true;
options_.order = 1;
options_.periods = 100000;
var_list_ = {'log_y';'delta_y';'c';'invest';'nx'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
send_endogenous_variables_to_workspace;    
log_Gamma_0=0; 
log_Gamma(1,1)=g(1,1)+log_Gamma_0; 
log_y_nonstationary = zeros(options_.periods,1);
log_c_nonstationary = zeros(options_.periods,1);
log_i_nonstationary = zeros(options_.periods,1);
for ii=2:options_.periods
log_Gamma(ii,1)=g(ii,1)+log_Gamma(ii-1,1);
log_y_nonstationary(ii,1)=log_y(ii,1)+log_Gamma(ii-1,1);
log_c_nonstationary(ii,1)=log_c(ii,1)+log_Gamma(ii-1,1);
log_i_nonstationary(ii,1)=log_i(ii,1)+log_Gamma(ii-1,1);
end
[ytrend,ycyclical]=sample_hp_filter([log_y_nonstationary log_c_nonstationary log_i_nonstationary nx],1600);
standard_devs=std(ycyclical)*100;
standard_dev_first_diff=std(delta_y)*100;
relative_standard_devs=standard_devs./standard_devs(1);
autocorrelations(1,1)=corr(ycyclical(2:end,1),ycyclical(1:end-1,1));
autocorrelations(2,1)=corr(delta_y(2:end,1),delta_y(1:end-1,1));
correlations=corr(ycyclical(:,1),ycyclical(:,2:end));
fprintf('\n Table 5 - Moments Canada \n');
fprintf('%20s \t %3.2f\n','sigma(y)',standard_devs(1,1));
fprintf('%20s \t %3.2f\n','sigma(delta y)',standard_dev_first_diff);
fprintf('%20s \t %3.2f\n','sigma(c)/sigma(y)',relative_standard_devs(2));
fprintf('%20s \t %3.2f\n','sigma(i)/sigma(y)',relative_standard_devs(3));
fprintf('%20s \t %3.2f\n','sigma(nx)/sigma(y)',relative_standard_devs(4));
fprintf('%20s \t %3.2f\n','rho(y)',autocorrelations(1,1));
fprintf('%20s \t %3.2f\n','rho(delta y)',autocorrelations(2,1));
fprintf('%20s \t %3.2f\n','rho(y,nx)',correlations(3));
fprintf('%20s \t %3.2f\n','rho(y,c)',correlations(1));
fprintf('%20s \t %3.2f\n','rho(y,i)',correlations(2));


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Aguiar_Gopinath_2007_notebook_3_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end