  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E, @function

#! file-offset 0xa7360
#! rip-offset  0x67360
#! capacity    64 bytes

# Text                                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E:  #        0x67360  0      OPC=<label>         
  pushq %rbx                                                             #  1     0x67360  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                        #  2     0x67361  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                        #  3     0x67363  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                        #  4     0x67365  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                               #  5     0x67367  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                        #  6     0x6736b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                        #  7     0x6736e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                               #  8     0x67370  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                        #  9     0x67374  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                                         #  10    0x67376  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                                                 #  11    0x67378  6      OPC=andl_r32_imm32  
  nop                                                                    #  12    0x6737e  1      OPC=nop             
  nop                                                                    #  13    0x6737f  1      OPC=nop             
  nop                                                                    #  14    0x67380  1      OPC=nop             
  addq %r15, %rsi                                                        #  15    0x67381  3      OPC=addq_r64_r64    
  callq %rsi                                                             #  16    0x67384  2      OPC=callq_r64       
  movl %ebx, %eax                                                        #  17    0x67386  2      OPC=movl_r32_r32    
  popq %rbx                                                              #  18    0x67388  1      OPC=popq_r64_1      
  popq %r11                                                              #  19    0x67389  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                #  20    0x6738b  7      OPC=andl_r32_imm32  
  nop                                                                    #  21    0x67392  1      OPC=nop             
  nop                                                                    #  22    0x67393  1      OPC=nop             
  nop                                                                    #  23    0x67394  1      OPC=nop             
  nop                                                                    #  24    0x67395  1      OPC=nop             
  addq %r15, %r11                                                        #  25    0x67396  3      OPC=addq_r64_r64    
  jmpq %r11                                                              #  26    0x67399  3      OPC=jmpq_r64        
  nop                                                                    #  27    0x6739c  1      OPC=nop             
  nop                                                                    #  28    0x6739d  1      OPC=nop             
  nop                                                                    #  29    0x6739e  1      OPC=nop             
  nop                                                                    #  30    0x6739f  1      OPC=nop             
  nop                                                                    #  31    0x673a0  1      OPC=nop             
  nop                                                                    #  32    0x673a1  1      OPC=nop             
  nop                                                                    #  33    0x673a2  1      OPC=nop             
  nop                                                                    #  34    0x673a3  1      OPC=nop             
  nop                                                                    #  35    0x673a4  1      OPC=nop             
  nop                                                                    #  36    0x673a5  1      OPC=nop             
  nop                                                                    #  37    0x673a6  1      OPC=nop             
  nop                                                                    #  38    0x673a7  1      OPC=nop             
  nop                                                                    #  39    0x673a8  1      OPC=nop             
  nop                                                                    #  40    0x673a9  1      OPC=nop             
  nop                                                                    #  41    0x673aa  1      OPC=nop             
  nop                                                                    #  42    0x673ab  1      OPC=nop             
  nop                                                                    #  43    0x673ac  1      OPC=nop             
                                                                                                                      
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsEPFRSt9basic_iosIwS1_ES5_E

