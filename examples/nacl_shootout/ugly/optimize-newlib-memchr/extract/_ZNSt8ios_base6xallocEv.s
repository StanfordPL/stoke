  .text
  .globl _ZNSt8ios_base6xallocEv
  .type _ZNSt8ios_base6xallocEv, @function

#! file-offset 0x128640
#! rip-offset  0xe8640
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base6xallocEv:     #        0xe8640  0      OPC=<label>         
  movl 0xff904a6(%rip), %eax  #  1     0xe8640  6      OPC=movl_r32_m32    
  popq %r11                   #  2     0xe8646  2      OPC=popq_r64_1      
  leal 0x1(%rax), %edx        #  3     0xe8648  3      OPC=leal_r32_m16    
  addl $0x4, %eax             #  4     0xe864b  3      OPC=addl_r32_imm8   
  movl %edx, 0xff90498(%rip)  #  5     0xe864e  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  6     0xe8654  7      OPC=andl_r32_imm32  
  nop                         #  7     0xe865b  1      OPC=nop             
  nop                         #  8     0xe865c  1      OPC=nop             
  nop                         #  9     0xe865d  1      OPC=nop             
  nop                         #  10    0xe865e  1      OPC=nop             
  addq %r15, %r11             #  11    0xe865f  3      OPC=addq_r64_r64    
  jmpq %r11                   #  12    0xe8662  3      OPC=jmpq_r64        
  nop                         #  13    0xe8665  1      OPC=nop             
  nop                         #  14    0xe8666  1      OPC=nop             
                                                                           
.size _ZNSt8ios_base6xallocEv, .-_ZNSt8ios_base6xallocEv

