  .text
  .globl _ZNSsC2IPcEET_S1_RKSaIcE
  .type _ZNSsC2IPcEET_S1_RKSaIcE, @function

#! file-offset 0xedb20
#! rip-offset  0xadb20
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPcEET_S1_RKSaIcE:                                                #        0xadb20  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadb20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xadb21  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xadb23  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xadb25  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xadb27  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xadb29  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xadb2c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xadb2f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xadb33  1      OPC=nop             
  nop                                                                     #  10    0xadb34  1      OPC=nop             
  nop                                                                     #  11    0xadb35  1      OPC=nop             
  nop                                                                     #  12    0xadb36  1      OPC=nop             
  nop                                                                     #  13    0xadb37  1      OPC=nop             
  nop                                                                     #  14    0xadb38  1      OPC=nop             
  nop                                                                     #  15    0xadb39  1      OPC=nop             
  nop                                                                     #  16    0xadb3a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xadb3b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xadb40  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xadb42  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xadb46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xadb49  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xadb4c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xadb4d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xadb4f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xadb56  1      OPC=nop             
  nop                                                                     #  26    0xadb57  1      OPC=nop             
  nop                                                                     #  27    0xadb58  1      OPC=nop             
  nop                                                                     #  28    0xadb59  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xadb5a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xadb5d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xadb60  1      OPC=nop             
  nop                                                                     #  32    0xadb61  1      OPC=nop             
  nop                                                                     #  33    0xadb62  1      OPC=nop             
  nop                                                                     #  34    0xadb63  1      OPC=nop             
  nop                                                                     #  35    0xadb64  1      OPC=nop             
  nop                                                                     #  36    0xadb65  1      OPC=nop             
  nop                                                                     #  37    0xadb66  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPcEET_S1_RKSaIcE, .-_ZNSsC2IPcEET_S1_RKSaIcE

