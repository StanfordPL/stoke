  .text
  .globl _ZNSsC2IPKcEET_S2_RKSaIcE
  .type _ZNSsC2IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xed6a0
#! rip-offset  0xad6a0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPKcEET_S2_RKSaIcE:                                               #        0xad6a0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad6a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad6a1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad6a3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad6a5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad6a7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad6a9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad6ac  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad6af  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad6b3  1      OPC=nop             
  nop                                                                     #  10    0xad6b4  1      OPC=nop             
  nop                                                                     #  11    0xad6b5  1      OPC=nop             
  nop                                                                     #  12    0xad6b6  1      OPC=nop             
  nop                                                                     #  13    0xad6b7  1      OPC=nop             
  nop                                                                     #  14    0xad6b8  1      OPC=nop             
  nop                                                                     #  15    0xad6b9  1      OPC=nop             
  nop                                                                     #  16    0xad6ba  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xad6bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad6c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad6c2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad6c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad6c9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad6cc  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad6cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad6cf  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad6d6  1      OPC=nop             
  nop                                                                     #  26    0xad6d7  1      OPC=nop             
  nop                                                                     #  27    0xad6d8  1      OPC=nop             
  nop                                                                     #  28    0xad6d9  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad6da  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad6dd  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad6e0  1      OPC=nop             
  nop                                                                     #  32    0xad6e1  1      OPC=nop             
  nop                                                                     #  33    0xad6e2  1      OPC=nop             
  nop                                                                     #  34    0xad6e3  1      OPC=nop             
  nop                                                                     #  35    0xad6e4  1      OPC=nop             
  nop                                                                     #  36    0xad6e5  1      OPC=nop             
  nop                                                                     #  37    0xad6e6  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPKcEET_S2_RKSaIcE, .-_ZNSsC2IPKcEET_S2_RKSaIcE

