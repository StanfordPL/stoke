  .text
  .globl _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12a3a0
#! rip-offset  0xea3a0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv:  #        0xea3a0  0      OPC=0     
  movl %edi, %edi                                                #  1     0xea3a0  2      OPC=1157  
  subl $0x8, %esp                                                #  2     0xea3a2  3      OPC=2384  
  addq %r15, %rsp                                                #  3     0xea3a5  3      OPC=72    
  movl %edi, %edi                                                #  4     0xea3a8  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                       #  5     0xea3aa  4      OPC=1156  
  movl %eax, %eax                                                #  6     0xea3ae  2      OPC=1157  
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xea3b0  5      OPC=1156  
  nop                                                            #  8     0xea3b5  1      OPC=1343  
  nop                                                            #  9     0xea3b6  1      OPC=1343  
  nop                                                            #  10    0xea3b7  1      OPC=1343  
  andl $0xffffffe0, %eax                                         #  11    0xea3b8  6      OPC=131   
  nop                                                            #  12    0xea3be  1      OPC=1343  
  nop                                                            #  13    0xea3bf  1      OPC=1343  
  nop                                                            #  14    0xea3c0  1      OPC=1343  
  addq %r15, %rax                                                #  15    0xea3c1  3      OPC=72    
  callq %rax                                                     #  16    0xea3c4  2      OPC=258   
  addl $0x8, %esp                                                #  17    0xea3c6  3      OPC=65    
  addq %r15, %rsp                                                #  18    0xea3c9  3      OPC=72    
  popq %r11                                                      #  19    0xea3cc  2      OPC=1694  
  andl $0xffffffe0, %r11d                                        #  20    0xea3ce  7      OPC=131   
  nop                                                            #  21    0xea3d5  1      OPC=1343  
  nop                                                            #  22    0xea3d6  1      OPC=1343  
  nop                                                            #  23    0xea3d7  1      OPC=1343  
  nop                                                            #  24    0xea3d8  1      OPC=1343  
  addq %r15, %r11                                                #  25    0xea3d9  3      OPC=72    
  jmpq %r11                                                      #  26    0xea3dc  3      OPC=928   
  nop                                                            #  27    0xea3df  1      OPC=1343  
  nop                                                            #  28    0xea3e0  1      OPC=1343  
  nop                                                            #  29    0xea3e1  1      OPC=1343  
  nop                                                            #  30    0xea3e2  1      OPC=1343  
  nop                                                            #  31    0xea3e3  1      OPC=1343  
  nop                                                            #  32    0xea3e4  1      OPC=1343  
  nop                                                            #  33    0xea3e5  1      OPC=1343  
  nop                                                            #  34    0xea3e6  1      OPC=1343  
  nop                                                            #  35    0xea3e7  1      OPC=1343  
  nop                                                            #  36    0xea3e8  1      OPC=1343  
  nop                                                            #  37    0xea3e9  1      OPC=1343  
  nop                                                            #  38    0xea3ea  1      OPC=1343  
  nop                                                            #  39    0xea3eb  1      OPC=1343  
  nop                                                            #  40    0xea3ec  1      OPC=1343  
  cmpq $0xff, %rdx                                               #  41    0xea3ed  4      OPC=475   
  movl %eax, %edi                                                #  42    0xea3f1  2      OPC=1157  
  je .L_ea400                                                    #  43    0xea3f3  6      OPC=893   
  nop                                                            #  44    0xea3f9  1      OPC=1343  
  nop                                                            #  45    0xea3fa  1      OPC=1343  
  nop                                                            #  46    0xea3fb  1      OPC=1343  
  nop                                                            #  47    0xea3fc  1      OPC=1343  
  nop                                                            #  48    0xea3fd  1      OPC=1343  
  nop                                                            #  49    0xea3fe  1      OPC=1343  
  nop                                                            #  50    0xea3ff  1      OPC=1343  
  nop                                                            #  51    0xea400  1      OPC=1343  
  nop                                                            #  52    0xea401  1      OPC=1343  
  nop                                                            #  53    0xea402  1      OPC=1343  
  nop                                                            #  54    0xea403  1      OPC=1343  
  nop                                                            #  55    0xea404  1      OPC=1343  
  nop                                                            #  56    0xea405  1      OPC=1343  
  nop                                                            #  57    0xea406  1      OPC=1343  
  nop                                                            #  58    0xea407  1      OPC=1343  
  nop                                                            #  59    0xea408  1      OPC=1343  
  nop                                                            #  60    0xea409  1      OPC=1343  
  nop                                                            #  61    0xea40a  1      OPC=1343  
  nop                                                            #  62    0xea40b  1      OPC=1343  
  nop                                                            #  63    0xea40c  1      OPC=1343  
  nop                                                            #  64    0xea40d  1      OPC=1343  
  callq ._Unwind_Resume                                          #  65    0xea40e  5      OPC=260   
.L_ea400:                                                        #        0xea413  0      OPC=0     
  nop                                                            #  66    0xea413  1      OPC=1343  
  nop                                                            #  67    0xea414  1      OPC=1343  
  nop                                                            #  68    0xea415  1      OPC=1343  
  nop                                                            #  69    0xea416  1      OPC=1343  
  nop                                                            #  70    0xea417  1      OPC=1343  
  nop                                                            #  71    0xea418  1      OPC=1343  
  nop                                                            #  72    0xea419  1      OPC=1343  
  nop                                                            #  73    0xea41a  1      OPC=1343  
  nop                                                            #  74    0xea41b  1      OPC=1343  
  nop                                                            #  75    0xea41c  1      OPC=1343  
  nop                                                            #  76    0xea41d  1      OPC=1343  
  nop                                                            #  77    0xea41e  1      OPC=1343  
  nop                                                            #  78    0xea41f  1      OPC=1343  
  nop                                                            #  79    0xea420  1      OPC=1343  
  nop                                                            #  80    0xea421  1      OPC=1343  
  nop                                                            #  81    0xea422  1      OPC=1343  
  nop                                                            #  82    0xea423  1      OPC=1343  
  nop                                                            #  83    0xea424  1      OPC=1343  
  nop                                                            #  84    0xea425  1      OPC=1343  
  nop                                                            #  85    0xea426  1      OPC=1343  
  nop                                                            #  86    0xea427  1      OPC=1343  
  nop                                                            #  87    0xea428  1      OPC=1343  
  nop                                                            #  88    0xea429  1      OPC=1343  
  nop                                                            #  89    0xea42a  1      OPC=1343  
  nop                                                            #  90    0xea42b  1      OPC=1343  
  nop                                                            #  91    0xea42c  1      OPC=1343  
  nop                                                            #  92    0xea42d  1      OPC=1343  
  callq .__cxa_call_unexpected                                   #  93    0xea42e  5      OPC=260   
                                                                                                    
.size _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv

