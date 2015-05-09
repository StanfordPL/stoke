  .text
  .globl __libnacl_irt_init_fn
  .type __libnacl_irt_init_fn, @function

#! file-offset 0x67540
#! rip-offset  0x67540
#! capacity    192 bytes

# Text                       #  Line  RIP      Bytes  
.__libnacl_irt_init_fn:      #        0x67540  0      
  pushq %rbx                 #  1     0x67540  2      
  movl %edi, %ebx            #  2     0x67542  2      
  movl %esi, %esi            #  3     0x67544  2      
  movl %ebx, %ebx            #  4     0x67546  2      
  movl (%r15,%rbx,1), %edx   #  5     0x67548  4      
  testl %edx, %edx           #  6     0x6754c  2      
  je .L_675a0                #  7     0x6754e  6      
  xchgw %ax, %ax             #  8     0x67554  3      
  nop                        #  9     0x67557  1      
.L_67560:                    #        0x67558  0      
  movl $0x1, %eax            #  10    0x67558  5      
  nop                        #  11    0x6755d  1      
  nop                        #  12    0x6755e  1      
.L_67580:                    #        0x6755f  0      
  popq %rbx                  #  13    0x6755f  2      
  popq %r11                  #  14    0x67561  3      
  andl $0xffffffe0, %r11d    #  15    0x67564  7      
  addq %r15, %r11            #  16    0x6756b  3      
  jmpq %r11                  #  17    0x6756e  3      
  nop                        #  18    0x67571  1      
  nop                        #  19    0x67572  1      
.L_675a0:                    #        0x67573  0      
  nop                        #  20    0x67573  1      
  nop                        #  21    0x67574  1      
  andl $0xffffffe0, %esi     #  22    0x67575  6      
  addq %r15, %rsi            #  23    0x6757b  3      
  callq %rsi                 #  24    0x6757e  2      
  movl %ebx, %ebx            #  25    0x67580  2      
  movl (%r15,%rbx,1), %eax   #  26    0x67582  4      
  testl %eax, %eax           #  27    0x67586  2      
  jne .L_67560               #  28    0x67588  6      
  xchgw %ax, %ax             #  29    0x6758e  3      
  nop                        #  30    0x67591  1      
  callq .__errno             #  31    0x67592  5      
  movl %eax, %eax            #  32    0x67597  2      
  movl %eax, %eax            #  33    0x67599  2      
  movl $0x26, (%r15,%rax,1)  #  34    0x6759b  8      
  xorl %eax, %eax            #  35    0x675a3  2      
  jmpq .L_67580              #  36    0x675a5  5      
  nop                        #  37    0x675aa  1      
  nop                        #  38    0x675ab  1      
                                                      
.size __libnacl_irt_init_fn, .-__libnacl_irt_init_fn

