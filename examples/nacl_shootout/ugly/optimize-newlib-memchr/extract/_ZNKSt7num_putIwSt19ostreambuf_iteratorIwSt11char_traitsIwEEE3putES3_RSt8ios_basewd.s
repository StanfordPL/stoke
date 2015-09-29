  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd, @function

#! file-offset 0xf17a0
#! rip-offset  0xb17a0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd:  #        0xb17a0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb17a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb17a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb17a5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb17a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb17aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb17ac  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb17b0  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                                                         #  8     0xb17b2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb17b7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb17b8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb17be  1      OPC=nop             
  nop                                                                                  #  12    0xb17bf  1      OPC=nop             
  nop                                                                                  #  13    0xb17c0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb17c1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb17c4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb17c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb17c9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb17cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb17ce  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb17d5  1      OPC=nop             
  nop                                                                                  #  21    0xb17d6  1      OPC=nop             
  nop                                                                                  #  22    0xb17d7  1      OPC=nop             
  nop                                                                                  #  23    0xb17d8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb17d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb17dc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb17df  1      OPC=nop             
  nop                                                                                  #  27    0xb17e0  1      OPC=nop             
  nop                                                                                  #  28    0xb17e1  1      OPC=nop             
  nop                                                                                  #  29    0xb17e2  1      OPC=nop             
  nop                                                                                  #  30    0xb17e3  1      OPC=nop             
  nop                                                                                  #  31    0xb17e4  1      OPC=nop             
  nop                                                                                  #  32    0xb17e5  1      OPC=nop             
  nop                                                                                  #  33    0xb17e6  1      OPC=nop             
  nop                                                                                  #  34    0xb17e7  1      OPC=nop             
  nop                                                                                  #  35    0xb17e8  1      OPC=nop             
  nop                                                                                  #  36    0xb17e9  1      OPC=nop             
  nop                                                                                  #  37    0xb17ea  1      OPC=nop             
  nop                                                                                  #  38    0xb17eb  1      OPC=nop             
  nop                                                                                  #  39    0xb17ec  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewd

