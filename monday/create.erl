  
-module(create).
-export([create/1, create_base_case_0/1, create_base_case_n/1, reverse_create/1]).

create(0) -> [];
create(N) -> 
  create(N-1) ++ [N]. %% bad as traverses left hand side each time

create_base_case_0(N) -> 
  create_base_case_0(N, []).
create_base_case_0(0, Buff) -> Buff;
create_base_case_0(N, Buff) -> 
  create_base_case_0(N-1, [N | Buff]).


create_base_case_n(N) -> 
  create_base_case_n(1, N).
create_base_case_n(N, N) -> [N];
create_base_case_n(M, N) -> 
  [M|create_base_case_n(M+1, N)].

reverse_create(1) -> [1];
reverse_create(N) -> [N | reverse_create(N-1)]. 
%% reverse_create(N) -> [N] ++ reverse_create(N-1).