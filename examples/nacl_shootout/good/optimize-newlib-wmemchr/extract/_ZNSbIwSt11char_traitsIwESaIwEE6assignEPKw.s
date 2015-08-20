  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, @function

#! file-offset 0x119800
#! rip-offset  0xd9800
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw:         #        0xd9800  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd9800  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd9805  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd9808  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd980d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd9810  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd9813  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd9815  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd9818  1      OPC=nop            
  nop                                                #  9     0xd9819  1      OPC=nop            
  nop                                                #  10    0xd981a  1      OPC=nop            
  callq .wcslen                                      #  11    0xd981b  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd9820  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd9823  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd9825  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd982a  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd982f  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd9831  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd9834  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd9837  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd983c  1      OPC=nop            
  nop                                                #  21    0xd983d  1      OPC=nop            
  nop                                                #  22    0xd983e  1      OPC=nop            
  nop                                                #  23    0xd983f  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw

