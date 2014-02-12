/*
 * os_specific_l.c
 *
 *  Created on: May 28, 2012
 *      Author: bkemper
 */

#include "os_specific.h"

int check_set_evar(char const* evar,
                          char const* pvar)
{
    /* set the pin env var to evar's value if evar has a non-null value */
    char* val = 0;
    val = getenv(evar);
    if (val) {
            setenv(pvar, val, 1);
            unsetenv(evar);
            return 1;
        }
    return 0;
}

void update_environment(char* base_path)
{
    int modval=0;
    modval |= check_set_evar("DYLD_LIBRARY_PATH",
                                         "PIN_APP_DYLD_LIBRARY_PATH");

    modval |= check_set_evar("DYLD_INSERT_LIBRARIES",
                                         "PIN_APP_DYLD_INSERT_LIBRARIES");

    modval |= check_set_evar("DYLD_BIND_AT_LAUNCH",
                                         "PIN_APP_DYLD_BIND_AT_LAUNCH");

    if (modval) {
            setenv("PIN_DYLD_RESTORE_REQUIRED", "t", 1);
        }
    (void)base_path; //pacify compiler
}

char* find_driver_name(char* argv0)
{
    return argv0;
}

char** build_child_argv(char* base_path, int argc, char** argv, int user_argc,
        char** user_argv)
{
    char** child_argv = (char**) malloc(sizeof(char*) * (argc + user_argc + 3));
    int var = 0, user_arg = 0, child_argv_ind = 0;

    check_file(append3(base_path, "/", "ia32/bin/pinbin"));
    /*
     * Since 64bit system can run 32bit executables, we run the 32bit pinbin. If this is a 64bit
     * machine, pinbin will switch to the 64bit version of itself based on the -p64 parameter.
     */
    child_argv[child_argv_ind++] = append3(base_path, "/", "ia32/bin/pinbin");
    child_argv[child_argv_ind++] = "-p64";
    child_argv[child_argv_ind++] = append3(base_path, "/",
            "intel64/bin/pinbin");

    /* Add the user arguments */
    for (user_arg = 0; user_arg < user_argc; ++user_arg)
    {
        child_argv[child_argv_ind++] = user_argv[user_arg];
    }

    /* Copy original command line parameters. */
    for (var = 1; var < argc; ++var)
    {
        child_argv[child_argv_ind++] = argv[var];
    }

    /* Null terminate the array. */
    child_argv[child_argv_ind++] = NULL;

    /* Clean the user arguments memory */
    if (user_argv)
    {
        free(user_argv);
    }

    return child_argv;
}

