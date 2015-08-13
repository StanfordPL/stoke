  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, @function

#! file-offset 0xdce00
#! rip-offset  0x9ce00
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E:  #        0x9ce00  0      OPC=<label>         
  pushq %rbx                                                             #  1     0x9ce00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                        #  2     0x9ce01  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                        #  3     0x9ce03  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                        #  4     0x9ce05  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                               #  5     0x9ce07  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                        #  6     0x9ce0b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                        #  7     0x9ce0e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                               #  8     0x9ce10  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                        #  9     0x9ce14  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                         #  10    0x9ce16  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                                 #  11    0x9ce18  6      OPC=andl_r32_imm32  
  nop                                                                    #  12    0x9ce1e  1      OPC=nop             
  nop                                                                    #  13    0x9ce1f  1      OPC=nop             
  nop                                                                    #  14    0x9ce20  1      OPC=nop             
  addq %r15, %rsi                                                        #  15    0x9ce21  3      OPC=addq_r64_r64    
  callq %rsi                                                             #  16    0x9ce24  2      OPC=callq_r64       
  movl %ebx, %eax                                                        #  17    0x9ce26  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x9ce28  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x9ce29  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x9ce2b  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x9ce32  1      OPC=nop             
  nop                                                                    #  22    0x9ce33  1      OPC=nop             
  nop                                                                    #  23    0x9ce34  1      OPC=nop             
  nop                                                                    #  24    0x9ce35  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x9ce36  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x9ce39  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x9ce3c  1      OPC=nop             
  nop                                                                    #  28    0x9ce3d  1      OPC=nop             
  nop                                                                    #  29    0x9ce3e  1      OPC=nop             
  nop                                                                    #  30    0x9ce3f  1      OPC=nop             
  nop                                                                    #  31    0x9ce40  1      OPC=nop             
  nop                                                                    #  32    0x9ce41  1      OPC=nop             
  nop                                                                    #  33    0x9ce42  1      OPC=nop             
  nop                                                                    #  34    0x9ce43  1      OPC=nop             
  nop                                                                    #  35    0x9ce44  1      OPC=nop             
  nop                                                                    #  36    0x9ce45  1      OPC=nop             
  nop                                                                    #  37    0x9ce46  1      OPC=nop             
  nop                                                                    #  38    0x9ce47  1      OPC=nop             
  nop                                                                    #  39    0x9ce48  1      OPC=nop             
  nop                                                                    #  40    0x9ce49  1      OPC=nop             
  nop                                                                    #  41    0x9ce4a  1      OPC=nop             
  nop                                                                    #  42    0x9ce4b  1      OPC=nop             
  nop                                                                    #  43    0x9ce4c  1      OPC=nop             
                                                                                                                      
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEElsEPFRSt9basic_iosIwS1_ES5_E

