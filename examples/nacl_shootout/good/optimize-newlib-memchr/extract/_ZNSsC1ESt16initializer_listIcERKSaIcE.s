  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xede00
#! rip-offset  0xade00
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0xade00  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xade00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xade01  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xade03  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                        #  4     0xade05  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                         #  5     0xade09  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,1), %esi                                                #  6     0xade0b  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  7     0xade0e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  8     0xade11  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  9     0xade14  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xade18  1      OPC=nop             
  nop                                                                     #  11    0xade19  1      OPC=nop             
  nop                                                                     #  12    0xade1a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xade1b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  14    0xade20  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  15    0xade22  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  16    0xade26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  17    0xade29  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  18    0xade2c  1      OPC=popq_r64_1      
  popq %r11                                                               #  19    0xade2d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  20    0xade2f  7      OPC=andl_r32_imm32  
  nop                                                                     #  21    0xade36  1      OPC=nop             
  nop                                                                     #  22    0xade37  1      OPC=nop             
  nop                                                                     #  23    0xade38  1      OPC=nop             
  nop                                                                     #  24    0xade39  1      OPC=nop             
  addq %r15, %r11                                                         #  25    0xade3a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  26    0xade3d  3      OPC=jmpq_r64        
  nop                                                                     #  27    0xade40  1      OPC=nop             
  nop                                                                     #  28    0xade41  1      OPC=nop             
  nop                                                                     #  29    0xade42  1      OPC=nop             
  nop                                                                     #  30    0xade43  1      OPC=nop             
  nop                                                                     #  31    0xade44  1      OPC=nop             
  nop                                                                     #  32    0xade45  1      OPC=nop             
  nop                                                                     #  33    0xade46  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE

