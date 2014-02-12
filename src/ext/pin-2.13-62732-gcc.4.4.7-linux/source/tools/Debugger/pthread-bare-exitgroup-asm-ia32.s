/*NO LEGAL*/

    .text
.globl BareExitGroup
    .type   BareExitGroup, @function
BareExitGroup:
    movl    $0,%ebx     # first argument: exit code
    movl    $252,%eax   # system call number (sys_exit_group)

.globl BareExitTrap
BareExitTrap:
    int     $0x80       # call kernel
