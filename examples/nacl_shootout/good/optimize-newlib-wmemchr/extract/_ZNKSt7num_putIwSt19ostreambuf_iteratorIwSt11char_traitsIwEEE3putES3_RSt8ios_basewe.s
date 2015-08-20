  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe, @function

#! file-offset 0xf10c0
#! rip-offset  0xb10c0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe:  #        0xb10c0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb10c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb10c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb10c5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb10c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb10ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb10cc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb10d0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                         #  8     0xb10d2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb10d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb10d8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb10de  1      OPC=nop             
  nop                                                                                  #  12    0xb10df  1      OPC=nop             
  nop                                                                                  #  13    0xb10e0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb10e1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb10e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb10e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb10e9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb10ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb10ee  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb10f5  1      OPC=nop             
  nop                                                                                  #  21    0xb10f6  1      OPC=nop             
  nop                                                                                  #  22    0xb10f7  1      OPC=nop             
  nop                                                                                  #  23    0xb10f8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb10f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb10fc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb10ff  1      OPC=nop             
  nop                                                                                  #  27    0xb1100  1      OPC=nop             
  nop                                                                                  #  28    0xb1101  1      OPC=nop             
  nop                                                                                  #  29    0xb1102  1      OPC=nop             
  nop                                                                                  #  30    0xb1103  1      OPC=nop             
  nop                                                                                  #  31    0xb1104  1      OPC=nop             
  nop                                                                                  #  32    0xb1105  1      OPC=nop             
  nop                                                                                  #  33    0xb1106  1      OPC=nop             
  nop                                                                                  #  34    0xb1107  1      OPC=nop             
  nop                                                                                  #  35    0xb1108  1      OPC=nop             
  nop                                                                                  #  36    0xb1109  1      OPC=nop             
  nop                                                                                  #  37    0xb110a  1      OPC=nop             
  nop                                                                                  #  38    0xb110b  1      OPC=nop             
  nop                                                                                  #  39    0xb110c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe

