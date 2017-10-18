/* This file runs on mission start */
if (dtk_server)exitWith{};
[]spawn speedcam_handler;
speedcam_init_done = true;