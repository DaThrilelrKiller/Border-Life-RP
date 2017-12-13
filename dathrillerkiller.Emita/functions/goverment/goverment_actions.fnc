rathaus addaction ["Vote for Governor","noscript.sqf","call goverment_vote",1,false,true,"","!V_voted"];
rathaus addaction ["Run for Governor","noscript.sqf","call goverment_run",1,false,true,"","!V_voted && {isCiv}"];
rathaus addaction ["Change The Laws","scripts\maindialogs.sqf",["gesetz"],1,false,true,""," (call goverment_govonor == player)"];
rathaus addaction ["Change The Taxes","scripts\maindialogs.sqf",["steuern"],1,false,true,""," (call goverment_govonor == player)"];
