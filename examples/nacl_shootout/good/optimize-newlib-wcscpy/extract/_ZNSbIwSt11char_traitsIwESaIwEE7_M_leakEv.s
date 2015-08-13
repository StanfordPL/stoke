  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, @function

#! file-offset 0x119f60
#! rip-offset  0xd9f60
#! capacity    64 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv:              #        0xd9f60  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xd9f60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xd9f62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  3     0xd9f64  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                        #  4     0xd9f68  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                        #  5     0xd9f6b  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                            #  6     0xd9f6d  5      OPC=movl_r32_m32    
  testl %eax, %eax                                       #  7     0xd9f72  2      OPC=testl_r32_r32   
  js .L_d9f80                                            #  8     0xd9f74  2      OPC=js_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  9     0xd9f76  5      OPC=jmpq_label_1    
  nop                                                    #  10    0xd9f7b  1      OPC=nop             
  nop                                                    #  11    0xd9f7c  1      OPC=nop             
  nop                                                    #  12    0xd9f7d  1      OPC=nop             
  nop                                                    #  13    0xd9f7e  1      OPC=nop             
  nop                                                    #  14    0xd9f7f  1      OPC=nop             
.L_d9f80:                                                #        0xd9f80  0      OPC=<label>         
  popq %r11                                              #  15    0xd9f80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  16    0xd9f82  7      OPC=andl_r32_imm32  
  nop                                                    #  17    0xd9f89  1      OPC=nop             
  nop                                                    #  18    0xd9f8a  1      OPC=nop             
  nop                                                    #  19    0xd9f8b  1      OPC=nop             
  nop                                                    #  20    0xd9f8c  1      OPC=nop             
  addq %r15, %r11                                        #  21    0xd9f8d  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  22    0xd9f90  3      OPC=jmpq_r64        
  nop                                                    #  23    0xd9f93  1      OPC=nop             
  nop                                                    #  24    0xd9f94  1      OPC=nop             
  nop                                                    #  25    0xd9f95  1      OPC=nop             
  nop                                                    #  26    0xd9f96  1      OPC=nop             
  nop                                                    #  27    0xd9f97  1      OPC=nop             
  nop                                                    #  28    0xd9f98  1      OPC=nop             
  nop                                                    #  29    0xd9f99  1      OPC=nop             
  nop                                                    #  30    0xd9f9a  1      OPC=nop             
  nop                                                    #  31    0xd9f9b  1      OPC=nop             
  nop                                                    #  32    0xd9f9c  1      OPC=nop             
  nop                                                    #  33    0xd9f9d  1      OPC=nop             
  nop                                                    #  34    0xd9f9e  1      OPC=nop             
  nop                                                    #  35    0xd9f9f  1      OPC=nop             
  nop                                                    #  36    0xd9fa0  1      OPC=nop             
  nop                                                    #  37    0xd9fa1  1      OPC=nop             
  nop                                                    #  38    0xd9fa2  1      OPC=nop             
  nop                                                    #  39    0xd9fa3  1      OPC=nop             
  nop                                                    #  40    0xd9fa4  1      OPC=nop             
  nop                                                    #  41    0xd9fa5  1      OPC=nop             
  nop                                                    #  42    0xd9fa6  1      OPC=nop             
                                                                                                      
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv

