  .text
  .globl _ZNSs6assignEPKc
  .type _ZNSs6assignEPKc, @function

#! file-offset 0xeee40
#! rip-offset  0xaee40
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSs6assignEPKc:         #        0xaee40  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xaee40  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xaee45  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xaee48  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xaee4d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xaee50  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xaee53  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xaee55  3      OPC=movl_r32_r32   
  nop                      #  8     0xaee58  1      OPC=nop            
  nop                      #  9     0xaee59  1      OPC=nop            
  nop                      #  10    0xaee5a  1      OPC=nop            
  callq .strlen            #  11    0xaee5b  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xaee60  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xaee63  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xaee65  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xaee6a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xaee6f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xaee71  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xaee74  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6assignEPKcj  #  19    0xaee77  5      OPC=jmpq_label_1   
  nop                      #  20    0xaee7c  1      OPC=nop            
  nop                      #  21    0xaee7d  1      OPC=nop            
  nop                      #  22    0xaee7e  1      OPC=nop            
  nop                      #  23    0xaee7f  1      OPC=nop            
                                                                       
.size _ZNSs6assignEPKc, .-_ZNSs6assignEPKc

