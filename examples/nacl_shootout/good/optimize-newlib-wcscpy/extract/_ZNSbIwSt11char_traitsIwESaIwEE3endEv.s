  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x11a040
#! rip-offset  0xda040
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE3endEv:                   #        0xda040  0      OPC=<label>         
  pushq %rbx                                              #  1     0xda040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xda041  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xda043  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xda045  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xda049  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xda04c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx                             #  7     0xda04e  5      OPC=movl_r32_m32    
  testl %ecx, %ecx                                        #  8     0xda053  2      OPC=testl_r32_r32   
  js .L_da080                                             #  9     0xda055  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xda057  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xda059  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xda05b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xda060  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xda062  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  15    0xda066  3      OPC=leal_r32_m16    
  nop                                                     #  16    0xda069  1      OPC=nop             
  nop                                                     #  17    0xda06a  1      OPC=nop             
  nop                                                     #  18    0xda06b  1      OPC=nop             
  nop                                                     #  19    0xda06c  1      OPC=nop             
  nop                                                     #  20    0xda06d  1      OPC=nop             
  nop                                                     #  21    0xda06e  1      OPC=nop             
  nop                                                     #  22    0xda06f  1      OPC=nop             
  nop                                                     #  23    0xda070  1      OPC=nop             
  nop                                                     #  24    0xda071  1      OPC=nop             
  nop                                                     #  25    0xda072  1      OPC=nop             
  nop                                                     #  26    0xda073  1      OPC=nop             
  nop                                                     #  27    0xda074  1      OPC=nop             
  nop                                                     #  28    0xda075  1      OPC=nop             
  nop                                                     #  29    0xda076  1      OPC=nop             
  nop                                                     #  30    0xda077  1      OPC=nop             
  nop                                                     #  31    0xda078  1      OPC=nop             
  nop                                                     #  32    0xda079  1      OPC=nop             
  nop                                                     #  33    0xda07a  1      OPC=nop             
  nop                                                     #  34    0xda07b  1      OPC=nop             
  nop                                                     #  35    0xda07c  1      OPC=nop             
  nop                                                     #  36    0xda07d  1      OPC=nop             
  nop                                                     #  37    0xda07e  1      OPC=nop             
  nop                                                     #  38    0xda07f  1      OPC=nop             
.L_da080:                                                 #        0xda080  0      OPC=<label>         
  popq %rbx                                               #  39    0xda080  1      OPC=popq_r64_1      
  popq %r11                                               #  40    0xda081  2      OPC=popq_r64_1      
  movl %edx, %edx                                         #  41    0xda083  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  42    0xda085  4      OPC=movl_r32_m32    
  leal (%rax,%rdx,4), %eax                                #  43    0xda089  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                 #  44    0xda08c  7      OPC=andl_r32_imm32  
  nop                                                     #  45    0xda093  1      OPC=nop             
  nop                                                     #  46    0xda094  1      OPC=nop             
  nop                                                     #  47    0xda095  1      OPC=nop             
  nop                                                     #  48    0xda096  1      OPC=nop             
  addq %r15, %r11                                         #  49    0xda097  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  50    0xda09a  3      OPC=jmpq_r64        
  nop                                                     #  51    0xda09d  1      OPC=nop             
  nop                                                     #  52    0xda09e  1      OPC=nop             
  nop                                                     #  53    0xda09f  1      OPC=nop             
  nop                                                     #  54    0xda0a0  1      OPC=nop             
  nop                                                     #  55    0xda0a1  1      OPC=nop             
  nop                                                     #  56    0xda0a2  1      OPC=nop             
  nop                                                     #  57    0xda0a3  1      OPC=nop             
  nop                                                     #  58    0xda0a4  1      OPC=nop             
  nop                                                     #  59    0xda0a5  1      OPC=nop             
  nop                                                     #  60    0xda0a6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNSbIwSt11char_traitsIwESaIwEE3endEv

