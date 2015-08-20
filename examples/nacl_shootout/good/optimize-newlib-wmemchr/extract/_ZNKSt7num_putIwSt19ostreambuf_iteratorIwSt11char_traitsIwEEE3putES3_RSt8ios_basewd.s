  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd, @function

#! file-offset 0xf1080
#! rip-offset  0xb1080
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd:  #        0xb1080  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1080  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1082  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1085  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1088  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb108a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb108c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb1090  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                         #  8     0xb1092  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb1097  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb1098  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb109e  1      OPC=nop             
  nop                                                                                  #  12    0xb109f  1      OPC=nop             
  nop                                                                                  #  13    0xb10a0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb10a1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb10a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb10a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb10a9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb10ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb10ae  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb10b5  1      OPC=nop             
  nop                                                                                  #  21    0xb10b6  1      OPC=nop             
  nop                                                                                  #  22    0xb10b7  1      OPC=nop             
  nop                                                                                  #  23    0xb10b8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb10b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb10bc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb10bf  1      OPC=nop             
  nop                                                                                  #  27    0xb10c0  1      OPC=nop             
  nop                                                                                  #  28    0xb10c1  1      OPC=nop             
  nop                                                                                  #  29    0xb10c2  1      OPC=nop             
  nop                                                                                  #  30    0xb10c3  1      OPC=nop             
  nop                                                                                  #  31    0xb10c4  1      OPC=nop             
  nop                                                                                  #  32    0xb10c5  1      OPC=nop             
  nop                                                                                  #  33    0xb10c6  1      OPC=nop             
  nop                                                                                  #  34    0xb10c7  1      OPC=nop             
  nop                                                                                  #  35    0xb10c8  1      OPC=nop             
  nop                                                                                  #  36    0xb10c9  1      OPC=nop             
  nop                                                                                  #  37    0xb10ca  1      OPC=nop             
  nop                                                                                  #  38    0xb10cb  1      OPC=nop             
  nop                                                                                  #  39    0xb10cc  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd

