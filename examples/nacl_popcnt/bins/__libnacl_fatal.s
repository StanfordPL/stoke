  .text
  .globl __libnacl_fatal
  .type __libnacl_fatal, @function

#! file-offset 0x67600
#! rip-offset  0x67600
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_fatal:             #        0x67600  0      
  subl $0x18, %esp            #  1     0x67600  3      
  addq %r15, %rsp             #  2     0x67603  3      
  movl 0xffc8f04(%rip), %eax  #  3     0x67606  6      
  movl %edi, %esi             #  4     0x6760c  2      
  testq %rax, %rax            #  5     0x6760e  3      
  je .L_67680                 #  6     0x67611  6      
  xorl %edx, %edx             #  7     0x67617  2      
  movl %esi, %esi             #  8     0x67619  2      
  cmpb $0x0, (%r15,%rsi,1)    #  9     0x6761b  5      
  nop                         #  10    0x67620  1      
  je .L_67660                 #  11    0x67621  6      
  leal 0x1(%rsi), %ecx        #  12    0x67627  3      
  nop                         #  13    0x6762a  1      
  nop                         #  14    0x6762b  1      
.L_67640:                     #        0x6762c  0      
  movl %ecx, %ecx             #  15    0x6762c  2      
  movzbl (%r15,%rcx,1), %edi  #  16    0x6762e  5      
  addl $0x1, %edx             #  17    0x67633  3      
  addl $0x1, %ecx             #  18    0x67636  3      
  testb %dil, %dil            #  19    0x67639  3      
  jne .L_67640                #  20    0x6763c  6      
  nop                         #  21    0x67642  1      
.L_67660:                     #        0x67643  0      
  leal 0xc(%rsp), %ecx        #  22    0x67643  4      
  movl $0x2, %edi             #  23    0x67647  5      
  nop                         #  24    0x6764c  1      
  andl $0xffffffe0, %eax      #  25    0x6764d  5      
  addq %r15, %rax             #  26    0x67652  3      
  callq %rax                  #  27    0x67655  2      
.L_67680:                     #        0x67657  0      
  ud2                         #  28    0x67657  2      
  nop                         #  29    0x67659  1      
  nop                         #  30    0x6765a  1      
                                                       
.size __libnacl_fatal, .-__libnacl_fatal

