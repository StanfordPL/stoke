  .text
  .globl _ZNSsC2ESt16initializer_listIcERKSaIcE
  .type _ZNSsC2ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xed720
#! rip-offset  0xad720
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ESt16initializer_listIcERKSaIcE:                                  #        0xad720  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad720  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad721  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad723  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                        #  4     0xad725  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                         #  5     0xad729  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,1), %esi                                                #  6     0xad72b  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  7     0xad72e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  8     0xad731  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  9     0xad734  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad738  1      OPC=nop             
  nop                                                                     #  11    0xad739  1      OPC=nop             
  nop                                                                     #  12    0xad73a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xad73b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  14    0xad740  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  15    0xad742  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  16    0xad746  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  17    0xad749  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  18    0xad74c  1      OPC=popq_r64_1      
  popq %r11                                                               #  19    0xad74d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  20    0xad74f  7      OPC=andl_r32_imm32  
  nop                                                                     #  21    0xad756  1      OPC=nop             
  nop                                                                     #  22    0xad757  1      OPC=nop             
  nop                                                                     #  23    0xad758  1      OPC=nop             
  nop                                                                     #  24    0xad759  1      OPC=nop             
  addq %r15, %r11                                                         #  25    0xad75a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  26    0xad75d  3      OPC=jmpq_r64        
  nop                                                                     #  27    0xad760  1      OPC=nop             
  nop                                                                     #  28    0xad761  1      OPC=nop             
  nop                                                                     #  29    0xad762  1      OPC=nop             
  nop                                                                     #  30    0xad763  1      OPC=nop             
  nop                                                                     #  31    0xad764  1      OPC=nop             
  nop                                                                     #  32    0xad765  1      OPC=nop             
  nop                                                                     #  33    0xad766  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2ESt16initializer_listIcERKSaIcE, .-_ZNSsC2ESt16initializer_listIcERKSaIcE

