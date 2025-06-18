#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"tst_main"};
        author = ECSTRING(Main,authors);
        authors[] = {""};
        url = ECSTRING(Main,URL);
        VERSION_CONFIG;
    };
};


