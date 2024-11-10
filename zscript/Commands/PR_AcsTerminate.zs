class PR_AcsTerminate : PR_AcsCommand
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsTerminate");
        command.name = "ACS_Terminate";
        return command;
    }

    override int Exectue(int script, int arg0, int arg1, int arg2, int arg3)
    {
        int result = ACS_Terminate(script, arg0);
        console.printf("[PR ACS Tool] Script:     %d", script);
        console.printf("[PR ACS Tool] Map number: %d", arg0);
        console.printf("[PR ACS Tool] Result:     %d", result);
        return result;
    }
}
