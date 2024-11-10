class PR_AcsScriptCall : PR_AcsExecuteWithResult
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsScriptCall");
        command.name = "ACS_ScriptCall";
        return command;
    }
}
