  .text
  .globl _ZNSsC2ESt16initializer_listIcERKSaIcE
  .type _ZNSsC2ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xede40
#! rip-offset  0xade40
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ESt16initializer_listIcERKSaIcE:                                  #        0xade40  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xade40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xade41  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xade43  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                        #  4     0xade45  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                         #  5     0xade49  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,1), %esi                                                #  6     0xade4b  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  7     0xade4e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  8     0xade51  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  9     0xade54  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xade58  1      OPC=nop             
  nop                                                                     #  11    0xade59  1      OPC=nop             
  nop                                                                     #  12    0xade5a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xade5b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  14    0xade60  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  15    0xade62  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  16    0xade66  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  17    0xade69  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  18    0xade6c  1      OPC=popq_r64_1      
  popq %r11                                                               #  19    0xade6d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  20    0xade6f  7      OPC=andl_r32_imm32  
  nop                                                                     #  21    0xade76  1      OPC=nop             
  nop                                                                     #  22    0xade77  1      OPC=nop             
  nop                                                                     #  23    0xade78  1      OPC=nop             
  nop                                                                     #  24    0xade79  1      OPC=nop             
  addq %r15, %r11                                                         #  25    0xade7a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  26    0xade7d  3      OPC=jmpq_r64        
  nop                                                                     #  27    0xade80  1      OPC=nop             
  nop                                                                     #  28    0xade81  1      OPC=nop             
  nop                                                                     #  29    0xade82  1      OPC=nop             
  nop                                                                     #  30    0xade83  1      OPC=nop             
  nop                                                                     #  31    0xade84  1      OPC=nop             
  nop                                                                     #  32    0xade85  1      OPC=nop             
  nop                                                                     #  33    0xade86  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2ESt16initializer_listIcERKSaIcE, .-_ZNSsC2ESt16initializer_listIcERKSaIcE

