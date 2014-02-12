/*NO LEGAL*/

    .text
.globl BareExit
    .type   BareExit, @function
BareExit:
    movq    $0,%rdi     # first argument: exit code
    movq    $60,%rax    # system call number (sys_exit)

.globl BareExitTrap
BareExitTrap:
    syscall             # call kernel
