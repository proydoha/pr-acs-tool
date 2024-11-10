class PR_AcsCommand abstract
{
    protected string name;

    string GetName()
    {
        return name;
    }

    abstract int Exectue(int script, int arg0, int arg1, int arg2, int arg3);
}
