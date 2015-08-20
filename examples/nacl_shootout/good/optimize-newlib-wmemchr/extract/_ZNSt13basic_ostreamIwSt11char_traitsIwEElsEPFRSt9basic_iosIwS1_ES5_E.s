  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, @function

#! file-offset 0xdd100
#! rip-offset  0x9d100
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E:  #        0x9d100  0      OPC=<label>         
  pushq %rbx                                                             #  1     0x9d100  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                        #  2     0x9d101  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                        #  3     0x9d103  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                        #  4     0x9d105  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                               #  5     0x9d107  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                        #  6     0x9d10b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                        #  7     0x9d10e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                               #  8     0x9d110  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                        #  9     0x9d114  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                         #  10    0x9d116  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                                 #  11    0x9d118  6      OPC=andl_r32_imm32  
  nop                                                                    #  12    0x9d11e  1      OPC=nop             
  nop                                                                    #  13    0x9d11f  1      OPC=nop             
  nop                                                                    #  14    0x9d120  1      OPC=nop             
  addq %r15, %rsi                                                        #  15    0x9d121  3      OPC=addq_r64_r64    
  callq %rsi                                                             #  16    0x9d124  2      OPC=callq_r64       
  movl %ebx, %eax                                                        #  17    0x9d126  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x9d128  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x9d129  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x9d12b  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x9d132  1      OPC=nop             
  nop                                                                    #  22    0x9d133  1      OPC=nop             
  nop                                                                    #  23    0x9d134  1      OPC=nop             
  nop                                                                    #  24    0x9d135  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x9d136  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x9d139  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x9d13c  1      OPC=nop             
  nop                                                                    #  28    0x9d13d  1      OPC=nop             
  nop                                                                    #  29    0x9d13e  1      OPC=nop             
  nop                                                                    #  30    0x9d13f  1      OPC=nop             
  nop                                                                    #  31    0x9d140  1      OPC=nop             
  nop                                                                    #  32    0x9d141  1      OPC=nop             
  nop                                                                    #  33    0x9d142  1      OPC=nop             
  nop                                                                    #  34    0x9d143  1      OPC=nop             
  nop                                                                    #  35    0x9d144  1      OPC=nop             
  nop                                                                    #  36    0x9d145  1      OPC=nop             
  nop                                                                    #  37    0x9d146  1      OPC=nop             
  nop                                                                    #  38    0x9d147  1      OPC=nop             
  nop                                                                    #  39    0x9d148  1      OPC=nop             
  nop                                                                    #  40    0x9d149  1      OPC=nop             
  nop                                                                    #  41    0x9d14a  1      OPC=nop             
  nop                                                                    #  42    0x9d14b  1      OPC=nop             
  nop                                                                    #  43    0x9d14c  1      OPC=nop             
                                                                                                                      
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E

