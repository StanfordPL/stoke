  .text
  .globl _ZNSsaSEPKc
  .type _ZNSsaSEPKc, @function

#! file-offset 0xee4c0
#! rip-offset  0xae4c0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSsaSEPKc:              #        0xae4c0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xae4c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xae4c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xae4c8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xae4cd  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xae4d0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xae4d3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xae4d5  3      OPC=movl_r32_r32   
  nop                      #  8     0xae4d8  1      OPC=nop            
  nop                      #  9     0xae4d9  1      OPC=nop            
  nop                      #  10    0xae4da  1      OPC=nop            
  callq .strlen            #  11    0xae4db  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xae4e0  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xae4e3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xae4e5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xae4ea  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xae4ef  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xae4f1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xae4f4  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6assignEPKcj  #  19    0xae4f7  5      OPC=jmpq_label_1   
  nop                      #  20    0xae4fc  1      OPC=nop            
  nop                      #  21    0xae4fd  1      OPC=nop            
  nop                      #  22    0xae4fe  1      OPC=nop            
  nop                      #  23    0xae4ff  1      OPC=nop            
                                                                       
.size _ZNSsaSEPKc, .-_ZNSsaSEPKc

