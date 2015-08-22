  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0xed0c0
#! rip-offset  0xad0c0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSs6appendEPKc:         #        0xad0c0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xad0c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xad0c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xad0c8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xad0cd  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xad0d0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xad0d3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xad0d5  3      OPC=movl_r32_r32   
  nop                      #  8     0xad0d8  1      OPC=nop            
  nop                      #  9     0xad0d9  1      OPC=nop            
  nop                      #  10    0xad0da  1      OPC=nop            
  callq .strlen            #  11    0xad0db  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xad0e0  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xad0e3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xad0e5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xad0ea  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xad0ef  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xad0f1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xad0f4  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xad0f7  5      OPC=jmpq_label_1   
  nop                      #  20    0xad0fc  1      OPC=nop            
  nop                      #  21    0xad0fd  1      OPC=nop            
  nop                      #  22    0xad0fe  1      OPC=nop            
  nop                      #  23    0xad0ff  1      OPC=nop            
                                                                       
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

