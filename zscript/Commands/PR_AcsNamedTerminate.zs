class PR_AcsNamedTerminate : PR_AcsTerminate
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedTerminate");
        command.name = "ACS_NamedTerminate";
        return command;
    }
}
