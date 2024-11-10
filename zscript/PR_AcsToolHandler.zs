class PR_AcsToolHandler: EventHandler
{
    Array<PR_AcsCommand> commands;

    override void OnRegister()
    {
        commands.push(PR_AcsExecute.Create());
        commands.push(PR_AcsSuspend.Create());
        commands.push(PR_AcsTerminate.Create());
        commands.push(PR_AcsLockedExecute.Create());
        commands.push(PR_AcsLockedExecuteDoor.Create());
        commands.push(PR_AcsExecuteWithResult.Create());
        commands.push(PR_AcsExecuteAlways.Create());

        commands.push(PR_AcsNamedExecute.Create());
        commands.push(PR_AcsNamedSuspend.Create());
        commands.push(PR_AcsNamedTerminate.Create());
        commands.push(PR_AcsNamedLockedExecute.Create());
        commands.push(PR_AcsNamedLockedExecuteDoor.Create());
        commands.push(PR_AcsNamedExecuteWithResult.Create());
        commands.push(PR_AcsNamedExecuteAlways.Create());
        commands.push(PR_AcsScriptCall.Create());
    }

    override void NetworkProcess(ConsoleEvent e)
    {
        PlayerInfo player = players[e.Player];
        if (!player) { return; }
        Actor playerActor = player.mo;
        if (!playerActor) { return; }

        Array<String> eventAndArguments;
        e.Name.split(eventAndArguments, ":", TOK_KEEPEMPTY);

        string eventName = eventAndArguments[0];
        if (eventName != "pr_AcsToolCommand") { return; }

        if (eventAndArguments.Size() <= 1)
        {
            console.printf("[PR ACS Tool] Command name is missing");
            return;
        }

        string commandName = eventAndArguments[1];
        PR_AcsCommand command = GetCommandByName(commandName);
        if (!command)
        {
            console.printf("[PR ACS Tool] \"%s\" ACS command not found", commandName);
            return;
        }

        if (eventAndArguments.Size() <= 2)
        {
            console.printf("[PR ACS Tool] Script name or number is missing (first parameter)");
            return;
        }

        int scriptNumber = GetScriptNumber(eventAndArguments[2]);
        int arg0 = 0;
        int arg1 = 0;
        int arg2 = 0;
        int arg3 = 0;
        if (eventAndArguments.Size() >= 4) { arg0 = eventAndArguments[3].ToInt(); }
        if (eventAndArguments.Size() >= 5) { arg1 = eventAndArguments[4].ToInt(); }
        if (eventAndArguments.Size() >= 6) { arg2 = eventAndArguments[5].ToInt(); }
        if (eventAndArguments.Size() >= 7) { arg3 = eventAndArguments[6].ToInt(); }

        command.Exectue(scriptNumber, arg0, arg1, arg2, arg3);

        //netevent pr_AcsToolCommand:ACS_Execute:2
        //netevent pr_AcsToolCommand:ACS_Execute:1:1:2:23:24
    }

    private int GetScriptNumber(string scriptString)
    {
        if (scriptString == "0") { return 0; }
        int scriptNumber = scriptString.ToInt();
        if (scriptNumber != 0)
        {
            return scriptNumber;
        }
        return -int(Name(scriptString));
    }

    private PR_AcsCommand GetCommandByName(string name)
    {
        PR_AcsCommand command = null;
        for (int i = 0; i < commands.Size(); i++)
        {
            if (commands[i].GetName() == name)
            {
                return commands[i];
            }
        }
        return command;
    }
}
