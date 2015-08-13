  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, @function

#! file-offset 0x1195a0
#! rip-offset  0xd95a0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEaSEPKw:              #        0xd95a0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd95a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd95a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd95a8  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd95ad  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd95b0  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd95b3  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd95b5  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd95b8  1      OPC=nop            
  nop                                                #  9     0xd95b9  1      OPC=nop            
  nop                                                #  10    0xd95ba  1      OPC=nop            
  callq .wcslen                                      #  11    0xd95bb  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd95c0  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd95c3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd95c5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd95ca  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd95cf  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd95d1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd95d4  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd95d7  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd95dc  1      OPC=nop            
  nop                                                #  21    0xd95dd  1      OPC=nop            
  nop                                                #  22    0xd95de  1      OPC=nop            
  nop                                                #  23    0xd95df  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEPKw

