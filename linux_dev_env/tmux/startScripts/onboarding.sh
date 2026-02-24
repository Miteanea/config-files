#!/bin/bash

runOnboarding() {
    # Session Name
    session="Spc_Onboarding"

    mainDir="/home/dmitric/projects/spc/code/app2app_onboarding/"
    apiGatewayDir="/home/dmitric/projects/spc/code/app2app_onboarding/ApiGateway/"
    apiGatewayTestsDir="/home/dmitric/projects/spc/code/app2app_onboarding/ApiGateway.Tests/"

    # Start New Session with our name
    tmux new-session -dP -c $mainDir -n 'Main' -s $session
    #

    # Create and setup pane for hugo server
    tmux new-window -a -t $session:0 -n 'Core' -c $apiGatewayDir

    tmux new-window -a -t $session:1 -n 'Core.Tests' -c $apiGatewayTestsDir

    tmux attach-session -t $session:0
}
