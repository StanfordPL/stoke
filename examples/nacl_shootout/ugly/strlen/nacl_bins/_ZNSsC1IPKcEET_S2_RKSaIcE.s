  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xece20
#! rip-offset  0xace20
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode    
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0xace20  0      OPC=0     
  pushq %rbx                                                              #  1     0xace20  1      OPC=1861  
  movl %edi, %ebx                                                         #  2     0xace21  2      OPC=1157  
  movl %esi, %edi                                                         #  3     0xace23  2      OPC=1157  
  movl %edx, %esi                                                         #  4     0xace25  2      OPC=1157  
  movl %ecx, %edx                                                         #  5     0xace27  2      OPC=1157  
  subl $0x10, %esp                                                        #  6     0xace29  3      OPC=2384  
  addq %r15, %rsp                                                         #  7     0xace2c  3      OPC=72    
  movb $0x0, (%rsp)                                                       #  8     0xace2f  4      OPC=1140  
  nop                                                                     #  9     0xace33  1      OPC=1343  
  nop                                                                     #  10    0xace34  1      OPC=1343  
  nop                                                                     #  11    0xace35  1      OPC=1343  
  nop                                                                     #  12    0xace36  1      OPC=1343  
  nop                                                                     #  13    0xace37  1      OPC=1343  
  nop                                                                     #  14    0xace38  1      OPC=1343  
  nop                                                                     #  15    0xace39  1      OPC=1343  
  nop                                                                     #  16    0xace3a  1      OPC=1343  
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xace3b  5      OPC=260   
  movl %ebx, %ebx                                                         #  18    0xace40  2      OPC=1157  
  movl %eax, (%r15,%rbx,1)                                                #  19    0xace42  4      OPC=1136  
  addl $0x10, %esp                                                        #  20    0xace46  3      OPC=65    
  addq %r15, %rsp                                                         #  21    0xace49  3      OPC=72    
  popq %rbx                                                               #  22    0xace4c  1      OPC=1694  
  popq %r11                                                               #  23    0xace4d  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                 #  24    0xace4f  7      OPC=131   
  nop                                                                     #  25    0xace56  1      OPC=1343  
  nop                                                                     #  26    0xace57  1      OPC=1343  
  nop                                                                     #  27    0xace58  1      OPC=1343  
  nop                                                                     #  28    0xace59  1      OPC=1343  
  addq %r15, %r11                                                         #  29    0xace5a  3      OPC=72    
  jmpq %r11                                                               #  30    0xace5d  3      OPC=928   
  nop                                                                     #  31    0xace60  1      OPC=1343  
  nop                                                                     #  32    0xace61  1      OPC=1343  
  nop                                                                     #  33    0xace62  1      OPC=1343  
  nop                                                                     #  34    0xace63  1      OPC=1343  
  nop                                                                     #  35    0xace64  1      OPC=1343  
  nop                                                                     #  36    0xace65  1      OPC=1343  
  nop                                                                     #  37    0xace66  1      OPC=1343  
                                                                                                             
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE

