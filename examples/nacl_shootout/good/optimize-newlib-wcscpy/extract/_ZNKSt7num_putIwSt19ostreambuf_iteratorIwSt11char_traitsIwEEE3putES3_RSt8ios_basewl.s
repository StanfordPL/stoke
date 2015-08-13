  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl, @function

#! file-offset 0xf0c80
#! rip-offset  0xb0c80
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl:  #        0xb0c80  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb0c80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb0c82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb0c85  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb0c88  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb0c8a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb0c8c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb0c90  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                          #  8     0xb0c92  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb0c97  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb0c98  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb0c9e  1      OPC=nop             
  nop                                                                                  #  12    0xb0c9f  1      OPC=nop             
  nop                                                                                  #  13    0xb0ca0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb0ca1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb0ca4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb0ca6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb0ca9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb0cac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb0cae  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb0cb5  1      OPC=nop             
  nop                                                                                  #  21    0xb0cb6  1      OPC=nop             
  nop                                                                                  #  22    0xb0cb7  1      OPC=nop             
  nop                                                                                  #  23    0xb0cb8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb0cb9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb0cbc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb0cbf  1      OPC=nop             
  nop                                                                                  #  27    0xb0cc0  1      OPC=nop             
  nop                                                                                  #  28    0xb0cc1  1      OPC=nop             
  nop                                                                                  #  29    0xb0cc2  1      OPC=nop             
  nop                                                                                  #  30    0xb0cc3  1      OPC=nop             
  nop                                                                                  #  31    0xb0cc4  1      OPC=nop             
  nop                                                                                  #  32    0xb0cc5  1      OPC=nop             
  nop                                                                                  #  33    0xb0cc6  1      OPC=nop             
  nop                                                                                  #  34    0xb0cc7  1      OPC=nop             
  nop                                                                                  #  35    0xb0cc8  1      OPC=nop             
  nop                                                                                  #  36    0xb0cc9  1      OPC=nop             
  nop                                                                                  #  37    0xb0cca  1      OPC=nop             
  nop                                                                                  #  38    0xb0ccb  1      OPC=nop             
  nop                                                                                  #  39    0xb0ccc  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl

