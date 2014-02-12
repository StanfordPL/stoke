/*NO LEGAL*/

    .text
.globl BareExitGroup
    .type   BareExitGroup, @function
BareExitGroup:
    movq    $0,%rdi     # first argument: exit code
    movq    $231,%rax   # system call number (sys_exit_group)

.globl BareExitTrap
BareExitTrap:
    syscall             # call kernel
