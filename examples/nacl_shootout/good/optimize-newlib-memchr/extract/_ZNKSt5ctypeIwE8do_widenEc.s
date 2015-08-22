  .text
  .globl _ZNKSt5ctypeIwE8do_widenEc
  .type _ZNKSt5ctypeIwE8do_widenEc, @function

#! file-offset 0x13d400
#! rip-offset  0xfd400
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE8do_widenEc:    #        0xfd400  0      OPC=<label>         
  popq %r11                     #  1     0xfd400  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0xfd402  2      OPC=movl_r32_r32    
  movzbl %sil, %esi             #  3     0xfd404  4      OPC=movzbl_r32_r8   
  leaq 0x90(%rdi,%rsi,4), %rax  #  4     0xfd408  8      OPC=leaq_r64_m16    
  movl %eax, %eax               #  5     0xfd410  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  6     0xfd412  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  7     0xfd416  7      OPC=andl_r32_imm32  
  nop                           #  8     0xfd41d  1      OPC=nop             
  nop                           #  9     0xfd41e  1      OPC=nop             
  nop                           #  10    0xfd41f  1      OPC=nop             
  nop                           #  11    0xfd420  1      OPC=nop             
  addq %r15, %r11               #  12    0xfd421  3      OPC=addq_r64_r64    
  jmpq %r11                     #  13    0xfd424  3      OPC=jmpq_r64        
                                                                             
.size _ZNKSt5ctypeIwE8do_widenEc, .-_ZNKSt5ctypeIwE8do_widenEc

