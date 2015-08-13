  .text
  .globl _ZNSsC2IPKcEET_S2_RKSaIcE
  .type _ZNSsC2IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xed3a0
#! rip-offset  0xad3a0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPKcEET_S2_RKSaIcE:                                               #        0xad3a0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad3a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad3a1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad3a3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad3a5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad3a7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad3a9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad3ac  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad3af  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad3b3  1      OPC=nop             
  nop                                                                     #  10    0xad3b4  1      OPC=nop             
  nop                                                                     #  11    0xad3b5  1      OPC=nop             
  nop                                                                     #  12    0xad3b6  1      OPC=nop             
  nop                                                                     #  13    0xad3b7  1      OPC=nop             
  nop                                                                     #  14    0xad3b8  1      OPC=nop             
  nop                                                                     #  15    0xad3b9  1      OPC=nop             
  nop                                                                     #  16    0xad3ba  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xad3bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad3c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad3c2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad3c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad3c9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad3cc  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad3cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad3cf  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad3d6  1      OPC=nop             
  nop                                                                     #  26    0xad3d7  1      OPC=nop             
  nop                                                                     #  27    0xad3d8  1      OPC=nop             
  nop                                                                     #  28    0xad3d9  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad3da  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad3dd  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad3e0  1      OPC=nop             
  nop                                                                     #  32    0xad3e1  1      OPC=nop             
  nop                                                                     #  33    0xad3e2  1      OPC=nop             
  nop                                                                     #  34    0xad3e3  1      OPC=nop             
  nop                                                                     #  35    0xad3e4  1      OPC=nop             
  nop                                                                     #  36    0xad3e5  1      OPC=nop             
  nop                                                                     #  37    0xad3e6  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPKcEET_S2_RKSaIcE, .-_ZNSsC2IPKcEET_S2_RKSaIcE

