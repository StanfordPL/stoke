  .text
  .globl _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl
  .type _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl, @function

#! file-offset 0x4a160
#! rip-offset  0x4a160
#! capacity    288 bytes

# Text                                                           #  Line  RIP      Bytes  
._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl:  #        0x4a160  0      
  pushq %r14                                                     #  1     0x4a160  3      
  notl %ecx                                                      #  2     0x4a163  2      
  pushq %r13                                                     #  3     0x4a165  3      
  movl %esi, %r13d                                               #  4     0x4a168  3      
  xorl %esi, %esi                                                #  5     0x4a16b  2      
  pushq %r12                                                     #  6     0x4a16d  3      
  movl %edi, %r12d                                               #  7     0x4a170  3      
  pushq %rbx                                                     #  8     0x4a173  2      
  subl $0x18, %esp                                               #  9     0x4a175  3      
  addq %r15, %rsp                                                #  10    0x4a178  3      
  movl %r12d, %r12d                                              #  11    0x4a17b  3      
  movl 0xc(%r15,%r12,1), %ebx                                    #  12    0x4a17e  5      
  nop                                                            #  13    0x4a183  1      
  leal 0xc(%rsp), %r14d                                          #  14    0x4a184  5      
  movl %edx, 0xc(%rsp)                                           #  15    0x4a189  4      
  addl %ecx, %ebx                                                #  16    0x4a18d  2      
  xorl %ecx, %ecx                                                #  17    0x4a18f  2      
  nop                                                            #  18    0x4a191  1      
  nop                                                            #  19    0x4a192  1      
.L_4a1a0:                                                        #        0x4a193  0      
  movl %ebx, %ebx                                                #  20    0x4a193  2      
  movzbl (%r15,%rbx,1), %edx                                     #  21    0x4a195  5      
  addl $0x1, %ebx                                                #  22    0x4a19a  3      
  movl %edx, %eax                                                #  23    0x4a19d  2      
  andl $0x7f, %eax                                               #  24    0x4a19f  3      
  shll %cl, %eax                                                 #  25    0x4a1a2  2      
  orl %eax, %esi                                                 #  26    0x4a1a4  2      
  testb %dl, %dl                                                 #  27    0x4a1a6  2      
  js .L_4a220                                                    #  28    0x4a1a8  6      
  testl %esi, %esi                                               #  29    0x4a1ae  2      
  je .L_4a240                                                    #  30    0x4a1b0  6      
  nop                                                            #  31    0x4a1b6  1      
  movl %r12d, %edi                                               #  32    0x4a1b7  3      
  nop                                                            #  33    0x4a1ba  1      
  nop                                                            #  34    0x4a1bb  1      
  callq ._ZL15get_ttype_entryP16lsda_header_infom                #  35    0x4a1bc  5      
  movl %r14d, %edx                                               #  36    0x4a1c1  3      
  movl %eax, %edi                                                #  37    0x4a1c4  2      
  movl %r13d, %esi                                               #  38    0x4a1c6  3      
  nop                                                            #  39    0x4a1c9  1      
  nop                                                            #  40    0x4a1ca  1      
  callq ._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv               #  41    0x4a1cb  5      
  testb %al, %al                                                 #  42    0x4a1d0  2      
  jne .L_4a260                                                   #  43    0x4a1d2  6      
  xorl %esi, %esi                                                #  44    0x4a1d8  2      
  xorl %ecx, %ecx                                                #  45    0x4a1da  2      
  jmpq .L_4a1a0                                                  #  46    0x4a1dc  5      
  nop                                                            #  47    0x4a1e1  1      
  nop                                                            #  48    0x4a1e2  1      
.L_4a220:                                                        #        0x4a1e3  0      
  addl $0x7, %ecx                                                #  49    0x4a1e3  3      
  jmpq .L_4a1a0                                                  #  50    0x4a1e6  5      
  nop                                                            #  51    0x4a1eb  1      
  nop                                                            #  52    0x4a1ec  1      
.L_4a240:                                                        #        0x4a1ed  0      
  addl $0x18, %esp                                               #  53    0x4a1ed  3      
  addq %r15, %rsp                                                #  54    0x4a1f0  3      
  xorl %eax, %eax                                                #  55    0x4a1f3  2      
  popq %rbx                                                      #  56    0x4a1f5  2      
  popq %r12                                                      #  57    0x4a1f7  3      
  popq %r13                                                      #  58    0x4a1fa  3      
  popq %r14                                                      #  59    0x4a1fd  3      
  popq %r11                                                      #  60    0x4a200  3      
  andl $0xffffffe0, %r11d                                        #  61    0x4a203  7      
  addq %r15, %r11                                                #  62    0x4a20a  3      
  jmpq %r11                                                      #  63    0x4a20d  3      
  nop                                                            #  64    0x4a210  1      
.L_4a260:                                                        #        0x4a211  0      
  addl $0x18, %esp                                               #  65    0x4a211  3      
  addq %r15, %rsp                                                #  66    0x4a214  3      
  movl $0x1, %eax                                                #  67    0x4a217  5      
  popq %rbx                                                      #  68    0x4a21c  2      
  popq %r12                                                      #  69    0x4a21e  3      
  popq %r13                                                      #  70    0x4a221  3      
  popq %r14                                                      #  71    0x4a224  3      
  popq %r11                                                      #  72    0x4a227  3      
  andl $0xffffffe0, %r11d                                        #  73    0x4a22a  7      
  addq %r15, %r11                                                #  74    0x4a231  3      
  jmpq %r11                                                      #  75    0x4a234  3      
  nop                                                            #  76    0x4a237  1      
  nop                                                            #  77    0x4a238  1      
                                                                                          
.size _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl, .-_ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl

