  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, @function

#! file-offset 0x119fc0
#! rip-offset  0xd9fc0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEaSEPKw:              #        0xd9fc0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd9fc0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd9fc5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd9fc8  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd9fcd  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd9fd0  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd9fd3  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd9fd5  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd9fd8  1      OPC=nop            
  nop                                                #  9     0xd9fd9  1      OPC=nop            
  nop                                                #  10    0xd9fda  1      OPC=nop            
  callq .wcslen                                      #  11    0xd9fdb  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd9fe0  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd9fe3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd9fe5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd9fea  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd9fef  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd9ff1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd9ff4  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd9ff7  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd9ffc  1      OPC=nop            
  nop                                                #  21    0xd9ffd  1      OPC=nop            
  nop                                                #  22    0xd9ffe  1      OPC=nop            
  nop                                                #  23    0xd9fff  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEPKw

