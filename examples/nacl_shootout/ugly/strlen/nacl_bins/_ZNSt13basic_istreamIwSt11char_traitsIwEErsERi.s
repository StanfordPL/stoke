  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi, @function

#! file-offset 0xaa8e0
#! rip-offset  0x6a8e0
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEErsERi:                           #        0x6a8e0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                   #  1     0x6a8e0  5      OPC=1138  
  movq %r12, -0x8(%rsp)                                                    #  2     0x6a8e5  5      OPC=1138  
  subl $0x28, %esp                                                         #  3     0x6a8ea  3      OPC=2384  
  addq %r15, %rsp                                                          #  4     0x6a8ed  3      OPC=72    
  movl %edi, %ebx                                                          #  5     0x6a8f0  2      OPC=1157  
  movl %esi, %r12d                                                         #  6     0x6a8f2  3      OPC=1157  
  leal 0xc(%rsp), %esi                                                     #  7     0x6a8f5  4      OPC=1066  
  movl %ebx, %edi                                                          #  8     0x6a8f9  2      OPC=1157  
  callq ._ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_  #  9     0x6a8fb  5      OPC=260   
  movl %ebx, %ebx                                                          #  10    0x6a900  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                 #  11    0x6a902  4      OPC=1156  
  subl $0xc, %eax                                                          #  12    0x6a906  3      OPC=2384  
  movl %eax, %eax                                                          #  13    0x6a909  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                                 #  14    0x6a90b  4      OPC=1156  
  addl %ebx, %eax                                                          #  15    0x6a90f  2      OPC=67    
  movl %eax, %eax                                                          #  16    0x6a911  2      OPC=1157  
  testb $0x5, 0x14(%r15,%rax,1)                                            #  17    0x6a913  6      OPC=2430  
  jne .L_6a940                                                             #  18    0x6a919  6      OPC=963   
  nop                                                                      #  19    0x6a91f  1      OPC=1343  
  nop                                                                      #  20    0x6a920  1      OPC=1343  
  movl 0xc(%rsp), %eax                                                     #  21    0x6a921  4      OPC=1156  
  nop                                                                      #  22    0x6a925  1      OPC=1343  
  movl %r12d, %r12d                                                        #  23    0x6a926  3      OPC=1157  
  movl %eax, (%r15,%r12,1)                                                 #  24    0x6a929  4      OPC=1136  
  nop                                                                      #  25    0x6a92d  1      OPC=1343  
  nop                                                                      #  26    0x6a92e  1      OPC=1343  
  nop                                                                      #  27    0x6a92f  1      OPC=1343  
  nop                                                                      #  28    0x6a930  1      OPC=1343  
  nop                                                                      #  29    0x6a931  1      OPC=1343  
  nop                                                                      #  30    0x6a932  1      OPC=1343  
  nop                                                                      #  31    0x6a933  1      OPC=1343  
  nop                                                                      #  32    0x6a934  1      OPC=1343  
  nop                                                                      #  33    0x6a935  1      OPC=1343  
  nop                                                                      #  34    0x6a936  1      OPC=1343  
  nop                                                                      #  35    0x6a937  1      OPC=1343  
  nop                                                                      #  36    0x6a938  1      OPC=1343  
  nop                                                                      #  37    0x6a939  1      OPC=1343  
  nop                                                                      #  38    0x6a93a  1      OPC=1343  
  nop                                                                      #  39    0x6a93b  1      OPC=1343  
  nop                                                                      #  40    0x6a93c  1      OPC=1343  
  nop                                                                      #  41    0x6a93d  1      OPC=1343  
  nop                                                                      #  42    0x6a93e  1      OPC=1343  
  nop                                                                      #  43    0x6a93f  1      OPC=1343  
  nop                                                                      #  44    0x6a940  1      OPC=1343  
  nop                                                                      #  45    0x6a941  1      OPC=1343  
  nop                                                                      #  46    0x6a942  1      OPC=1343  
  nop                                                                      #  47    0x6a943  1      OPC=1343  
  nop                                                                      #  48    0x6a944  1      OPC=1343  
  nop                                                                      #  49    0x6a945  1      OPC=1343  
.L_6a940:                                                                  #        0x6a946  0      OPC=0     
  movl %ebx, %eax                                                          #  50    0x6a946  2      OPC=1157  
  movq 0x20(%rsp), %r12                                                    #  51    0x6a948  5      OPC=1161  
  movq 0x18(%rsp), %rbx                                                    #  52    0x6a94d  5      OPC=1161  
  addl $0x28, %esp                                                         #  53    0x6a952  3      OPC=65    
  addq %r15, %rsp                                                          #  54    0x6a955  3      OPC=72    
  popq %r11                                                                #  55    0x6a958  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                  #  56    0x6a95a  7      OPC=131   
  nop                                                                      #  57    0x6a961  1      OPC=1343  
  nop                                                                      #  58    0x6a962  1      OPC=1343  
  nop                                                                      #  59    0x6a963  1      OPC=1343  
  nop                                                                      #  60    0x6a964  1      OPC=1343  
  addq %r15, %r11                                                          #  61    0x6a965  3      OPC=72    
  jmpq %r11                                                                #  62    0x6a968  3      OPC=928   
  nop                                                                      #  63    0x6a96b  1      OPC=1343  
  nop                                                                      #  64    0x6a96c  1      OPC=1343  
                                                                                                              
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsERi, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsERi

