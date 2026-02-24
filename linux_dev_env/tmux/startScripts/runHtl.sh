
runHtl() {
    # Session Name
    session="HTL"
    sessionexists=$(tmux ls | grep $session)

    # Only create tmux session if it doesn't already exist
    if [ "$sessionexists" = "" ]
    then

        htlDir="/home/dmitric/projects/htl/code"
        CoreDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core/Core"
        CoreTestDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Core.Tests"
        WebDir="/home/dmitric/projects/htl/code/CloudDisplayServer/Web/ClientApp"
        TsContrDir="/home/dmitric/projects/htl/code/CloudDisplayController"
        CSharp_ContrDir="/home/dmitric/projects/htl/code/CloudDisplayControllerDotNet/CloudDisplayControllerDotNet"
        CSharp_TestDir="/home/dmitric/projects/htl/code/CloudDisplayControllerDotNet/CloudDisplayControllerDotNet.Tests"
        ScheduleViewer="/home/dmitric/projects/htl/code/CloudDisplayScheduleViewer"

        # Start New Session with our name
        tmux new-session -dP -c $htlDir -n 'Main' -s $session

        # Create and setup pane for hugo server
        tmux new-window -a -t $session:0 -n 'Core' -c "$CoreDir"
        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window  -a -t $session:1 -n 'Core.Tests' -c $CoreTestDir
        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window -a -t $session:2 -n 'Web' -c $WebDir
        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window -a -t $session:3 -n 'ts_Controller'  -c $TsContrDir
        # tmux send-keys -d -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window -a -t $session:4 -n 'C#_Controller' -c $CSharp_ContrDir
        # tmux send-keys -d -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window -a -t $session:5 -n 'C#_Tests' -c $CSharp_TestDir
        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m

        tmux new-window -a -t $session:6 -n 'ScheduleViewer' -c $ScheduleViewer
        # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m
    fi

    # Attach Session, on the Main window
    tmux attach-session -t $session:0
}
