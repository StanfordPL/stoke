  .text
  .globl _ZNKSt5ctypeIwE8do_widenEc
  .type _ZNKSt5ctypeIwE8do_widenEc, @function

#! file-offset 0x13cce0
#! rip-offset  0xfcce0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE8do_widenEc:    #        0xfcce0  0      OPC=<label>         
  popq %r11                     #  1     0xfcce0  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0xfcce2  2      OPC=movl_r32_r32    
  movzbl %sil, %esi             #  3     0xfcce4  4      OPC=movzbl_r32_r8   
  leaq 0x90(%rdi,%rsi,4), %rax  #  4     0xfcce8  8      OPC=leaq_r64_m16    
  movl %eax, %eax               #  5     0xfccf0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax      #  6     0xfccf2  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  7     0xfccf6  7      OPC=andl_r32_imm32  
  nop                           #  8     0xfccfd  1      OPC=nop             
  nop                           #  9     0xfccfe  1      OPC=nop             
  nop                           #  10    0xfccff  1      OPC=nop             
  nop                           #  11    0xfcd00  1      OPC=nop             
  addq %r15, %r11               #  12    0xfcd01  3      OPC=addq_r64_r64    
  jmpq %r11                     #  13    0xfcd04  3      OPC=jmpq_r64        
                                                                             
.size _ZNKSt5ctypeIwE8do_widenEc, .-_ZNKSt5ctypeIwE8do_widenEc

