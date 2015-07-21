  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xecea0
#! rip-offset  0xacea0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0xacea0  0      OPC=0     
  pushq %rbx                                                              #  1     0xacea0  1      OPC=1861  
  movl %edi, %ebx                                                         #  2     0xacea1  2      OPC=1157  
  movl %esi, %edi                                                         #  3     0xacea3  2      OPC=1157  
  shrq $0x20, %rsi                                                        #  4     0xacea5  4      OPC=2315  
  movl %edx, %edx                                                         #  5     0xacea9  2      OPC=1157  
  leal (%rdi,%rsi,1), %esi                                                #  6     0xaceab  3      OPC=1066  
  subl $0x10, %esp                                                        #  7     0xaceae  3      OPC=2384  
  addq %r15, %rsp                                                         #  8     0xaceb1  3      OPC=72    
  movb $0x0, (%rsp)                                                       #  9     0xaceb4  4      OPC=1140  
  nop                                                                     #  10    0xaceb8  1      OPC=1343  
  nop                                                                     #  11    0xaceb9  1      OPC=1343  
  nop                                                                     #  12    0xaceba  1      OPC=1343  
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xacebb  5      OPC=260   
  movl %ebx, %ebx                                                         #  14    0xacec0  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  15    0xacec2  4      OPC=1136  
  addl $0x10, %esp                                                        #  16    0xacec6  3      OPC=65    
  addq %r15, %rsp                                                         #  17    0xacec9  3      OPC=72    
  popq %rbx                                                               #  18    0xacecc  1      OPC=1694  
  popq %r11                                                               #  19    0xacecd  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  20    0xacecf  7      OPC=131   
  nop                                                                     #  21    0xaced6  1      OPC=1343  
  nop                                                                     #  22    0xaced7  1      OPC=1343  
  nop                                                                     #  23    0xaced8  1      OPC=1343  
  nop                                                                     #  24    0xaced9  1      OPC=1343  
  addq %r15, %r11                                                         #  25    0xaceda  3      OPC=72    
  jmpq %r11                                                               #  26    0xacedd  3      OPC=928   
  nop                                                                     #  27    0xacee0  1      OPC=1343  
  nop                                                                     #  28    0xacee1  1      OPC=1343  
  nop                                                                     #  29    0xacee2  1      OPC=1343  
  nop                                                                     #  30    0xacee3  1      OPC=1343  
  nop                                                                     #  31    0xacee4  1      OPC=1343  
  nop                                                                     #  32    0xacee5  1      OPC=1343  
  nop                                                                     #  33    0xacee6  1      OPC=1343  
                                                                                                             
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE

