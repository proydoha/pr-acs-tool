class PR_AcsLockedExecuteDoor : PR_AcsCommand
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsLockedExecuteDoor");
        command.name = "ACS_LockedExecuteDoor";
        return command;
    }

    override int Exectue(int script, int arg0, int arg1, int arg2, int arg3)
    {
        int result = ACS_LockedExecuteDoor(script, arg0, arg1, arg2, arg3);
        console.printf("[PR ACS Tool] Script:     %d", script);
        console.printf("[PR ACS Tool] Map number: %d", arg0);
        console.printf("[PR ACS Tool] Arg1:       %d", arg1);
        console.printf("[PR ACS Tool] Arg2:       %d", arg2);
        console.printf("[PR ACS Tool] Lock:       %d", arg3);
        console.printf("[PR ACS Tool] Result:     %d", result);
        return result;
    }
}
