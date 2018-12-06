-module(blackb_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("blackb.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    blackb_sup:start_link().

stop(_State) ->
    ok.
