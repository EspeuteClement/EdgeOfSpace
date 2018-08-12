/// @description

show_debug_message("ROOM RESTART ------------");
event_perform(ev_create, 0);
room_goto_previous();

// Stop all music
audio_stop_all();