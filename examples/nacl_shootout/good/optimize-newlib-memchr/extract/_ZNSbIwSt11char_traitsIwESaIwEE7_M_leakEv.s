  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, @function

#! file-offset 0x11a980
#! rip-offset  0xda980
#! capacity    64 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv:              #        0xda980  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xda980  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xda982  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  3     0xda984  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                        #  4     0xda988  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                        #  5     0xda98b  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                            #  6     0xda98d  5      OPC=movl_r32_m32    
  testl %eax, %eax                                       #  7     0xda992  2      OPC=testl_r32_r32   
  js .L_da9a0                                            #  8     0xda994  2      OPC=js_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  9     0xda996  5      OPC=jmpq_label_1    
  nop                                                    #  10    0xda99b  1      OPC=nop             
  nop                                                    #  11    0xda99c  1      OPC=nop             
  nop                                                    #  12    0xda99d  1      OPC=nop             
  nop                                                    #  13    0xda99e  1      OPC=nop             
  nop                                                    #  14    0xda99f  1      OPC=nop             
.L_da9a0:                                                #        0xda9a0  0      OPC=<label>         
  popq %r11                                              #  15    0xda9a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  16    0xda9a2  7      OPC=andl_r32_imm32  
  nop                                                    #  17    0xda9a9  1      OPC=nop             
  nop                                                    #  18    0xda9aa  1      OPC=nop             
  nop                                                    #  19    0xda9ab  1      OPC=nop             
  nop                                                    #  20    0xda9ac  1      OPC=nop             
  addq %r15, %r11                                        #  21    0xda9ad  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  22    0xda9b0  3      OPC=jmpq_r64        
  nop                                                    #  23    0xda9b3  1      OPC=nop             
  nop                                                    #  24    0xda9b4  1      OPC=nop             
  nop                                                    #  25    0xda9b5  1      OPC=nop             
  nop                                                    #  26    0xda9b6  1      OPC=nop             
  nop                                                    #  27    0xda9b7  1      OPC=nop             
  nop                                                    #  28    0xda9b8  1      OPC=nop             
  nop                                                    #  29    0xda9b9  1      OPC=nop             
  nop                                                    #  30    0xda9ba  1      OPC=nop             
  nop                                                    #  31    0xda9bb  1      OPC=nop             
  nop                                                    #  32    0xda9bc  1      OPC=nop             
  nop                                                    #  33    0xda9bd  1      OPC=nop             
  nop                                                    #  34    0xda9be  1      OPC=nop             
  nop                                                    #  35    0xda9bf  1      OPC=nop             
  nop                                                    #  36    0xda9c0  1      OPC=nop             
  nop                                                    #  37    0xda9c1  1      OPC=nop             
  nop                                                    #  38    0xda9c2  1      OPC=nop             
  nop                                                    #  39    0xda9c3  1      OPC=nop             
  nop                                                    #  40    0xda9c4  1      OPC=nop             
  nop                                                    #  41    0xda9c5  1      OPC=nop             
  nop                                                    #  42    0xda9c6  1      OPC=nop             
                                                                                                      
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv

