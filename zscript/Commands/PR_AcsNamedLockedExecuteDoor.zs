class PR_AcsNamedLockedExecuteDoor : PR_AcsLockedExecuteDoor
{
    static PR_AcsCommand Create()
    {
        PR_AcsCommand command = new("PR_AcsNamedLockedExecuteDoor");
        command.name = "ACS_NamedLockedExecuteDoor";
        return command;
    }
}
