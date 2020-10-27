%%%-------------------------------------------------------------------
%%% @author lis
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. окт. 2020 16:33
%%%-------------------------------------------------------------------
-module(hello).
-author("lis").

%% API
-export([read_data/0]).
read_data() ->
  {_, Name} = io:fread("\nName: ", "~s"),
  {_, Age} = io:fread("\nAge: ", "~s"),
  {_, File} = file:open('task.txt', [write]),
  io:fwrite(File,"~s", ["\n Name12412: "]),
  io:fwrite(File,"~s", Name),
  io:fwrite(File,"~s", ["\n Age: "]),
  io:fwrite(File,"~s", Age),
  file:close(File).