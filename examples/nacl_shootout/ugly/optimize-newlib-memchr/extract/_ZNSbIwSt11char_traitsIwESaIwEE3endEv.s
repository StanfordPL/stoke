  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x11aa60
#! rip-offset  0xdaa60
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE3endEv:                   #        0xdaa60  0      OPC=<label>         
  pushq %rbx                                              #  1     0xdaa60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xdaa61  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xdaa63  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xdaa65  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xdaa69  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xdaa6c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx                             #  7     0xdaa6e  5      OPC=movl_r32_m32    
  testl %ecx, %ecx                                        #  8     0xdaa73  2      OPC=testl_r32_r32   
  js .L_daaa0                                             #  9     0xdaa75  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xdaa77  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xdaa79  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xdaa7b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xdaa80  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xdaa82  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  15    0xdaa86  3      OPC=leal_r32_m16    
  nop                                                     #  16    0xdaa89  1      OPC=nop             
  nop                                                     #  17    0xdaa8a  1      OPC=nop             
  nop                                                     #  18    0xdaa8b  1      OPC=nop             
  nop                                                     #  19    0xdaa8c  1      OPC=nop             
  nop                                                     #  20    0xdaa8d  1      OPC=nop             
  nop                                                     #  21    0xdaa8e  1      OPC=nop             
  nop                                                     #  22    0xdaa8f  1      OPC=nop             
  nop                                                     #  23    0xdaa90  1      OPC=nop             
  nop                                                     #  24    0xdaa91  1      OPC=nop             
  nop                                                     #  25    0xdaa92  1      OPC=nop             
  nop                                                     #  26    0xdaa93  1      OPC=nop             
  nop                                                     #  27    0xdaa94  1      OPC=nop             
  nop                                                     #  28    0xdaa95  1      OPC=nop             
  nop                                                     #  29    0xdaa96  1      OPC=nop             
  nop                                                     #  30    0xdaa97  1      OPC=nop             
  nop                                                     #  31    0xdaa98  1      OPC=nop             
  nop                                                     #  32    0xdaa99  1      OPC=nop             
  nop                                                     #  33    0xdaa9a  1      OPC=nop             
  nop                                                     #  34    0xdaa9b  1      OPC=nop             
  nop                                                     #  35    0xdaa9c  1      OPC=nop             
  nop                                                     #  36    0xdaa9d  1      OPC=nop             
  nop                                                     #  37    0xdaa9e  1      OPC=nop             
  nop                                                     #  38    0xdaa9f  1      OPC=nop             
.L_daaa0:                                                 #        0xdaaa0  0      OPC=<label>         
  popq %rbx                                               #  39    0xdaaa0  1      OPC=popq_r64_1      
  popq %r11                                               #  40    0xdaaa1  2      OPC=popq_r64_1      
  movl %edx, %edx                                         #  41    0xdaaa3  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  42    0xdaaa5  4      OPC=movl_r32_m32    
  leal (%rax,%rdx,4), %eax                                #  43    0xdaaa9  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                 #  44    0xdaaac  7      OPC=andl_r32_imm32  
  nop                                                     #  45    0xdaab3  1      OPC=nop             
  nop                                                     #  46    0xdaab4  1      OPC=nop             
  nop                                                     #  47    0xdaab5  1      OPC=nop             
  nop                                                     #  48    0xdaab6  1      OPC=nop             
  addq %r15, %r11                                         #  49    0xdaab7  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  50    0xdaaba  3      OPC=jmpq_r64        
  nop                                                     #  51    0xdaabd  1      OPC=nop             
  nop                                                     #  52    0xdaabe  1      OPC=nop             
  nop                                                     #  53    0xdaabf  1      OPC=nop             
  nop                                                     #  54    0xdaac0  1      OPC=nop             
  nop                                                     #  55    0xdaac1  1      OPC=nop             
  nop                                                     #  56    0xdaac2  1      OPC=nop             
  nop                                                     #  57    0xdaac3  1      OPC=nop             
  nop                                                     #  58    0xdaac4  1      OPC=nop             
  nop                                                     #  59    0xdaac5  1      OPC=nop             
  nop                                                     #  60    0xdaac6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNSbIwSt11char_traitsIwESaIwEE3endEv

