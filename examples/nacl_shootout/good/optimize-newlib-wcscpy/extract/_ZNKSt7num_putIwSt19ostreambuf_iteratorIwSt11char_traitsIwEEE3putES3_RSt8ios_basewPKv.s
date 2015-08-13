  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, @function

#! file-offset 0xf0e00
#! rip-offset  0xb0e00
#! capacity    64 bytes

# Text                                                                                   #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv:  #        0xb0e00  0      OPC=<label>         
  movl %edi, %edi                                                                        #  1     0xb0e00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                        #  2     0xb0e02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                        #  3     0xb0e05  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                        #  4     0xb0e08  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                        #  5     0xb0e0a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                               #  6     0xb0e0c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                        #  7     0xb0e10  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                           #  8     0xb0e12  5      OPC=movl_r32_m32    
  nop                                                                                    #  9     0xb0e17  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                 #  10    0xb0e18  6      OPC=andl_r32_imm32  
  nop                                                                                    #  11    0xb0e1e  1      OPC=nop             
  nop                                                                                    #  12    0xb0e1f  1      OPC=nop             
  nop                                                                                    #  13    0xb0e20  1      OPC=nop             
  addq %r15, %rax                                                                        #  14    0xb0e21  3      OPC=addq_r64_r64    
  callq %rax                                                                             #  15    0xb0e24  2      OPC=callq_r64       
  addl $0x8, %esp                                                                        #  16    0xb0e26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                        #  17    0xb0e29  3      OPC=addq_r64_r64    
  popq %r11                                                                              #  18    0xb0e2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                #  19    0xb0e2e  7      OPC=andl_r32_imm32  
  nop                                                                                    #  20    0xb0e35  1      OPC=nop             
  nop                                                                                    #  21    0xb0e36  1      OPC=nop             
  nop                                                                                    #  22    0xb0e37  1      OPC=nop             
  nop                                                                                    #  23    0xb0e38  1      OPC=nop             
  addq %r15, %r11                                                                        #  24    0xb0e39  3      OPC=addq_r64_r64    
  jmpq %r11                                                                              #  25    0xb0e3c  3      OPC=jmpq_r64        
  nop                                                                                    #  26    0xb0e3f  1      OPC=nop             
  nop                                                                                    #  27    0xb0e40  1      OPC=nop             
  nop                                                                                    #  28    0xb0e41  1      OPC=nop             
  nop                                                                                    #  29    0xb0e42  1      OPC=nop             
  nop                                                                                    #  30    0xb0e43  1      OPC=nop             
  nop                                                                                    #  31    0xb0e44  1      OPC=nop             
  nop                                                                                    #  32    0xb0e45  1      OPC=nop             
  nop                                                                                    #  33    0xb0e46  1      OPC=nop             
  nop                                                                                    #  34    0xb0e47  1      OPC=nop             
  nop                                                                                    #  35    0xb0e48  1      OPC=nop             
  nop                                                                                    #  36    0xb0e49  1      OPC=nop             
  nop                                                                                    #  37    0xb0e4a  1      OPC=nop             
  nop                                                                                    #  38    0xb0e4b  1      OPC=nop             
  nop                                                                                    #  39    0xb0e4c  1      OPC=nop             
                                                                                                                                      
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPKv

