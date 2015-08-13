  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, @function

#! file-offset 0x11aa60
#! rip-offset  0xdaa60
#! capacity    96 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE:  #        0xdaa60  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xdaa60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                            #  2     0xdaa61  2      OPC=movl_r32_r32    
  movl %esi, %ecx                                            #  3     0xdaa63  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                            #  4     0xdaa65  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                   #  5     0xdaa67  4      OPC=movl_r32_m32    
  shrq $0x20, %rsi                                           #  6     0xdaa6b  4      OPC=shrq_r64_imm8   
  movl %ebx, %edi                                            #  7     0xdaa6f  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %r8d                                       #  8     0xdaa71  8      OPC=leal_r32_m16    
  xorl %esi, %esi                                            #  9     0xdaa79  2      OPC=xorl_r32_r32    
  sarl $0x2, %r8d                                            #  10    0xdaa7b  4      OPC=sarl_r32_imm8   
  nop                                                        #  11    0xdaa7f  1      OPC=nop             
  subl $0xc, %eax                                            #  12    0xdaa80  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                            #  13    0xdaa83  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                   #  14    0xdaa85  4      OPC=movl_r32_m32    
  shll $0x2, %edx                                            #  15    0xdaa89  3      OPC=shll_r32_imm8   
  sarl $0x2, %edx                                            #  16    0xdaa8c  3      OPC=sarl_r32_imm8   
  nop                                                        #  17    0xdaa8f  1      OPC=nop             
  nop                                                        #  18    0xdaa90  1      OPC=nop             
  nop                                                        #  19    0xdaa91  1      OPC=nop             
  nop                                                        #  20    0xdaa92  1      OPC=nop             
  nop                                                        #  21    0xdaa93  1      OPC=nop             
  nop                                                        #  22    0xdaa94  1      OPC=nop             
  nop                                                        #  23    0xdaa95  1      OPC=nop             
  nop                                                        #  24    0xdaa96  1      OPC=nop             
  nop                                                        #  25    0xdaa97  1      OPC=nop             
  nop                                                        #  26    0xdaa98  1      OPC=nop             
  nop                                                        #  27    0xdaa99  1      OPC=nop             
  nop                                                        #  28    0xdaa9a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj      #  29    0xdaa9b  5      OPC=callq_label     
  movl %ebx, %eax                                            #  30    0xdaaa0  2      OPC=movl_r32_r32    
  popq %rbx                                                  #  31    0xdaaa2  1      OPC=popq_r64_1      
  popq %r11                                                  #  32    0xdaaa3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  33    0xdaaa5  7      OPC=andl_r32_imm32  
  nop                                                        #  34    0xdaaac  1      OPC=nop             
  nop                                                        #  35    0xdaaad  1      OPC=nop             
  nop                                                        #  36    0xdaaae  1      OPC=nop             
  nop                                                        #  37    0xdaaaf  1      OPC=nop             
  addq %r15, %r11                                            #  38    0xdaab0  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  39    0xdaab3  3      OPC=jmpq_r64        
  nop                                                        #  40    0xdaab6  1      OPC=nop             
  nop                                                        #  41    0xdaab7  1      OPC=nop             
  nop                                                        #  42    0xdaab8  1      OPC=nop             
  nop                                                        #  43    0xdaab9  1      OPC=nop             
  nop                                                        #  44    0xdaaba  1      OPC=nop             
  nop                                                        #  45    0xdaabb  1      OPC=nop             
  nop                                                        #  46    0xdaabc  1      OPC=nop             
  nop                                                        #  47    0xdaabd  1      OPC=nop             
  nop                                                        #  48    0xdaabe  1      OPC=nop             
  nop                                                        #  49    0xdaabf  1      OPC=nop             
  nop                                                        #  50    0xdaac0  1      OPC=nop             
  nop                                                        #  51    0xdaac1  1      OPC=nop             
  nop                                                        #  52    0xdaac2  1      OPC=nop             
  nop                                                        #  53    0xdaac3  1      OPC=nop             
  nop                                                        #  54    0xdaac4  1      OPC=nop             
  nop                                                        #  55    0xdaac5  1      OPC=nop             
  nop                                                        #  56    0xdaac6  1      OPC=nop             
                                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEaSESt16initializer_listIwE

