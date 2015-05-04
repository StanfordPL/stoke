  .text
  .globl currentlocale
  .type currentlocale, @function

#! file-offset 0x7caa0
#! rip-offset  0x7caa0
#! capacity    288 bytes

# Text                     #  Line  RIP      Bytes  
.currentlocale:            #        0x7caa0  0      
  pushq %r12               #  1     0x7caa0  3      
  movl $0x10030b00, %r12d  #  2     0x7caa3  6      
  movl $0x10036ca0, %edi   #  3     0x7caa9  5      
  movl %r12d, %r12d        #  4     0x7caae  3      
  pushq %rbx               #  5     0x7cab1  2      
  movl %r12d, %esi         #  6     0x7cab3  3      
  movl $0x10030b20, %ebx   #  7     0x7cab6  5      
  subl $0x8, %esp          #  8     0x7cabb  3      
  addq %r15, %rsp          #  9     0x7cabe  3      
  nop                      #  10    0x7cac1  1      
  nop                      #  11    0x7cac2  1      
  nop                      #  12    0x7cac3  1      
  callq .strcpy            #  13    0x7cac4  5      
.L_7cae0:                  #        0x7cac9  0      
  movl %ebx, %esi          #  14    0x7cac9  2      
  movl %r12d, %edi         #  15    0x7cacb  3      
  nop                      #  16    0x7cace  1      
  nop                      #  17    0x7cacf  1      
  callq .strcmp            #  18    0x7cad0  5      
  testl %eax, %eax         #  19    0x7cad5  2      
  jne .L_7cb40             #  20    0x7cad7  6      
  addl $0x20, %ebx         #  21    0x7cadd  3      
  cmpl $0x10030bc0, %ebx   #  22    0x7cae0  6      
  jne .L_7cae0             #  23    0x7cae6  6      
  xchgw %ax, %ax           #  24    0x7caec  3      
  nop                      #  25    0x7caef  1      
.L_7cb20:                  #        0x7caf0  0      
  addl $0x8, %esp          #  26    0x7caf0  3      
  addq %r15, %rsp          #  27    0x7caf3  3      
  movl $0x10036ca0, %eax   #  28    0x7caf6  5      
  popq %rbx                #  29    0x7cafb  2      
  popq %r12                #  30    0x7cafd  3      
  popq %r11                #  31    0x7cb00  3      
  andl $0xffffffe0, %r11d  #  32    0x7cb03  7      
  addq %r15, %r11          #  33    0x7cb0a  3      
  jmpq %r11                #  34    0x7cb0d  3      
  nop                      #  35    0x7cb10  1      
.L_7cb40:                  #        0x7cb11  0      
  movl $0x10030ae0, %r12d  #  36    0x7cb11  6      
  movl $0x2, %ebx          #  37    0x7cb17  5      
  addl $0x40, %r12d        #  38    0x7cb1c  4      
  xchgw %ax, %ax           #  39    0x7cb20  3      
  nop                      #  40    0x7cb23  1      
.L_7cb60:                  #        0x7cb24  0      
  movl $0x10022bb3, %esi   #  41    0x7cb24  5      
  movl $0x10036ca0, %edi   #  42    0x7cb29  5      
  addl $0x1, %ebx          #  43    0x7cb2e  3      
  nop                      #  44    0x7cb31  1      
  callq .strcat            #  45    0x7cb32  5      
  movl %r12d, %esi         #  46    0x7cb37  3      
  movl $0x10036ca0, %edi   #  47    0x7cb3a  5      
  addl $0x20, %r12d        #  48    0x7cb3f  4      
  nop                      #  49    0x7cb43  1      
  callq .strcat            #  50    0x7cb44  5      
  cmpl $0x7, %ebx          #  51    0x7cb49  3      
  jne .L_7cb60             #  52    0x7cb4c  6      
  jmpq .L_7cb20            #  53    0x7cb52  5      
  nop                      #  54    0x7cb57  1      
  nop                      #  55    0x7cb58  1      
                                                    
.size currentlocale, .-currentlocale

