class PR_AcsNamedExecuteAlways : PR_AcsExecuteAlways
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedExecuteAlways");
        command.name = "ACS_NamedExecuteAlways";
        return command;
    }
}
