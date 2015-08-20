  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, @function

#! file-offset 0x1198a0
#! rip-offset  0xd98a0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEaSEPKw:              #        0xd98a0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd98a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd98a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd98a8  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd98ad  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd98b0  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd98b3  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd98b5  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd98b8  1      OPC=nop            
  nop                                                #  9     0xd98b9  1      OPC=nop            
  nop                                                #  10    0xd98ba  1      OPC=nop            
  callq .wcslen                                      #  11    0xd98bb  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd98c0  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd98c3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd98c5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd98ca  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd98cf  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd98d1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd98d4  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd98d7  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd98dc  1      OPC=nop            
  nop                                                #  21    0xd98dd  1      OPC=nop            
  nop                                                #  22    0xd98de  1      OPC=nop            
  nop                                                #  23    0xd98df  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEPKw

