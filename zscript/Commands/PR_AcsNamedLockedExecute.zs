class PR_AcsNamedLockedExecute : PR_AcsLockedExecute
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedLockedExecute");
        command.name = "ACS_NamedLockedExecute";
        return command;
    }
}
