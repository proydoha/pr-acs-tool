class PR_AcsSuspend : PR_AcsCommand
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsSuspend");
        command.name = "ACS_Suspend";
        return command;
    }

    override int Exectue(int script, int arg0, int arg1, int arg2, int arg3)
    {
        int result = ACS_Suspend(script, arg0);
        console.printf("[PR ACS Tool] Script:     %d", script);
        console.printf("[PR ACS Tool] Map number: %d", arg0);
        console.printf("[PR ACS Tool] Result:     %d", result);
        return result;
    }
}
