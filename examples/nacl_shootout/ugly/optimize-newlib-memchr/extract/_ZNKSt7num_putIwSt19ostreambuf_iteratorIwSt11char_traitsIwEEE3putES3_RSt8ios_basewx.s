  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx, @function

#! file-offset 0xf1720
#! rip-offset  0xb1720
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx:  #        0xb1720  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1725  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1728  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb172a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb172c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb1730  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                         #  8     0xb1732  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb1737  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb1738  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb173e  1      OPC=nop             
  nop                                                                                  #  12    0xb173f  1      OPC=nop             
  nop                                                                                  #  13    0xb1740  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1741  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1744  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1746  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1749  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb174c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb174e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1755  1      OPC=nop             
  nop                                                                                  #  21    0xb1756  1      OPC=nop             
  nop                                                                                  #  22    0xb1757  1      OPC=nop             
  nop                                                                                  #  23    0xb1758  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1759  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb175c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb175f  1      OPC=nop             
  nop                                                                                  #  27    0xb1760  1      OPC=nop             
  nop                                                                                  #  28    0xb1761  1      OPC=nop             
  nop                                                                                  #  29    0xb1762  1      OPC=nop             
  nop                                                                                  #  30    0xb1763  1      OPC=nop             
  nop                                                                                  #  31    0xb1764  1      OPC=nop             
  nop                                                                                  #  32    0xb1765  1      OPC=nop             
  nop                                                                                  #  33    0xb1766  1      OPC=nop             
  nop                                                                                  #  34    0xb1767  1      OPC=nop             
  nop                                                                                  #  35    0xb1768  1      OPC=nop             
  nop                                                                                  #  36    0xb1769  1      OPC=nop             
  nop                                                                                  #  37    0xb176a  1      OPC=nop             
  nop                                                                                  #  38    0xb176b  1      OPC=nop             
  nop                                                                                  #  39    0xb176c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewx

