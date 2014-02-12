/*NO LEGAL*/

    .text
.globl BareExit
    .type   BareExit, @function
BareExit:
    movl    $0,%ebx     # first argument: exit code
    movl    $1,%eax     # system call number (sys_exit)

.globl BareExitTrap
BareExitTrap:
    int     $0x80       # call kernel
