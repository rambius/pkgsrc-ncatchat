#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# Chat Daemon based on ncat from nmap
#
# PROVIDE: ncatchatd
# REQUIRE: DAEMON

. /etc/rc.subr

name="ncatchatd"
rcvar=${name}
extra_commands="status"
start_cmd="@PREFIX@/bin/ncatchatsrv.sh start"
stop_cmd="@PREFIX@/bin/ncatchatsrv.sh stop"
status_cmd="@PREFIX@/bin/ncatchatsrv.sh status"

load_rc_config $name
run_rc_command "$1"
