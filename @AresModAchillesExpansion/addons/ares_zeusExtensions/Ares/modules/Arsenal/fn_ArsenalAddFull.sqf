#include "\ares_zeusExtensions\Ares\module_header.hpp"

_unitUnderCursor = [_logic] call Ares_fnc_GetUnitUnderCursor;
if (not (isNull _unitUnderCursor)) then
{
	["AmmoboxInit", [_unitUnderCursor, true]] spawn BIS_fnc_arsenal;
	["Arsenal Added"] call Ares_fnc_ShowZeusMessage;
}
else
{
	["Must be placed on an object."] call Ares_fnc_ShowZeusMessage;
};

#include "\ares_zeusExtensions\Ares\module_footer.hpp"
