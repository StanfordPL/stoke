  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0xeeee0
#! rip-offset  0xaeee0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSsaSEPKc:              #        0xaeee0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xaeee0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xaeee5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xaeee8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xaeeed  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xaeef0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xaeef3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xaeef5  3      OPC=movl_r32_r32   
  nop                      #  8     0xaeef8  1      OPC=nop            
  nop                      #  9     0xaeef9  1      OPC=nop            
  nop                      #  10    0xaeefa  1      OPC=nop            
  callq .strlen            #  11    0xaeefb  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xaef00  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xaef03  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xaef05  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xaef0a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xaef0f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xaef11  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xaef14  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6assignEPKcj  #  19    0xaef17  5      OPC=jmpq_label_1   
  nop                      #  20    0xaef1c  1      OPC=nop            
  nop                      #  21    0xaef1d  1      OPC=nop            
  nop                      #  22    0xaef1e  1      OPC=nop            
  nop                      #  23    0xaef1f  1      OPC=nop            
                                                                       
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

