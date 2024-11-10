class PR_AcsNamedExecute : PR_AcsExecute
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedExecute");
        command.name = "ACS_NamedExecute";
        return command;
    }
}
