/*
 * os_specific_l.c
 *
 *  Created on: May 28, 2012
 *      Author: bkemper
 */

#include "os_specific.h"

void update_environment(char* base_path)
{
    /*
     Set the following environment variables:
     1) PIN_VM_LD_LIBRARY_PATH (put pin_libs in front of existing LD_LIBRARY_PATH)
     2) PIN_LD_RESTORE_REQUIRED (set it to "t")
     3) PIN_APP_LD_LIBRARY_PATH (copy of LD_LIBRARY_PATH (if set))
     4) PIN_APP_LD_ASSUME_KERNEL (copy of LD_ASSUME_KERNEL (if set))
     4a) PIN_APP_LD_BIND_NOW
     4b) PIN_APP_LD_PRELOAD
     5) unset LD_ASSUME_KERNEL
     6) LD_LIBRARY_PATH          (injector_libs before users's LD_LIBRARY_PATH)

     On Unix systems, we run pinbin instead of pin.
     */

    int r;
    int gcc_major = 0, gcc_minor = 0;
    const int overwrite = 1;
    char* pin_ld_library_path = 0;
    char* new_ld_library_path = 0;
    const char* pin_runtime_dir = "runtime";
    const char* glibc_lib_dir = "glibc";
    const char* cpp_lib_dir = "cpplibs";
    char* ld_library_path = 0;
    char* ld_assume_kernel = 0;
    char* base_path32 = 0;
    char* base_path64 = 0;
    char* pin_runtime_libs32 = 0;
    char* pin_runtime_libs64 = 0;
    char* pin_glibc_libs32 = 0;
    char* pin_glibc_libs64 = 0;
    char* pin_cpp_libs32 = 0;
    char* pin_cpp_libs64 = 0;
    char* incoming_ld_preload = 0;
    char* incoming_ld_bind_now = 0;
    int getGccPassed = 0;

    base_path32 = append3(base_path, "/", "ia32");
    base_path64 = append3(base_path, "/", "intel64");

    /* make pin_libs - required for pin/vm */
    pin_runtime_libs32 = append3(base_path32, "/", pin_runtime_dir);
    pin_runtime_libs64 = append3(base_path64, "/", pin_runtime_dir);

    pin_glibc_libs32 = append3(pin_runtime_libs32, "/", glibc_lib_dir);
    pin_glibc_libs64 = append3(pin_runtime_libs64, "/", glibc_lib_dir);

    pin_cpp_libs32 = append3(pin_runtime_libs32, "/", cpp_lib_dir);;
    pin_cpp_libs64 = append3(pin_runtime_libs64, "/", cpp_lib_dir);;

    /* make pin_ld_library_path pre-pending pin_libs -- for the VM ultimately */
    ld_library_path = getenv("LD_LIBRARY_PATH");
    pin_ld_library_path = ld_library_path;

    /* must be first (so added last) */
    pin_ld_library_path = append3(pin_glibc_libs32, ":", pin_ld_library_path);
    pin_ld_library_path = append3(pin_glibc_libs64, ":", pin_ld_library_path);

    getGccPassed = get_gcc_version_string(&gcc_major, &gcc_minor);

    if (!getGccPassed || gcc_major < 4 || (gcc_major == 4 && gcc_minor < 5)) {
        pin_ld_library_path = append3(pin_cpp_libs32, ":", pin_ld_library_path);
        pin_ld_library_path = append3(pin_cpp_libs64, ":", pin_ld_library_path);
    }

    pin_ld_library_path = append3(pin_runtime_libs32, ":", pin_ld_library_path);
    pin_ld_library_path = append3(pin_runtime_libs64, ":", pin_ld_library_path);

    /* make new_ld_library_path pre-pending injector_libs */
    new_ld_library_path = ld_library_path;

    if (!getGccPassed || gcc_major < 4 || (gcc_major == 4 && gcc_minor < 5)) {
        new_ld_library_path = append3(pin_cpp_libs32, ":", new_ld_library_path);
        new_ld_library_path = append3(pin_cpp_libs64, ":", new_ld_library_path);
    }

    /* must be first (so added last) */
    new_ld_library_path = append3(pin_runtime_libs32, ":", new_ld_library_path);
    new_ld_library_path = append3(pin_runtime_libs64, ":", new_ld_library_path);

    /* This variable tells the injector to restore environment variables after pin is injected. */
    r = setenv("PIN_LD_RESTORE_REQUIRED", "t", overwrite);
    check_retval(r, "setenv PIN_LD_RESTORE_REQUIRED");

    /* Set the pin vm library path. */
    r = setenv("PIN_VM_LD_LIBRARY_PATH", pin_ld_library_path, overwrite);
    check_retval(r, "setenv PIN_VM_LD_LIBRARY_PATH");

    /*
     * Backup the LD_LIBRARY_PATH, since pin uses a different one while launching. It will be restored
     * when the app is loaded to memory.
     */
    if (ld_library_path)
    {
        r = setenv("PIN_APP_LD_LIBRARY_PATH", ld_library_path, overwrite);
        check_retval(r, "setenv PIN_APP_LD_LIBRARY_PATH");
    }

    /* Overwrite LD_LIBRARY_PATH with the libraries required for pin to run. */
    r = setenv("LD_LIBRARY_PATH", new_ld_library_path, overwrite);
    check_retval(r, "setenv LD_LIBRARY_PATH");

    /*
     * If the LD_BIND_NOW, LD_ASSUME_KERNEL and LD_PRELOAD variables were defined they should pass as
     * is to the app. Since pin's injector doesn't need it, we save them now and restore it after
     * pin is injected into the process.
     */
    ld_assume_kernel = getenv("LD_ASSUME_KERNEL");
    if (ld_assume_kernel)
    {
        r = setenv("PIN_APP_LD_ASSUME_KERNEL", ld_assume_kernel, overwrite);
        check_retval(r, "setenv PIN_APP_LD_ASSUME_KERNEL");
        unsetenv("LD_ASSUME_KERNEL");
    }

    incoming_ld_bind_now = getenv("LD_BIND_NOW");
    if (incoming_ld_bind_now)
    {
        r = setenv("PIN_APP_LD_BIND_NOW", incoming_ld_bind_now, overwrite);
        check_retval(r, "setenv PIN_APP_LD_BIND_NOW");
        unsetenv("LD_BIND_NOW");
    }

    incoming_ld_preload = getenv("LD_PRELOAD");
    if (incoming_ld_preload)
    {
        r = setenv("PIN_APP_LD_PRELOAD", incoming_ld_preload, overwrite);
        check_retval(r, "setenv PIN_APP_LD_PRELOAD");
        unsetenv("LD_PRELOAD");
    }

}

char* find_driver_name(char* argv0)
{
    int chars;
    const char* proc_link = 0;
    char base_path[PATH_MAX];
    struct stat statbuf;

    /* The path of the current running executable (self) under the procfs. */
    proc_link = "/proc/self/exe";

    if (stat(proc_link, &statbuf) == -1)
    {
        /* no /proc... */
        assert(strlen(argv0) < PATH_MAX);
        strcpy(base_path, argv0);
    }
    else
    {
        chars = readlink(proc_link, base_path, PATH_MAX);
        if (chars == -1)
        {
            perror("readlink:");
            exit(1);
        }
        base_path[chars] = 0; /* null terminate the string */
    }

    return strdup(base_path);
}

char** build_child_argv(char* base_path, int argc, char** argv, int user_argc,
        char** user_argv)
{
    char** child_argv = (char**) malloc(sizeof(char*) * (argc + user_argc + 3));
    int var = 0, user_arg = 0, child_argv_ind = 0;

    find_driver_name(append3(base_path, "/", "ia32/bin/pinbin"));
    find_driver_name(append3(base_path, "/", "intel64/bin/pinbin"));
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

