  .text
  .globl _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E
  .type _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, @function

#! file-offset 0x237c0
#! rip-offset  0x237c0
#! capacity    288 bytes

# Text                                                                                                           #  Line  RIP      Bytes  
._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E:         #        0x237c0  0      
  pushq %r14                                                                                                     #  1     0x237c0  3      
  pushq %r13                                                                                                     #  2     0x237c3  3      
  movl %edi, %r13d                                                                                               #  3     0x237c6  3      
  pushq %r12                                                                                                     #  4     0x237c9  3      
  pushq %rbx                                                                                                     #  5     0x237cc  2      
  movl %esi, %ebx                                                                                                #  6     0x237ce  2      
  subl $0x28, %esp                                                                                               #  7     0x237d0  3      
  addq %r15, %rsp                                                                                                #  8     0x237d3  3      
  testq %rbx, %rbx                                                                                               #  9     0x237d6  3      
  je .L_23880                                                                                                    #  10    0x237d9  6      
  leal 0x1f(%rsp), %eax                                                                                          #  11    0x237df  4      
  nop                                                                                                            #  12    0x237e3  1      
  movl $0x10031da0, %r14d                                                                                        #  13    0x237e4  6      
  movq %rax, 0x8(%rsp)                                                                                           #  14    0x237ea  5      
  nop                                                                                                            #  15    0x237ef  1      
  nop                                                                                                            #  16    0x237f0  1      
.L_23800:                                                                                                        #        0x237f1  0      
  movl %ebx, %ebx                                                                                                #  17    0x237f1  2      
  movl 0xc(%r15,%rbx,1), %esi                                                                                    #  18    0x237f3  5      
  movl %r13d, %edi                                                                                               #  19    0x237f8  3      
  xchgw %ax, %ax                                                                                                 #  20    0x237fb  3      
  nop                                                                                                            #  21    0x237fe  1      
  callq ._ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E  #  22    0x237ff  5      
  movl %ebx, %ebx                                                                                                #  23    0x23804  2      
  movl 0x10(%r15,%rbx,1), %edi                                                                                   #  24    0x23806  5      
  movl %ebx, %ebx                                                                                                #  25    0x2380b  2      
  movl 0x8(%r15,%rbx,1), %r12d                                                                                   #  26    0x2380d  5      
  subl $0xc, %edi                                                                                                #  27    0x23812  3      
  cmpl %edi, %r14d                                                                                               #  28    0x23815  3      
  jne .L_238a0                                                                                                   #  29    0x23818  6      
  nop                                                                                                            #  30    0x2381e  1      
.L_23840:                                                                                                        #        0x2381f  0      
  movl %ebx, %edi                                                                                                #  31    0x2381f  2      
  movq %r12, %rbx                                                                                                #  32    0x23821  3      
  nop                                                                                                            #  33    0x23824  1      
  nop                                                                                                            #  34    0x23825  1      
  callq ._ZdlPv                                                                                                  #  35    0x23826  5      
  testq %r12, %r12                                                                                               #  36    0x2382b  3      
  jne .L_23800                                                                                                   #  37    0x2382e  6      
  nop                                                                                                            #  38    0x23834  1      
  nop                                                                                                            #  39    0x23835  1      
.L_23880:                                                                                                        #        0x23836  0      
  addl $0x28, %esp                                                                                               #  40    0x23836  3      
  addq %r15, %rsp                                                                                                #  41    0x23839  3      
  popq %rbx                                                                                                      #  42    0x2383c  2      
  popq %r12                                                                                                      #  43    0x2383e  3      
  popq %r13                                                                                                      #  44    0x23841  3      
  popq %r14                                                                                                      #  45    0x23844  3      
  popq %r11                                                                                                      #  46    0x23847  3      
  andl $0xffffffe0, %r11d                                                                                        #  47    0x2384a  7      
  addq %r15, %r11                                                                                                #  48    0x23851  3      
  jmpq %r11                                                                                                      #  49    0x23854  3      
  nop                                                                                                            #  50    0x23857  1      
.L_238a0:                                                                                                        #        0x23858  0      
  movl %edi, %edi                                                                                                #  51    0x23858  2      
  movl 0x8(%r15,%rdi,1), %eax                                                                                    #  52    0x2385a  5      
  leal -0x1(%rax), %edx                                                                                          #  53    0x2385f  3      
  testl %eax, %eax                                                                                               #  54    0x23862  2      
  movl %edi, %edi                                                                                                #  55    0x23864  2      
  movl %edx, 0x8(%r15,%rdi,1)                                                                                    #  56    0x23866  5      
  jg .L_23840                                                                                                    #  57    0x2386b  6      
  movl 0x8(%rsp), %esi                                                                                           #  58    0x23871  4      
  xchgw %ax, %ax                                                                                                 #  59    0x23875  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE                                                                          #  60    0x23878  5      
  jmpq .L_23840                                                                                                  #  61    0x2387d  5      
  nop                                                                                                            #  62    0x23882  1      
  nop                                                                                                            #  63    0x23883  1      
  nop                                                                                                            #  64    0x23884  1      
  nop                                                                                                            #  65    0x23885  1      
  nop                                                                                                            #  66    0x23886  1      
  nop                                                                                                            #  67    0x23887  1      
  nop                                                                                                            #  68    0x23888  1      
  nop                                                                                                            #  69    0x23889  1      
  nop                                                                                                            #  70    0x2388a  1      
  nop                                                                                                            #  71    0x2388b  1      
  nop                                                                                                            #  72    0x2388c  1      
  nop                                                                                                            #  73    0x2388d  1      
  nop                                                                                                            #  74    0x2388e  1      
  nop                                                                                                            #  75    0x2388f  1      
  nop                                                                                                            #  76    0x23890  1      
  nop                                                                                                            #  77    0x23891  1      
  nop                                                                                                            #  78    0x23892  1      
  nop                                                                                                            #  79    0x23893  1      
  nop                                                                                                            #  80    0x23894  1      
  nop                                                                                                            #  81    0x23895  1      
  nop                                                                                                            #  82    0x23896  1      
  nop                                                                                                            #  83    0x23897  1      
  nop                                                                                                            #  84    0x23898  1      
  nop                                                                                                            #  85    0x23899  1      
  nop                                                                                                            #  86    0x2389a  1      
  nop                                                                                                            #  87    0x2389b  1      
  nop                                                                                                            #  88    0x2389c  1      
                                                                                                                                          
.size _ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E, .-_ZNSt8_Rb_treeISsSt4pairIKSsPvESt10_Select1stIS3_ESt4lessISsESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E

