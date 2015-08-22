  .text
  .globl _ZNKSs7_M_iendEv
  .type _ZNKSs7_M_iendEv, @function

#! file-offset 0xeacc0
#! rip-offset  0xaacc0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs7_M_iendEv:          #        0xaacc0  0      OPC=<label>         
  movl %edi, %edi           #  1     0xaacc0  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0xaacc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  3     0xaacc4  4      OPC=movl_r32_m32    
  popq %r11                 #  4     0xaacc8  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx     #  5     0xaacca  3      OPC=leal_r32_m16    
  movl %edx, %edx           #  6     0xaaccd  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax  #  7     0xaaccf  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  8     0xaacd3  7      OPC=andl_r32_imm32  
  nop                       #  9     0xaacda  1      OPC=nop             
  nop                       #  10    0xaacdb  1      OPC=nop             
  nop                       #  11    0xaacdc  1      OPC=nop             
  nop                       #  12    0xaacdd  1      OPC=nop             
  addq %r15, %r11           #  13    0xaacde  3      OPC=addq_r64_r64    
  jmpq %r11                 #  14    0xaace1  3      OPC=jmpq_r64        
  nop                       #  15    0xaace4  1      OPC=nop             
  nop                       #  16    0xaace5  1      OPC=nop             
  nop                       #  17    0xaace6  1      OPC=nop             
                                                                         
.size _ZNKSs7_M_iendEv, .-_ZNKSs7_M_iendEv

