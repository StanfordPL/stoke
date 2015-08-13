  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0xed7e0
#! rip-offset  0xad7e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0xad7e0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad7e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad7e1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad7e3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad7e5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad7e7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad7e9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad7ec  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad7ef  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad7f3  1      OPC=nop             
  nop                                                                     #  10    0xad7f4  1      OPC=nop             
  nop                                                                     #  11    0xad7f5  1      OPC=nop             
  nop                                                                     #  12    0xad7f6  1      OPC=nop             
  nop                                                                     #  13    0xad7f7  1      OPC=nop             
  nop                                                                     #  14    0xad7f8  1      OPC=nop             
  nop                                                                     #  15    0xad7f9  1      OPC=nop             
  nop                                                                     #  16    0xad7fa  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xad7fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad800  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad802  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad806  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad809  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad80c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad80d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad80f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad816  1      OPC=nop             
  nop                                                                     #  26    0xad817  1      OPC=nop             
  nop                                                                     #  27    0xad818  1      OPC=nop             
  nop                                                                     #  28    0xad819  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad81a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad81d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad820  1      OPC=nop             
  nop                                                                     #  32    0xad821  1      OPC=nop             
  nop                                                                     #  33    0xad822  1      OPC=nop             
  nop                                                                     #  34    0xad823  1      OPC=nop             
  nop                                                                     #  35    0xad824  1      OPC=nop             
  nop                                                                     #  36    0xad825  1      OPC=nop             
  nop                                                                     #  37    0xad826  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE

