Maths Game

State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)


  Two player
Player - Current Player - I/O
    Lives             State
	 Name
    Take_lives        Behaviour
    Alive?            Behaviour

Game *
    Turns             State
    Current_player    State
    Players           State
    Next_turn         Behaviour
    AddPlayer         Behaviour
    Increment_Score   Behaviour
    Verify_answer     Behaviour
    
Question I/O
    X                 State
    Y                 State
    Operation         State



App I/O
    Game              State
    HowManyPlayers    Behaviour
    AskForPlayerName  Behaviour
    PresentQuestion   Behaviour
    AskForAnswer      Behaviour
    DisplayFinalScore Behaviour