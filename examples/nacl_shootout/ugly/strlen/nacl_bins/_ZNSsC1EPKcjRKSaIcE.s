  .text
  .globl _ZNSsC1EPKcjRKSaIcE
  .type _ZNSsC1EPKcjRKSaIcE, @function

#! file-offset 0xed0a0
#! rip-offset  0xad0a0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC1EPKcjRKSaIcE:                                                     #        0xad0a0  0      OPC=0     
  pushq %rbx                                                              #  1     0xad0a0  1      OPC=1861  
  movl %edi, %ebx                                                         #  2     0xad0a1  2      OPC=1157  
  movl %esi, %edi                                                         #  3     0xad0a3  2      OPC=1157  
  movl %ecx, %ecx                                                         #  4     0xad0a5  2      OPC=1157  
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad0a7  3      OPC=1066  
  subl $0x10, %esp                                                        #  6     0xad0aa  3      OPC=2384  
  addq %r15, %rsp                                                         #  7     0xad0ad  3      OPC=72    
  movl %ecx, %edx                                                         #  8     0xad0b0  2      OPC=1157  
  movb $0x0, (%rsp)                                                       #  9     0xad0b2  4      OPC=1140  
  nop                                                                     #  10    0xad0b6  1      OPC=1343  
  nop                                                                     #  11    0xad0b7  1      OPC=1343  
  nop                                                                     #  12    0xad0b8  1      OPC=1343  
  nop                                                                     #  13    0xad0b9  1      OPC=1343  
  nop                                                                     #  14    0xad0ba  1      OPC=1343  
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad0bb  5      OPC=260   
  movl %ebx, %ebx                                                         #  16    0xad0c0  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad0c2  4      OPC=1136  
  addl $0x10, %esp                                                        #  18    0xad0c6  3      OPC=65    
  addq %r15, %rsp                                                         #  19    0xad0c9  3      OPC=72    
  popq %rbx                                                               #  20    0xad0cc  1      OPC=1694  
  popq %r11                                                               #  21    0xad0cd  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  22    0xad0cf  7      OPC=131   
  nop                                                                     #  23    0xad0d6  1      OPC=1343  
  nop                                                                     #  24    0xad0d7  1      OPC=1343  
  nop                                                                     #  25    0xad0d8  1      OPC=1343  
  nop                                                                     #  26    0xad0d9  1      OPC=1343  
  addq %r15, %r11                                                         #  27    0xad0da  3      OPC=72    
  jmpq %r11                                                               #  28    0xad0dd  3      OPC=928   
  nop                                                                     #  29    0xad0e0  1      OPC=1343  
  nop                                                                     #  30    0xad0e1  1      OPC=1343  
  nop                                                                     #  31    0xad0e2  1      OPC=1343  
  nop                                                                     #  32    0xad0e3  1      OPC=1343  
  nop                                                                     #  33    0xad0e4  1      OPC=1343  
  nop                                                                     #  34    0xad0e5  1      OPC=1343  
  nop                                                                     #  35    0xad0e6  1      OPC=1343  
                                                                                                             
.size _ZNSsC1EPKcjRKSaIcE, .-_ZNSsC1EPKcjRKSaIcE

