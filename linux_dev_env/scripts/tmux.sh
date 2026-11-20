#!/bin/bash

runOnboarding() {
    # Session Name
    session="Spc_Onboarding"

    mainDir="/home/dmitric/projects/spc/code/app2app_onboarding/"
    apiGatewayDir="/home/dmitric/projects/spc/code/app2app_onboarding/ApiGateway/"
    apiGatewayTestsDir="/home/dmitric/projects/spc/code/app2app_onboarding/ApiGateway.Tests/"

    # Start New Session with our name
    tmux new-session -dP -c $mainDir -n 'Main' -s $session

    tmux new-window -a -t $session:0 -n 'Core' -c $apiGatewayDir
    tmux new-window -a -t $session:1 -n 'Core.Tests' -c $apiGatewayTestsDir
    tmux new-window -a -t $session:2 -n 'RunWindow' -c $apiGatewayDir

    tmux attach-session -t $session:0
}

runHtl() {
    # Session Name
    session="HTL"
    sessionexists=$(tmux ls | grep $session)

    # Only create tmux session if it doesn't already exist
    if [ "$sessionexists" = "" ]
    then

        htlDir="/home/dmitric/projects/htl/code"
        CoreDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core/Core"
        CoreTestDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core/Core.Tests"
        WebDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Web/ClientApp"
        TsContrDir="/home/dmitric/projects/htl/code/CloudDisplayController/Controller"
        CSharp_ContrDir="/home/dmitric/projects/htl/code/CloudDisplayController/DotnetController/CloudDisplayControllerDotNet"
        CSharp_TestDir="/home/dmitric/projects/htl/code/CloudDisplayController/DotnetController/CloudDisplayControllerDotNet.Tests"
        ScheduleViewer="/home/dmitric/projects/htl/code/CloudDisplayScheduleViewer"
        MiniPcImageBuilder="/home/dmitric/projects/htl/code/minipcimagebuilder"

        # Start New Session with our name
        tmux new-session -dP -c $htlDir -n 'Main' -s $session

        # Create and setup pane for hugo server
        tmux new-window -a -t $session:0 -n 'Core' -c "$CoreDir"
        tmux new-window -a -t $session:1 -n 'Core.Tests' -c $CoreTestDir
        tmux new-window -a -t $session:2 -n 'Web' -c $WebDir
        tmux new-window -a -t $session:3 -n 'ts_Controller'  -c $TsContrDir
        tmux new-window -a -t $session:4 -n 'C#_Controller' -c $CSharp_ContrDir
        tmux new-window -a -t $session:5 -n 'C#_Tests' -c $CSharp_TestDir
        tmux new-window -a -t $session:6 -n 'ScheduleViewer' -c $ScheduleViewer
        tmux new-window -a -t $session:7 -n 'MiniPcImageBuilder' -c $MiniPcImageBuilder

        tmux new-window -a -t $session:8 -n 'RunWindow' -c $TsContrDir
        tmux selectw -t 'RunWindow'
        tmux splitw -bv -c $TsContrDir
        tmux splitw -fh -c $CoreDir
        tmux splitw -c $WebDir

        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m
    fi

    # Attach Session, on the Main window
    tmux attach-session -t $session:0
}

runCustomer() {
    # Session Name
    session="u"

    htlDir="/home/dmitric/projects/htl/code/"
    CoreDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core/Core/"
    CoreTestDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core.Tests"
    WebDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Web/ClientApp/"
    TsContrDir="/home/dmitric/projects/htl/code/CloudDisplayController/"
    CSharp_ContrDir="/home/dmitric/projects/htl/code/CloudDisplayControllerDotNet/CloudDisplayControllerDotNet/"
    CSharp_TestDir="/home/dmitric/projects/htl/code/CloudDisplayControllerDotNet/CloudDisplayControllerDotNet.Tests/"

    # Start New Session with our name
    tmux new-session -d -s $session

    # Name first Window and start zsh
    tmux rename-window -t 0 'Main' -c $htlDir
    # tmux send-keys -t 'Main' 'zsh' C-m 'clear' C-m

    # Create and setup pane for hugo server
    tmux new-window -t $session:1 -n 'Core' -c $CoreDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux new-window -t $session:2 -n 'Core.Tests' -c $CoreTestDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux new-window -t $session:3 -n 'Web' -c $WebDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux new-window -t $session:4 -n 'ts_Controller'  -c $TsContrDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux new-window -t $session:5 -n 'C#_Controller' -c $CSharp_ContrDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux new-window -t $session:6 -n 'C#_Tests' -c $CSharp_TestDir
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

    tmux attach-session -t $session:0
}


runArgo() {
    # Session Name
    session="Argo"

    mainDir="/home/dmitric/projects/Argo/argo"
    backend="/home/dmitric/projects/Argo/argo/backend/"
    frontend="/home/dmitric/projects/Argo/argo/frontend"
    mock="/home/dmitric/projects/Argo/argo/integrationTestProject/"
    analyzer="/home/dmitric/projects/Argo/argoAnalyzer/"

    # Start New Session with our name
    tmux new-session -dP -c $mainDir -n 'Main' -s $session
    tmux selectw -t 'Main'
    tmux splitw -bh -c $mainDir
    tmux send-keys -t "$session:Main.{right}" 'claude' C-m
    # tmux splitw -fh -c $CoreDir
    # tmux splitw -c $WebDir

    tmux new-window -a -t $session:0 -n 'backend' -c $backend
    tmux new-window -a -t $session:1 -n 'frontend' -c $frontend
    tmux new-window -a -t $session:2 -n 'mock' -c $mock
    tmux new-window -a -t $session:3 -n 'analyzer' -c $analyzer

    tmux attach-session -t $session:0
}
