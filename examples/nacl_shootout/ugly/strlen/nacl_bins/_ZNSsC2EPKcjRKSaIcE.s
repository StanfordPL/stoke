  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0xed0e0
#! rip-offset  0xad0e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC2EPKcjRKSaIcE:                                                     #        0xad0e0  0      OPC=0     
  pushq %rbx                                                              #  1     0xad0e0  1      OPC=1861  
  movl %edi, %ebx                                                         #  2     0xad0e1  2      OPC=1157  
  movl %esi, %edi                                                         #  3     0xad0e3  2      OPC=1157  
  movl %ecx, %ecx                                                         #  4     0xad0e5  2      OPC=1157  
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad0e7  3      OPC=1066  
  subl $0x10, %esp                                                        #  6     0xad0ea  3      OPC=2384  
  addq %r15, %rsp                                                         #  7     0xad0ed  3      OPC=72    
  movl %ecx, %edx                                                         #  8     0xad0f0  2      OPC=1157  
  movb $0x0, (%rsp)                                                       #  9     0xad0f2  4      OPC=1140  
  nop                                                                     #  10    0xad0f6  1      OPC=1343  
  nop                                                                     #  11    0xad0f7  1      OPC=1343  
  nop                                                                     #  12    0xad0f8  1      OPC=1343  
  nop                                                                     #  13    0xad0f9  1      OPC=1343  
  nop                                                                     #  14    0xad0fa  1      OPC=1343  
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad0fb  5      OPC=260   
  movl %ebx, %ebx                                                         #  16    0xad100  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad102  4      OPC=1136  
  addl $0x10, %esp                                                        #  18    0xad106  3      OPC=65    
  addq %r15, %rsp                                                         #  19    0xad109  3      OPC=72    
  popq %rbx                                                               #  20    0xad10c  1      OPC=1694  
  popq %r11                                                               #  21    0xad10d  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  22    0xad10f  7      OPC=131   
  nop                                                                     #  23    0xad116  1      OPC=1343  
  nop                                                                     #  24    0xad117  1      OPC=1343  
  nop                                                                     #  25    0xad118  1      OPC=1343  
  nop                                                                     #  26    0xad119  1      OPC=1343  
  addq %r15, %r11                                                         #  27    0xad11a  3      OPC=72    
  jmpq %r11                                                               #  28    0xad11d  3      OPC=928   
  nop                                                                     #  29    0xad120  1      OPC=1343  
  nop                                                                     #  30    0xad121  1      OPC=1343  
  nop                                                                     #  31    0xad122  1      OPC=1343  
  nop                                                                     #  32    0xad123  1      OPC=1343  
  nop                                                                     #  33    0xad124  1      OPC=1343  
  nop                                                                     #  34    0xad125  1      OPC=1343  
  nop                                                                     #  35    0xad126  1      OPC=1343  
                                                                                                             
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE

