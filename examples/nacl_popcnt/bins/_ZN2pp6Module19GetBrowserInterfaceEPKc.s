  .text
  .globl _ZN2pp6Module19GetBrowserInterfaceEPKc
  .type _ZN2pp6Module19GetBrowserInterfaceEPKc, @function

#! file-offset 0x24340
#! rip-offset  0x24340
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp6Module19GetBrowserInterfaceEPKc:  #        0x24340  0      
  movl %edi, %eax                         #  1     0x24340  2      
  movl %esi, %edi                         #  2     0x24342  2      
  movl %eax, %eax                         #  3     0x24344  2      
  movl 0x20(%r15,%rax,1), %eax            #  4     0x24346  5      
  andl $0xffffffe0, %eax                  #  5     0x2434b  5      
  addq %r15, %rax                         #  6     0x24350  3      
  jmpq %rax                               #  7     0x24353  2      
  nop                                     #  8     0x24355  1      
  nop                                     #  9     0x24356  1      
                                                                   
.size _ZN2pp6Module19GetBrowserInterfaceEPKc, .-_ZN2pp6Module19GetBrowserInterfaceEPKc

