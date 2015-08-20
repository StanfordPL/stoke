  .text
  .globl _ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEC2Ej
  .type _ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEC2Ej, @function

#! file-offset 0xf1c00
#! rip-offset  0xb1c00
#! capacity    64 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEC2Ej:  #        0xb1c00  0      OPC=<label>         
  popq %r11                                                          #  1     0xb1c00  2      OPC=popq_r64_1      
  xorl %eax, %eax                                                    #  2     0xb1c02  2      OPC=xorl_r32_r32    
  testl %esi, %esi                                                   #  3     0xb1c04  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                    #  4     0xb1c06  2      OPC=movl_r32_r32    
  setne %al                                                          #  5     0xb1c08  3      OPC=setne_r8        
  movl %edi, %edi                                                    #  6     0xb1c0b  2      OPC=movl_r32_r32    
  movl $0x1003bf38, (%r15,%rdi,1)                                    #  7     0xb1c0d  8      OPC=movl_m32_imm32  
  movl %edi, %edi                                                    #  8     0xb1c15  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                        #  9     0xb1c17  5      OPC=movl_m32_r32    
  nop                                                                #  10    0xb1c1c  1      OPC=nop             
  nop                                                                #  11    0xb1c1d  1      OPC=nop             
  nop                                                                #  12    0xb1c1e  1      OPC=nop             
  nop                                                                #  13    0xb1c1f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                            #  14    0xb1c20  7      OPC=andl_r32_imm32  
  nop                                                                #  15    0xb1c27  1      OPC=nop             
  nop                                                                #  16    0xb1c28  1      OPC=nop             
  nop                                                                #  17    0xb1c29  1      OPC=nop             
  nop                                                                #  18    0xb1c2a  1      OPC=nop             
  addq %r15, %r11                                                    #  19    0xb1c2b  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  20    0xb1c2e  3      OPC=jmpq_r64        
  nop                                                                #  21    0xb1c31  1      OPC=nop             
  nop                                                                #  22    0xb1c32  1      OPC=nop             
  nop                                                                #  23    0xb1c33  1      OPC=nop             
  nop                                                                #  24    0xb1c34  1      OPC=nop             
  nop                                                                #  25    0xb1c35  1      OPC=nop             
  nop                                                                #  26    0xb1c36  1      OPC=nop             
  nop                                                                #  27    0xb1c37  1      OPC=nop             
  nop                                                                #  28    0xb1c38  1      OPC=nop             
  nop                                                                #  29    0xb1c39  1      OPC=nop             
  nop                                                                #  30    0xb1c3a  1      OPC=nop             
  nop                                                                #  31    0xb1c3b  1      OPC=nop             
  nop                                                                #  32    0xb1c3c  1      OPC=nop             
  nop                                                                #  33    0xb1c3d  1      OPC=nop             
  nop                                                                #  34    0xb1c3e  1      OPC=nop             
  nop                                                                #  35    0xb1c3f  1      OPC=nop             
  nop                                                                #  36    0xb1c40  1      OPC=nop             
  nop                                                                #  37    0xb1c41  1      OPC=nop             
  nop                                                                #  38    0xb1c42  1      OPC=nop             
  nop                                                                #  39    0xb1c43  1      OPC=nop             
  nop                                                                #  40    0xb1c44  1      OPC=nop             
  nop                                                                #  41    0xb1c45  1      OPC=nop             
  nop                                                                #  42    0xb1c46  1      OPC=nop             
                                                                                                                  
.size _ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEC2Ej, .-_ZNSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEEC2Ej

