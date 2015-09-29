  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, @function

#! file-offset 0x119100
#! rip-offset  0xd9100
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw:         #        0xd9100  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd9100  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd9105  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd9108  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd910d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd9110  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd9113  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd9115  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd9118  1      OPC=nop            
  nop                                                #  9     0xd9119  1      OPC=nop            
  nop                                                #  10    0xd911a  1      OPC=nop            
  callq .wcslen                                      #  11    0xd911b  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd9120  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd9123  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd9125  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd912a  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd912f  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd9131  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd9134  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj  #  19    0xd9137  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd913c  1      OPC=nop            
  nop                                                #  21    0xd913d  1      OPC=nop            
  nop                                                #  22    0xd913e  1      OPC=nop            
  nop                                                #  23    0xd913f  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw

