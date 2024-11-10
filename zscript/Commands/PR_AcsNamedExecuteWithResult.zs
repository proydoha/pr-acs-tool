class PR_AcsNamedExecuteWithResult : PR_AcsExecuteWithResult
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedExecuteWithResult");
        command.name = "ACS_NamedExecuteWithResult";
        return command;
    }
}
