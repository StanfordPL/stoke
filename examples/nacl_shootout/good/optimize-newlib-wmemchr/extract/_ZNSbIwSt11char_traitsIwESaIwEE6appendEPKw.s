  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, @function

#! file-offset 0x1189e0
#! rip-offset  0xd89e0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw:         #        0xd89e0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)                              #  1     0xd89e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd89e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                             #  3     0xd89e8  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                   #  4     0xd89ed  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  5     0xd89f0  3      OPC=addq_r64_r64   
  movl %edi, %ebx                                    #  6     0xd89f3  2      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  7     0xd89f5  3      OPC=movl_r32_r32   
  nop                                                #  8     0xd89f8  1      OPC=nop            
  nop                                                #  9     0xd89f9  1      OPC=nop            
  nop                                                #  10    0xd89fa  1      OPC=nop            
  callq .wcslen                                      #  11    0xd89fb  5      OPC=callq_label    
  movl %r12d, %esi                                   #  12    0xd8a00  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  13    0xd8a03  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                              #  14    0xd8a05  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                               #  15    0xd8a0a  5      OPC=movq_r64_m64   
  movl %eax, %edx                                    #  16    0xd8a0f  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                   #  17    0xd8a11  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  18    0xd8a14  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj  #  19    0xd8a17  5      OPC=jmpq_label_1   
  nop                                                #  20    0xd8a1c  1      OPC=nop            
  nop                                                #  21    0xd8a1d  1      OPC=nop            
  nop                                                #  22    0xd8a1e  1      OPC=nop            
  nop                                                #  23    0xd8a1f  1      OPC=nop            
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw

