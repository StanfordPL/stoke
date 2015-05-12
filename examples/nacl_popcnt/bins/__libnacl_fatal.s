  .text
  .globl __libnacl_fatal
  .type __libnacl_fatal, @function

#! file-offset 0x67620
#! rip-offset  0x67620
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.__libnacl_fatal:             #        0x67620  0      
  subl $0x18, %esp            #  1     0x67620  3      
  addq %r15, %rsp             #  2     0x67623  3      
  movl 0xffc8ee4(%rip), %eax  #  3     0x67626  6      
  movl %edi, %esi             #  4     0x6762c  2      
  testq %rax, %rax            #  5     0x6762e  3      
  je .L_676a0                 #  6     0x67631  6      
  xorl %edx, %edx             #  7     0x67637  2      
  movl %esi, %esi             #  8     0x67639  2      
  cmpb $0x0, (%r15,%rsi,1)    #  9     0x6763b  5      
  nop                         #  10    0x67640  1      
  je .L_67680                 #  11    0x67641  6      
  leal 0x1(%rsi), %ecx        #  12    0x67647  3      
  nop                         #  13    0x6764a  1      
  nop                         #  14    0x6764b  1      
.L_67660:                     #        0x6764c  0      
  movl %ecx, %ecx             #  15    0x6764c  2      
  movzbl (%r15,%rcx,1), %edi  #  16    0x6764e  5      
  addl $0x1, %edx             #  17    0x67653  3      
  addl $0x1, %ecx             #  18    0x67656  3      
  testb %dil, %dil            #  19    0x67659  3      
  jne .L_67660                #  20    0x6765c  6      
  nop                         #  21    0x67662  1      
.L_67680:                     #        0x67663  0      
  leal 0xc(%rsp), %ecx        #  22    0x67663  4      
  movl $0x2, %edi             #  23    0x67667  5      
  nop                         #  24    0x6766c  1      
  andl $0xffffffe0, %eax      #  25    0x6766d  5      
  addq %r15, %rax             #  26    0x67672  3      
  callq %rax                  #  27    0x67675  2      
.L_676a0:                     #        0x67677  0      
  ud2                         #  28    0x67677  2      
  nop                         #  29    0x67679  1      
  nop                         #  30    0x6767a  1      
                                                       
.size __libnacl_fatal, .-__libnacl_fatal

