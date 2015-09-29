  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E, @function

#! file-offset 0xa7a80
#! rip-offset  0x67a80
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E:  #        0x67a80  0      OPC=<label>         
  pushq %rbx                                                             #  1     0x67a80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                        #  2     0x67a81  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                        #  3     0x67a83  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                        #  4     0x67a85  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                               #  5     0x67a87  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                        #  6     0x67a8b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                        #  7     0x67a8e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                               #  8     0x67a90  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                        #  9     0x67a94  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                         #  10    0x67a96  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                                 #  11    0x67a98  6      OPC=andl_r32_imm32  
  nop                                                                    #  12    0x67a9e  1      OPC=nop             
  nop                                                                    #  13    0x67a9f  1      OPC=nop             
  nop                                                                    #  14    0x67aa0  1      OPC=nop             
  addq %r15, %rsi                                                        #  15    0x67aa1  3      OPC=addq_r64_r64    
  callq %rsi                                                             #  16    0x67aa4  2      OPC=callq_r64       
  movl %ebx, %eax                                                        #  17    0x67aa6  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x67aa8  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x67aa9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x67aab  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x67ab2  1      OPC=nop             
  nop                                                                    #  22    0x67ab3  1      OPC=nop             
  nop                                                                    #  23    0x67ab4  1      OPC=nop             
  nop                                                                    #  24    0x67ab5  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x67ab6  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x67ab9  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x67abc  1      OPC=nop             
  nop                                                                    #  28    0x67abd  1      OPC=nop             
  nop                                                                    #  29    0x67abe  1      OPC=nop             
  nop                                                                    #  30    0x67abf  1      OPC=nop             
  nop                                                                    #  31    0x67ac0  1      OPC=nop             
  nop                                                                    #  32    0x67ac1  1      OPC=nop             
  nop                                                                    #  33    0x67ac2  1      OPC=nop             
  nop                                                                    #  34    0x67ac3  1      OPC=nop             
  nop                                                                    #  35    0x67ac4  1      OPC=nop             
  nop                                                                    #  36    0x67ac5  1      OPC=nop             
  nop                                                                    #  37    0x67ac6  1      OPC=nop             
  nop                                                                    #  38    0x67ac7  1      OPC=nop             
  nop                                                                    #  39    0x67ac8  1      OPC=nop             
  nop                                                                    #  40    0x67ac9  1      OPC=nop             
  nop                                                                    #  41    0x67aca  1      OPC=nop             
  nop                                                                    #  42    0x67acb  1      OPC=nop             
  nop                                                                    #  43    0x67acc  1      OPC=nop             
                                                                                                                      
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E

