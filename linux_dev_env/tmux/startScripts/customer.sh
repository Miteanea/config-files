
#!/bin/bash
runCustomer() {
  # Session Name
  session="HTL"

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
