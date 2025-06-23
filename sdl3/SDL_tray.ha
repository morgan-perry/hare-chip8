use types::c;

export @symbol("SDL_ClickTrayEntry") fn SDL_ClickTrayEntry(
	entry: nullable *SDL_TrayEntry,
) void;

export @symbol("SDL_CreateTray") fn SDL_CreateTray(
	icon: nullable *SDL_Surface,
	tooltip: nullable *const c::char,
) nullable *SDL_Tray;

export @symbol("SDL_CreateTrayMenu") fn SDL_CreateTrayMenu(
	tray: nullable *SDL_Tray,
) nullable *SDL_TrayMenu;

export @symbol("SDL_CreateTraySubmenu") fn SDL_CreateTraySubmenu(
	entry: nullable *SDL_TrayEntry,
) nullable *SDL_TrayMenu;

export @symbol("SDL_DestroyTray") fn SDL_DestroyTray(
	tray: nullable *SDL_Tray,
) void;

export @symbol("SDL_GetTrayEntries") fn SDL_GetTrayEntries(
	menu: nullable *SDL_TrayMenu,
	count: nullable *int,
) nullable *nullable *const SDL_TrayEntry;

export @symbol("SDL_GetTrayEntryChecked") fn SDL_GetTrayEntryChecked(
	entry: nullable *SDL_TrayEntry,
) bool;

export @symbol("SDL_GetTrayEntryEnabled") fn SDL_GetTrayEntryEnabled(
	entry: nullable *SDL_TrayEntry,
) bool;

export @symbol("SDL_GetTrayEntryLabel") fn SDL_GetTrayEntryLabel(
	entry: nullable *SDL_TrayEntry,
) nullable *const c::char;

export @symbol("SDL_GetTrayEntryParent") fn SDL_GetTrayEntryParent(
	entry: nullable *SDL_TrayEntry,
) nullable *SDL_TrayMenu;

export @symbol("SDL_GetTrayMenu") fn SDL_GetTrayMenu(
	tray: nullable *SDL_Tray,
) nullable *SDL_TrayMenu;

export @symbol("SDL_GetTrayMenuParentEntry") fn SDL_GetTrayMenuParentEntry(
	menu: nullable *SDL_TrayMenu,
) nullable *SDL_TrayEntry;

export @symbol("SDL_GetTrayMenuParentTray") fn SDL_GetTrayMenuParentTray(
	menu: nullable *SDL_TrayMenu,
) nullable *SDL_Tray;

export @symbol("SDL_GetTraySubmenu") fn SDL_GetTraySubmenu(
	entry: nullable *SDL_TrayEntry,
) nullable *SDL_TrayMenu;

export @symbol("SDL_InsertTrayEntryAt") fn SDL_InsertTrayEntryAt(
	menu: nullable *SDL_TrayMenu,
	pos: int,
	label: nullable *const c::char,
	flags: SDL_TrayEntryFlags,
) nullable *SDL_TrayEntry;

export @symbol("SDL_RemoveTrayEntry") fn SDL_RemoveTrayEntry(
	entry: nullable *SDL_TrayEntry,
) void;

export @symbol("SDL_SetTrayEntryCallback") fn SDL_SetTrayEntryCallback(
	entry: nullable *SDL_TrayEntry,
	callback: SDL_TrayCallback,
	userdata: nullable *opaque,
) void;

export @symbol("SDL_SetTrayEntryChecked") fn SDL_SetTrayEntryChecked(
	entry: nullable *SDL_TrayEntry,
	checked: bool,
) void;

export @symbol("SDL_SetTrayEntryEnabled") fn SDL_SetTrayEntryEnabled(
	entry: nullable *SDL_TrayEntry,
	enabled: bool,
) void;

export @symbol("SDL_SetTrayEntryLabel") fn SDL_SetTrayEntryLabel(
	entry: nullable *SDL_TrayEntry,
	label: nullable *const c::char,
) void;

export @symbol("SDL_SetTrayIcon") fn SDL_SetTrayIcon(
	tray: nullable *SDL_Tray,
	icon: nullable *SDL_Surface,
) void;

export @symbol("SDL_SetTrayTooltip") fn SDL_SetTrayTooltip(
	tray: nullable *SDL_Tray,
	tooltip: nullable *const c::char,
) void;

export type SDL_Tray = __struct_SDL_Tray;

export type SDL_TrayCallback = nullable *const fn(
	userdata: nullable *opaque,
	entry: nullable *SDL_TrayEntry,
) void;

export type SDL_TrayEntry = __struct_SDL_TrayEntry;

export type SDL_TrayEntryFlags = u32;

export type SDL_TrayMenu = __struct_SDL_TrayMenu;

export @symbol("SDL_UpdateTrays") fn SDL_UpdateTrays() void;

export type __struct_SDL_Tray = opaque;

export type __struct_SDL_TrayEntry = opaque;

export type __struct_SDL_TrayMenu = opaque;
