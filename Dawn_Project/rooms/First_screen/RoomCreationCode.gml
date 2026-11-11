var _ts = time_source_create(
    time_source_game,
    1,
    time_source_units_seconds,
    function() {
        room_goto_next();
    }
);

time_source_start(_ts);