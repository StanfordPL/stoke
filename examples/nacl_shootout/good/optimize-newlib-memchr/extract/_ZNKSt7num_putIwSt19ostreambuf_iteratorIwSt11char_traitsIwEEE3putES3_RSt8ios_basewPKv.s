  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, @function

#! file-offset 0xf1820
#! rip-offset  0xb1820
#! capacity    64 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv:  #        0xb1820  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0xb1820  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0xb1822  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0xb1825  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0xb1828  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0xb182a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0xb182c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                        #  7     0xb1830  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  8     0xb1832  5      OPC=movl_r32_m32    
  nop                                                                                    #  9     0xb1837  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  10    0xb1838  6      OPC=andl_r32_imm32  
  nop                                                                                    #  11    0xb183e  1      OPC=nop             
  nop                                                                                    #  12    0xb183f  1      OPC=nop             
  nop                                                                                    #  13    0xb1840  1      OPC=nop             
  addq %r15, %rax                                                                        #  14    0xb1841  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  15    0xb1844  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  16    0xb1846  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  17    0xb1849  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  18    0xb184c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  19    0xb184e  7      OPC=andl_r32_imm32  
  nop                                                                                    #  20    0xb1855  1      OPC=nop             
  nop                                                                                    #  21    0xb1856  1      OPC=nop             
  nop                                                                                    #  22    0xb1857  1      OPC=nop             
  nop                                                                                    #  23    0xb1858  1      OPC=nop             
  addq %r15, %r11                                                                        #  24    0xb1859  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  25    0xb185c  3      OPC=jmpq_r64        
  nop                                                                                    #  26    0xb185f  1      OPC=nop             
  nop                                                                                    #  27    0xb1860  1      OPC=nop             
  nop                                                                                    #  28    0xb1861  1      OPC=nop             
  nop                                                                                    #  29    0xb1862  1      OPC=nop             
  nop                                                                                    #  30    0xb1863  1      OPC=nop             
  nop                                                                                    #  31    0xb1864  1      OPC=nop             
  nop                                                                                    #  32    0xb1865  1      OPC=nop             
  nop                                                                                    #  33    0xb1866  1      OPC=nop             
  nop                                                                                    #  34    0xb1867  1      OPC=nop             
  nop                                                                                    #  35    0xb1868  1      OPC=nop             
  nop                                                                                    #  36    0xb1869  1      OPC=nop             
  nop                                                                                    #  37    0xb186a  1      OPC=nop             
  nop                                                                                    #  38    0xb186b  1      OPC=nop             
  nop                                                                                    #  39    0xb186c  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv

