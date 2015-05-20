  .text
  .globl fannkuch1
  .type fannkuch1, @function

#! file-offset 0x600
#! rip-offset  0x20656
#! capacity    48 bytes

# Text                          #  Line  RIP      Bytes  
.fannkuch1:                     #        0x20656  0      
  xorq %rdx, %rdx               #  1     0x20656  3      
  leal 0x4(%rbx,%rcx,4), %esi   #  2     0x20659  4      
  leal (%rbx,%rcx,4), %ecx      #  3     0x2065d  3      
.L_1:                           #        0x20660  0      
  movl %esi, %r8d               #  4     0x20660  3      
  movupd (%r15,%r8,1), %xmm0    #  5     0x20663  6      
  movl %ecx, %edi               #  6     0x20669  2      
  movapd %xmm0, (%r15,%rdi,1)   #  7     0x2066b  6      
  addl $0x10, %ecx              #  8     0x20671  3      
  addl $0x1, %edx               #  9     0x20674  3      
  adcl $0x10, %esi              #  10    0x20677  6      
  cmpl %r9d, %edx               #  11    0x2067d  3      
  jb .L_1                       #  12    0x20680  6      
  retq                          #  13    0x20686  1      
  sbbb %al, %r9b                #  14    0x20687  3      
  psrldq $0xfd, %xmm0           #  15    0x2068a  5      
  nop                           #  16    0x2068f  1      
  rorb %cl, %r11b               #  17    0x20690  3      
  pmovzxbw %xmm6, %xmm8         #  18    0x20693  6      
  sfence                        #  19    0x20699  3      
  maxpd %xmm0, %xmm0            #  20    0x2069c  4      
  setae %spl                    #  21    0x206a0  4      
  insertps $0xfd, %xmm0, %xmm0  #  22    0x206a4  6      
  andw %r9w, %r14w              #  23    0x206aa  4      
                                                         
.size fannkuch1, .-fannkuch1
