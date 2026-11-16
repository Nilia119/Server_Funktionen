class CfgFunctions {
	class Nilia_DB_Functions {
		tag = "Nilia";

		// Kategorie 1: Datenbank-Funktionen (ergeben Nilia_fnc_DB_...)
		class Nilia_DB_Functions_Database {
			file = "Nilia_DB\functions";

			class DB_Init { postInit = 1; };
			class DB_RegisterPlayer {};
			class DB_ShowWelcome {};
		};

	};
};