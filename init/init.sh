#!/bin/bash
#
# Copyright (C) 2020 by UsergeTeam@Github, < https://github.com/UsergeTeam >.
#
# This file is part of < https://github.com/UsergeTeam/Userge > project,
# and is released under the "GNU v3.0 License Agreement".
# Please see < https://github.com/uaudith/Userge/blob/master/LICENSE >
#
# All rights reserved.

. init/logbot/logbot.sh
. init/utils.sh
. init/checks.sh

initUserge() {
    printLogo
    assertPrerequisites
    sendMessage "Initializing USERGE-X ..."
    assertEnvironment
    editLastMessage "Starting USERGE-X ..."
    printLine
}

startUserge() {
    runPythonModule userge "$@"
}

stopUserge() {
    sendMessage "Exiting USERGE-X ..."
    exit 0
}

runUserge() {
    initUserge
    startLogBotPolling
    startUserge "$@"
    stopUserge
}