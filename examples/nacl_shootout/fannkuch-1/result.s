  .text
  .globl fannkuch1
  .type fannkuch1, @function

#! file-offset 0x600
#! rip-offset  0x20656
#! capacity    48 bytes

# Text                         #  Line  RIP      Bytes  
.fannkuch1:                    #        0x20656  0      
  xorl %edx, %edx              #  1     0x20656  5      
  leal 0x4(%rbx,%rcx,4), %esi  #  2     0x2065b  4      
  leal (%rbx,%rcx,4), %ecx     #  4     0x20660  3      
  nop
.L_1:                          #        0x20668  0      
  movl %esi, %r8d              #  5     0x20668  3      
  movups (%r15,%r8,1), %xmm0   #  6     0x2066b  5      
  movl %ecx, %edi              #  7     0x20670  2      
  movups %xmm0, (%r15,%rdi,1)  #  8     0x20672  5      
  subl $0xfffffff0, %ecx       #  9     0x20677  6      
  addl $0x1, %edx              #  10    0x2067d  3      
  addl $0x10, %esi             #  11    0x20680  3      
  cmpl %r9d, %edx              #  12    0x20683  3      
  nop
  nop
  jb .L_1                      #  13    0x20686  6      
  retq                         #  14    0x2068c  1      
                                                        
.size fannkuch1, .-fannkuch1
