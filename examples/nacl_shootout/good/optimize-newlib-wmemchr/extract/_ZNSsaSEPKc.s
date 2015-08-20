  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0xee7c0
#! rip-offset  0xae7c0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSsaSEPKc:              #        0xae7c0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xae7c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xae7c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xae7c8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xae7cd  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xae7d0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xae7d3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xae7d5  3      OPC=movl_r32_r32   
  nop                      #  8     0xae7d8  1      OPC=nop            
  nop                      #  9     0xae7d9  1      OPC=nop            
  nop                      #  10    0xae7da  1      OPC=nop            
  callq .strlen            #  11    0xae7db  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xae7e0  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xae7e3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xae7e5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xae7ea  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xae7ef  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xae7f1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xae7f4  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6assignEPKcj  #  19    0xae7f7  5      OPC=jmpq_label_1   
  nop                      #  20    0xae7fc  1      OPC=nop            
  nop                      #  21    0xae7fd  1      OPC=nop            
  nop                      #  22    0xae7fe  1      OPC=nop            
  nop                      #  23    0xae7ff  1      OPC=nop            
                                                                       
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

