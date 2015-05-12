  .text
  .globl _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl
  .type _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl, @function

#! file-offset 0x4a0e0
#! rip-offset  0x4a0e0
#! capacity    288 bytes

# Text                                                           #  Line  RIP      Bytes  
._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl:  #        0x4a0e0  0      
  pushq %r14                                                     #  1     0x4a0e0  3      
  notl %ecx                                                      #  2     0x4a0e3  2      
  pushq %r13                                                     #  3     0x4a0e5  3      
  movl %esi, %r13d                                               #  4     0x4a0e8  3      
  xorl %esi, %esi                                                #  5     0x4a0eb  2      
  pushq %r12                                                     #  6     0x4a0ed  3      
  movl %edi, %r12d                                               #  7     0x4a0f0  3      
  pushq %rbx                                                     #  8     0x4a0f3  2      
  subl $0x18, %esp                                               #  9     0x4a0f5  3      
  addq %r15, %rsp                                                #  10    0x4a0f8  3      
  movl %r12d, %r12d                                              #  11    0x4a0fb  3      
  movl 0xc(%r15,%r12,1), %ebx                                    #  12    0x4a0fe  5      
  nop                                                            #  13    0x4a103  1      
  leal 0xc(%rsp), %r14d                                          #  14    0x4a104  5      
  movl %edx, 0xc(%rsp)                                           #  15    0x4a109  4      
  addl %ecx, %ebx                                                #  16    0x4a10d  2      
  xorl %ecx, %ecx                                                #  17    0x4a10f  2      
  nop                                                            #  18    0x4a111  1      
  nop                                                            #  19    0x4a112  1      
.L_4a120:                                                        #        0x4a113  0      
  movl %ebx, %ebx                                                #  20    0x4a113  2      
  movzbl (%r15,%rbx,1), %edx                                     #  21    0x4a115  5      
  addl $0x1, %ebx                                                #  22    0x4a11a  3      
  movl %edx, %eax                                                #  23    0x4a11d  2      
  andl $0x7f, %eax                                               #  24    0x4a11f  3      
  shll %cl, %eax                                                 #  25    0x4a122  2      
  orl %eax, %esi                                                 #  26    0x4a124  2      
  testb %dl, %dl                                                 #  27    0x4a126  2      
  js .L_4a1a0                                                    #  28    0x4a128  6      
  testl %esi, %esi                                               #  29    0x4a12e  2      
  je .L_4a1c0                                                    #  30    0x4a130  6      
  nop                                                            #  31    0x4a136  1      
  movl %r12d, %edi                                               #  32    0x4a137  3      
  nop                                                            #  33    0x4a13a  1      
  nop                                                            #  34    0x4a13b  1      
  callq ._ZL15get_ttype_entryP16lsda_header_infom                #  35    0x4a13c  5      
  movl %r14d, %edx                                               #  36    0x4a141  3      
  movl %eax, %edi                                                #  37    0x4a144  2      
  movl %r13d, %esi                                               #  38    0x4a146  3      
  nop                                                            #  39    0x4a149  1      
  nop                                                            #  40    0x4a14a  1      
  callq ._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv               #  41    0x4a14b  5      
  testb %al, %al                                                 #  42    0x4a150  2      
  jne .L_4a1e0                                                   #  43    0x4a152  6      
  xorl %esi, %esi                                                #  44    0x4a158  2      
  xorl %ecx, %ecx                                                #  45    0x4a15a  2      
  jmpq .L_4a120                                                  #  46    0x4a15c  5      
  nop                                                            #  47    0x4a161  1      
  nop                                                            #  48    0x4a162  1      
.L_4a1a0:                                                        #        0x4a163  0      
  addl $0x7, %ecx                                                #  49    0x4a163  3      
  jmpq .L_4a120                                                  #  50    0x4a166  5      
  nop                                                            #  51    0x4a16b  1      
  nop                                                            #  52    0x4a16c  1      
.L_4a1c0:                                                        #        0x4a16d  0      
  addl $0x18, %esp                                               #  53    0x4a16d  3      
  addq %r15, %rsp                                                #  54    0x4a170  3      
  xorl %eax, %eax                                                #  55    0x4a173  2      
  popq %rbx                                                      #  56    0x4a175  2      
  popq %r12                                                      #  57    0x4a177  3      
  popq %r13                                                      #  58    0x4a17a  3      
  popq %r14                                                      #  59    0x4a17d  3      
  popq %r11                                                      #  60    0x4a180  3      
  andl $0xffffffe0, %r11d                                        #  61    0x4a183  7      
  addq %r15, %r11                                                #  62    0x4a18a  3      
  jmpq %r11                                                      #  63    0x4a18d  3      
  nop                                                            #  64    0x4a190  1      
.L_4a1e0:                                                        #        0x4a191  0      
  addl $0x18, %esp                                               #  65    0x4a191  3      
  addq %r15, %rsp                                                #  66    0x4a194  3      
  movl $0x1, %eax                                                #  67    0x4a197  5      
  popq %rbx                                                      #  68    0x4a19c  2      
  popq %r12                                                      #  69    0x4a19e  3      
  popq %r13                                                      #  70    0x4a1a1  3      
  popq %r14                                                      #  71    0x4a1a4  3      
  popq %r11                                                      #  72    0x4a1a7  3      
  andl $0xffffffe0, %r11d                                        #  73    0x4a1aa  7      
  addq %r15, %r11                                                #  74    0x4a1b1  3      
  jmpq %r11                                                      #  75    0x4a1b4  3      
  nop                                                            #  76    0x4a1b7  1      
  nop                                                            #  77    0x4a1b8  1      
                                                                                          
.size _ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl, .-_ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl

