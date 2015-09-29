  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, @function

#! file-offset 0x119f20
#! rip-offset  0xd9f20
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw:         #        0xd9f20  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd9f20  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd9f25  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd9f28  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd9f2d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd9f30  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd9f33  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd9f35  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd9f38  1      OPC=nop            
  nop                                                #  9     0xd9f39  1      OPC=nop            
  nop                                                #  10    0xd9f3a  1      OPC=nop            
  callq .wcslen                                      #  11    0xd9f3b  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd9f40  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd9f43  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd9f45  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd9f4a  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd9f4f  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd9f51  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd9f54  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd9f57  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd9f5c  1      OPC=nop            
  nop                                                #  21    0xd9f5d  1      OPC=nop            
  nop                                                #  22    0xd9f5e  1      OPC=nop            
  nop                                                #  23    0xd9f5f  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw

