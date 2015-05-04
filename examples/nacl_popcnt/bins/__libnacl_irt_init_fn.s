  .text
  .globl __libnacl_irt_init_fn
  .type __libnacl_irt_init_fn, @function

#! file-offset 0x675e0
#! rip-offset  0x675e0
#! capacity    192 bytes

# Text                       #  Line  RIP      Bytes  
.__libnacl_irt_init_fn:      #        0x675e0  0      
  pushq %rbx                 #  1     0x675e0  2      
  movl %edi, %ebx            #  2     0x675e2  2      
  movl %esi, %esi            #  3     0x675e4  2      
  movl %ebx, %ebx            #  4     0x675e6  2      
  movl (%r15,%rbx,1), %edx   #  5     0x675e8  4      
  testl %edx, %edx           #  6     0x675ec  2      
  je .L_67640                #  7     0x675ee  6      
  xchgw %ax, %ax             #  8     0x675f4  3      
  nop                        #  9     0x675f7  1      
.L_67600:                    #        0x675f8  0      
  movl $0x1, %eax            #  10    0x675f8  5      
  nop                        #  11    0x675fd  1      
  nop                        #  12    0x675fe  1      
.L_67620:                    #        0x675ff  0      
  popq %rbx                  #  13    0x675ff  2      
  popq %r11                  #  14    0x67601  3      
  andl $0xffffffe0, %r11d    #  15    0x67604  7      
  addq %r15, %r11            #  16    0x6760b  3      
  jmpq %r11                  #  17    0x6760e  3      
  nop                        #  18    0x67611  1      
  nop                        #  19    0x67612  1      
.L_67640:                    #        0x67613  0      
  nop                        #  20    0x67613  1      
  nop                        #  21    0x67614  1      
  andl $0xffffffe0, %esi     #  22    0x67615  6      
  addq %r15, %rsi            #  23    0x6761b  3      
  callq %rsi                 #  24    0x6761e  2      
  movl %ebx, %ebx            #  25    0x67620  2      
  movl (%r15,%rbx,1), %eax   #  26    0x67622  4      
  testl %eax, %eax           #  27    0x67626  2      
  jne .L_67600               #  28    0x67628  6      
  xchgw %ax, %ax             #  29    0x6762e  3      
  nop                        #  30    0x67631  1      
  callq .__errno             #  31    0x67632  5      
  movl %eax, %eax            #  32    0x67637  2      
  movl %eax, %eax            #  33    0x67639  2      
  movl $0x26, (%r15,%rax,1)  #  34    0x6763b  8      
  xorl %eax, %eax            #  35    0x67643  2      
  jmpq .L_67620              #  36    0x67645  5      
  nop                        #  37    0x6764a  1      
  nop                        #  38    0x6764b  1      
                                                      
.size __libnacl_irt_init_fn, .-__libnacl_irt_init_fn

