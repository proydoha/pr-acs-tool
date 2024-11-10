class PR_AcsExecuteWithResult : PR_AcsCommand
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsExecuteWithResult");
        command.name = "ACS_ExecuteWithResult";
        return command;
    }

    override int Exectue(int script, int arg0, int arg1, int arg2, int arg3)
    {
        int result = ACS_ExecuteWithResult(script, arg0, arg1, arg2, arg3);
        console.printf("[PR ACS Tool] Script:     %d", script);
        console.printf("[PR ACS Tool] Arg1:       %d", arg0);
        console.printf("[PR ACS Tool] Arg2:       %d", arg1);
        console.printf("[PR ACS Tool] Arg3:       %d", arg2);
        console.printf("[PR ACS Tool] Arg4:       %d", arg3);
        console.printf("[PR ACS Tool] Result:     %d", result);
        return result;
    }
}
