  .text
  .globl _ZNSsC2IPcEET_S1_RKSaIcE
  .type _ZNSsC2IPcEET_S1_RKSaIcE, @function

#! file-offset 0xed820
#! rip-offset  0xad820
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPcEET_S1_RKSaIcE:                                                #        0xad820  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad820  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad821  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad823  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad825  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad827  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad829  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad82c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad82f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad833  1      OPC=nop             
  nop                                                                     #  10    0xad834  1      OPC=nop             
  nop                                                                     #  11    0xad835  1      OPC=nop             
  nop                                                                     #  12    0xad836  1      OPC=nop             
  nop                                                                     #  13    0xad837  1      OPC=nop             
  nop                                                                     #  14    0xad838  1      OPC=nop             
  nop                                                                     #  15    0xad839  1      OPC=nop             
  nop                                                                     #  16    0xad83a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xad83b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad840  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad842  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad846  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad849  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad84c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad84d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad84f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad856  1      OPC=nop             
  nop                                                                     #  26    0xad857  1      OPC=nop             
  nop                                                                     #  27    0xad858  1      OPC=nop             
  nop                                                                     #  28    0xad859  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad85a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad85d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad860  1      OPC=nop             
  nop                                                                     #  32    0xad861  1      OPC=nop             
  nop                                                                     #  33    0xad862  1      OPC=nop             
  nop                                                                     #  34    0xad863  1      OPC=nop             
  nop                                                                     #  35    0xad864  1      OPC=nop             
  nop                                                                     #  36    0xad865  1      OPC=nop             
  nop                                                                     #  37    0xad866  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPcEET_S1_RKSaIcE, .-_ZNSsC2IPcEET_S1_RKSaIcE

