/* @ORIGINAL_AUTHOR: Benjamin Kemper */

/*! @file
 *
 * Launcher code common to unix platforms.
 *
 * To modify the launcher to launch a specific tool, use the auxiliary function
 * build_user_argv. This function should return an array of the tool specific arguments
 * and their count. These arguments will be added to the pin command line.
 *
 * An example of adding a tool name and its 64bit version is shown in the comment inside
 * build_user_argv.
 *
 */

#include "os_specific.h"

char** build_user_argv(int* argc)
{
    char** argv = NULL;
    /* Usage Example:
     ====================================================
     *argc = 4; // Number of user defined arguments

     argv = (char**) malloc(sizeof(char*) * (*argc));

     argv[0] = "-t";
     argv[1] = append3("path_to_tool", "/", "toolname32");
     argv[2] = "-t64";
     argv[3] = append3("path_to_tool", "/", "toolname64");
     */

    return argv;
}

void check_environment()
{
    char* s;
    int i;
    const char* array[] = {
            "LD_LIBRARY_PATH",
            "PIN_VM_LD_LIBRARY_PATH",
            "PIN_LD_RESTORE_REQUIRED",
            "PIN_APP_LD_ASSUME_KERNEL",
            "PIN_APP_LD_LIBRARY_PATH",
            "PIN_APP_LD_PRELOAD",
            0
    };
    for (i = 0; array[i] != NULL; i++)
    {
        s = getenv(array[i]);
        printf("env[%s] = %s\n", array[i], s);
    }
}

/*!
 * Prints the command line arguments.
 * @param child_argv Command line arguments array. Must be null terminated.
 */
void print_argv_chunks(char** child_argv)
{
    char** p = child_argv;
    unsigned int i = 0;
    printf("\n");
    while (*p)
    {
        printf("argv[%d] = [%s]\n", i, *p);
        p++;
        i++;
    }
}

int main(int orig_argc, char** orig_argv)
{
    char* path_to_cmd;
    char **child_argv, **user_argv;
    int user_argc = 0;
    char* base_path;
    char* driver_name;

    driver_name = find_driver_name(orig_argv[0]);
    base_path = find_base_path(driver_name);

    update_environment(base_path);

    user_argv = build_user_argv(&user_argc);
    child_argv = build_child_argv(base_path, orig_argc, orig_argv, user_argc,
            user_argv);
    path_to_cmd = child_argv[0];

    /* For testing purposes
     check_environment();
     print_argv_chunks(child_argv);
     */

    return execv(path_to_cmd, child_argv);
}
