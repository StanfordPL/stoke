  .text
  .globl _ZNSsC2ESt16initializer_listIcERKSaIcE
  .type _ZNSsC2ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xecee0
#! rip-offset  0xacee0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC2ESt16initializer_listIcERKSaIcE:                                  #        0xacee0  0      OPC=0     
  pushq %rbx                                                              #  1     0xacee0  1      OPC=1861  
  movl %edi, %ebx                                                         #  2     0xacee1  2      OPC=1157  
  movl %esi, %edi                                                         #  3     0xacee3  2      OPC=1157  
  shrq $0x20, %rsi                                                        #  4     0xacee5  4      OPC=2315  
  movl %edx, %edx                                                         #  5     0xacee9  2      OPC=1157  
  leal (%rdi,%rsi,1), %esi                                                #  6     0xaceeb  3      OPC=1066  
  subl $0x10, %esp                                                        #  7     0xaceee  3      OPC=2384  
  addq %r15, %rsp                                                         #  8     0xacef1  3      OPC=72    
  movb $0x0, (%rsp)                                                       #  9     0xacef4  4      OPC=1140  
  nop                                                                     #  10    0xacef8  1      OPC=1343  
  nop                                                                     #  11    0xacef9  1      OPC=1343  
  nop                                                                     #  12    0xacefa  1      OPC=1343  
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xacefb  5      OPC=260   
  movl %ebx, %ebx                                                         #  14    0xacf00  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  15    0xacf02  4      OPC=1136  
  addl $0x10, %esp                                                        #  16    0xacf06  3      OPC=65    
  addq %r15, %rsp                                                         #  17    0xacf09  3      OPC=72    
  popq %rbx                                                               #  18    0xacf0c  1      OPC=1694  
  popq %r11                                                               #  19    0xacf0d  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  20    0xacf0f  7      OPC=131   
  nop                                                                     #  21    0xacf16  1      OPC=1343  
  nop                                                                     #  22    0xacf17  1      OPC=1343  
  nop                                                                     #  23    0xacf18  1      OPC=1343  
  nop                                                                     #  24    0xacf19  1      OPC=1343  
  addq %r15, %r11                                                         #  25    0xacf1a  3      OPC=72    
  jmpq %r11                                                               #  26    0xacf1d  3      OPC=928   
  nop                                                                     #  27    0xacf20  1      OPC=1343  
  nop                                                                     #  28    0xacf21  1      OPC=1343  
  nop                                                                     #  29    0xacf22  1      OPC=1343  
  nop                                                                     #  30    0xacf23  1      OPC=1343  
  nop                                                                     #  31    0xacf24  1      OPC=1343  
  nop                                                                     #  32    0xacf25  1      OPC=1343  
  nop                                                                     #  33    0xacf26  1      OPC=1343  
                                                                                                             
.size _ZNSsC2ESt16initializer_listIcERKSaIcE, .-_ZNSsC2ESt16initializer_listIcERKSaIcE

