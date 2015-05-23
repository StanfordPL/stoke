  .text
  .globl fannkuch1
  .type fannkuch1, @function

#! file-offset 0x600
#! rip-offset  0x20656
#! capacity    48 bytes

# Text                          #  Line  RIP      Bytes  
.fannkuch1:                     #        0x20656  0      
  xorl %edx, %edx               #  1     0x20656  2      
  leal 0x4(%rbx,%rcx,4), %esi   #  2     0x20658  4      
  leal -0x4(%rdx,%rsi,1), %ecx  #  3     0x2065c  4      
.L_1:                           #        0x20660  0      
  movl %esi, %r8d               #  4     0x20660  3      
  movupd (%r15,%r8,1), %xmm0    #  5     0x20663  6      
  movl %ecx, %edi               #  6     0x20669  2      
  movups %xmm0, (%r15,%rdi,1)   #  7     0x2066b  5      
  addl $0x10, %esi              #  8     0x20670  3      
  adcl $0x1, %edx               #  9     0x20673  3      
  setnc %spl                    #  10    0x20676  4      
  addl $0x10, %ecx              #  11    0x2067a  3      
  cmpl %r9d, %edx               #  12    0x2067d  3      
  jb .L_1                       #  13    0x20680  6      
  retq                          #  14    0x20686  1      
  comisd %xmm13, %xmm13         #  15    0x20687  5      
  nop                           #  16    0x2068c  1      
  shrb $0x1, %ch                #  17    0x2068d  2      
  punpckhdq %xmm1, %xmm0        #  18    0x2068f  4      
  pmaxub %xmm2, %xmm2           #  19    0x20693  4      
  rsqrtps %xmm13, %xmm13        #  20    0x20697  4      
  pmovzxbd %xmm4, %xmm0         #  21    0x2069b  5      
  psllq $0x20, %xmm11           #  22    0x206a0  6      
  pslld $0x0, %xmm0             #  23    0x206a6  5      
                                                         
.size fannkuch1, .-fannkuch1
