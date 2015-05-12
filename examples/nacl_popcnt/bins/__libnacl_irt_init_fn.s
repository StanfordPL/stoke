  .text
  .globl __libnacl_irt_init_fn
  .type __libnacl_irt_init_fn, @function

#! file-offset 0x67560
#! rip-offset  0x67560
#! capacity    192 bytes

# Text                       #  Line  RIP      Bytes  
.__libnacl_irt_init_fn:      #        0x67560  0      
  pushq %rbx                 #  1     0x67560  2      
  movl %edi, %ebx            #  2     0x67562  2      
  movl %esi, %esi            #  3     0x67564  2      
  movl %ebx, %ebx            #  4     0x67566  2      
  movl (%r15,%rbx,1), %edx   #  5     0x67568  4      
  testl %edx, %edx           #  6     0x6756c  2      
  je .L_675c0                #  7     0x6756e  6      
  xchgw %ax, %ax             #  8     0x67574  3      
  nop                        #  9     0x67577  1      
.L_67580:                    #        0x67578  0      
  movl $0x1, %eax            #  10    0x67578  5      
  nop                        #  11    0x6757d  1      
  nop                        #  12    0x6757e  1      
.L_675a0:                    #        0x6757f  0      
  popq %rbx                  #  13    0x6757f  2      
  popq %r11                  #  14    0x67581  3      
  andl $0xffffffe0, %r11d    #  15    0x67584  7      
  addq %r15, %r11            #  16    0x6758b  3      
  jmpq %r11                  #  17    0x6758e  3      
  nop                        #  18    0x67591  1      
  nop                        #  19    0x67592  1      
.L_675c0:                    #        0x67593  0      
  nop                        #  20    0x67593  1      
  nop                        #  21    0x67594  1      
  andl $0xffffffe0, %esi     #  22    0x67595  6      
  addq %r15, %rsi            #  23    0x6759b  3      
  callq %rsi                 #  24    0x6759e  2      
  movl %ebx, %ebx            #  25    0x675a0  2      
  movl (%r15,%rbx,1), %eax   #  26    0x675a2  4      
  testl %eax, %eax           #  27    0x675a6  2      
  jne .L_67580               #  28    0x675a8  6      
  xchgw %ax, %ax             #  29    0x675ae  3      
  nop                        #  30    0x675b1  1      
  callq .__errno             #  31    0x675b2  5      
  movl %eax, %eax            #  32    0x675b7  2      
  movl %eax, %eax            #  33    0x675b9  2      
  movl $0x26, (%r15,%rax,1)  #  34    0x675bb  8      
  xorl %eax, %eax            #  35    0x675c3  2      
  jmpq .L_675a0              #  36    0x675c5  5      
  nop                        #  37    0x675ca  1      
  nop                        #  38    0x675cb  1      
                                                      
.size __libnacl_irt_init_fn, .-__libnacl_irt_init_fn

