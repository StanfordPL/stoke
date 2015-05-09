  .text
  .globl _ZN2pp6Module19GetBrowserInterfaceEPKc
  .type _ZN2pp6Module19GetBrowserInterfaceEPKc, @function

#! file-offset 0x242a0
#! rip-offset  0x242a0
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  
._ZN2pp6Module19GetBrowserInterfaceEPKc:  #        0x242a0  0      
  movl %edi, %eax                         #  1     0x242a0  2      
  movl %esi, %edi                         #  2     0x242a2  2      
  movl %eax, %eax                         #  3     0x242a4  2      
  movl 0x20(%r15,%rax,1), %eax            #  4     0x242a6  5      
  andl $0xffffffe0, %eax                  #  5     0x242ab  5      
  addq %r15, %rax                         #  6     0x242b0  3      
  jmpq %rax                               #  7     0x242b3  2      
  nop                                     #  8     0x242b5  1      
  nop                                     #  9     0x242b6  1      
                                                                   
.size _ZN2pp6Module19GetBrowserInterfaceEPKc, .-_ZN2pp6Module19GetBrowserInterfaceEPKc

