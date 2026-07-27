class CfgRemoteExec {
	class Functions {
		mode = 2;
		jip = 1;

		class Nilia_fnc_SetETR {
			allowedTargets = 2; // 2 = Darf exklusiv an den Server gesendet werden
			jip = 1;    // 1 = Wird JIP gesendet, 0 = nicht
		};
		class Nilia_fnc_SetRank {
			allowedTargets = 2; // 2 = Darf exklusiv an den Server gesendet werden
			jip = 1;
		};
	};
	class Commands {
		mode = 1;
	};
};