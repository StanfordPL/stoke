  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, @function

#! file-offset 0xf0cc0
#! rip-offset  0xb0cc0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm:  #        0xb0cc0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb0cc0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb0cc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb0cc5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb0cc8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb0cca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb0ccc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb0cd0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  8     0xb0cd2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb0cd7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb0cd8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb0cde  1      OPC=nop             
  nop                                                                                  #  12    0xb0cdf  1      OPC=nop             
  nop                                                                                  #  13    0xb0ce0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb0ce1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb0ce4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb0ce6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb0ce9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb0cec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb0cee  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb0cf5  1      OPC=nop             
  nop                                                                                  #  21    0xb0cf6  1      OPC=nop             
  nop                                                                                  #  22    0xb0cf7  1      OPC=nop             
  nop                                                                                  #  23    0xb0cf8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb0cf9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb0cfc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb0cff  1      OPC=nop             
  nop                                                                                  #  27    0xb0d00  1      OPC=nop             
  nop                                                                                  #  28    0xb0d01  1      OPC=nop             
  nop                                                                                  #  29    0xb0d02  1      OPC=nop             
  nop                                                                                  #  30    0xb0d03  1      OPC=nop             
  nop                                                                                  #  31    0xb0d04  1      OPC=nop             
  nop                                                                                  #  32    0xb0d05  1      OPC=nop             
  nop                                                                                  #  33    0xb0d06  1      OPC=nop             
  nop                                                                                  #  34    0xb0d07  1      OPC=nop             
  nop                                                                                  #  35    0xb0d08  1      OPC=nop             
  nop                                                                                  #  36    0xb0d09  1      OPC=nop             
  nop                                                                                  #  37    0xb0d0a  1      OPC=nop             
  nop                                                                                  #  38    0xb0d0b  1      OPC=nop             
  nop                                                                                  #  39    0xb0d0c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm

