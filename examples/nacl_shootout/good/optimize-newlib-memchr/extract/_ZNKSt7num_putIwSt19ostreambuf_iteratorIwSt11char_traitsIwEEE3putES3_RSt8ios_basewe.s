  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe, @function

#! file-offset 0xf17e0
#! rip-offset  0xb17e0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe:  #        0xb17e0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb17e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb17e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb17e5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb17e8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb17ea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb17ec  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb17f0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                         #  8     0xb17f2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb17f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb17f8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb17fe  1      OPC=nop             
  nop                                                                                  #  12    0xb17ff  1      OPC=nop             
  nop                                                                                  #  13    0xb1800  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1801  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1804  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1806  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1809  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb180c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb180e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1815  1      OPC=nop             
  nop                                                                                  #  21    0xb1816  1      OPC=nop             
  nop                                                                                  #  22    0xb1817  1      OPC=nop             
  nop                                                                                  #  23    0xb1818  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1819  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb181c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb181f  1      OPC=nop             
  nop                                                                                  #  27    0xb1820  1      OPC=nop             
  nop                                                                                  #  28    0xb1821  1      OPC=nop             
  nop                                                                                  #  29    0xb1822  1      OPC=nop             
  nop                                                                                  #  30    0xb1823  1      OPC=nop             
  nop                                                                                  #  31    0xb1824  1      OPC=nop             
  nop                                                                                  #  32    0xb1825  1      OPC=nop             
  nop                                                                                  #  33    0xb1826  1      OPC=nop             
  nop                                                                                  #  34    0xb1827  1      OPC=nop             
  nop                                                                                  #  35    0xb1828  1      OPC=nop             
  nop                                                                                  #  36    0xb1829  1      OPC=nop             
  nop                                                                                  #  37    0xb182a  1      OPC=nop             
  nop                                                                                  #  38    0xb182b  1      OPC=nop             
  nop                                                                                  #  39    0xb182c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewe

