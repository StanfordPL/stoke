  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy, @function

#! file-offset 0xf1760
#! rip-offset  0xb1760
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy:  #        0xb1760  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1760  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1762  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1765  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1768  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb176a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb176c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb1770  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                         #  8     0xb1772  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb1777  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb1778  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb177e  1      OPC=nop             
  nop                                                                                  #  12    0xb177f  1      OPC=nop             
  nop                                                                                  #  13    0xb1780  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1781  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1784  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1786  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1789  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb178c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb178e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1795  1      OPC=nop             
  nop                                                                                  #  21    0xb1796  1      OPC=nop             
  nop                                                                                  #  22    0xb1797  1      OPC=nop             
  nop                                                                                  #  23    0xb1798  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1799  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb179c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb179f  1      OPC=nop             
  nop                                                                                  #  27    0xb17a0  1      OPC=nop             
  nop                                                                                  #  28    0xb17a1  1      OPC=nop             
  nop                                                                                  #  29    0xb17a2  1      OPC=nop             
  nop                                                                                  #  30    0xb17a3  1      OPC=nop             
  nop                                                                                  #  31    0xb17a4  1      OPC=nop             
  nop                                                                                  #  32    0xb17a5  1      OPC=nop             
  nop                                                                                  #  33    0xb17a6  1      OPC=nop             
  nop                                                                                  #  34    0xb17a7  1      OPC=nop             
  nop                                                                                  #  35    0xb17a8  1      OPC=nop             
  nop                                                                                  #  36    0xb17a9  1      OPC=nop             
  nop                                                                                  #  37    0xb17aa  1      OPC=nop             
  nop                                                                                  #  38    0xb17ab  1      OPC=nop             
  nop                                                                                  #  39    0xb17ac  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewy

