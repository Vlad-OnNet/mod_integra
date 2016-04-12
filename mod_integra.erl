-module(mod_integra).
-author("Vladislav Dushenkov <vlad@onnet.su>").
-mod_title("Kazoo CRM integration module").
-mod_description("Read me later....").
-mod_prio(40).

-export([event/2]).

-include_lib("zotonic.hrl").

event(_A1, Context) ->
    lager:info("A1: ~p Context: ~p",[_A1,Context]),
    ?DEBUG(z_context:get_q_all(Context)),
    z_render:growl_error(?__("Missed event happened.",Context), Context).
