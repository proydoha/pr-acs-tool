class PR_AcsNamedSuspend : PR_AcsSuspend
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedSuspend");
        command.name = "ACS_NamedSuspend";
        return command;
    }
}
