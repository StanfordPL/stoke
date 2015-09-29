  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5beginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, @function

#! file-offset 0x11aac0
#! rip-offset  0xdaac0
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5beginEv:                 #        0xdaac0  0      OPC=<label>         
  pushq %rbx                                              #  1     0xdaac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xdaac1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xdaac3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xdaac5  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xdaac9  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xdaacc  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi                             #  7     0xdaace  5      OPC=movl_r32_m32    
  testl %esi, %esi                                        #  8     0xdaad3  2      OPC=testl_r32_r32   
  js .L_dab00                                             #  9     0xdaad5  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xdaad7  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xdaad9  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xdaadb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xdaae0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xdaae2  4      OPC=movl_r32_m32    
  nop                                                     #  15    0xdaae6  1      OPC=nop             
  nop                                                     #  16    0xdaae7  1      OPC=nop             
  nop                                                     #  17    0xdaae8  1      OPC=nop             
  nop                                                     #  18    0xdaae9  1      OPC=nop             
  nop                                                     #  19    0xdaaea  1      OPC=nop             
  nop                                                     #  20    0xdaaeb  1      OPC=nop             
  nop                                                     #  21    0xdaaec  1      OPC=nop             
  nop                                                     #  22    0xdaaed  1      OPC=nop             
  nop                                                     #  23    0xdaaee  1      OPC=nop             
  nop                                                     #  24    0xdaaef  1      OPC=nop             
  nop                                                     #  25    0xdaaf0  1      OPC=nop             
  nop                                                     #  26    0xdaaf1  1      OPC=nop             
  nop                                                     #  27    0xdaaf2  1      OPC=nop             
  nop                                                     #  28    0xdaaf3  1      OPC=nop             
  nop                                                     #  29    0xdaaf4  1      OPC=nop             
  nop                                                     #  30    0xdaaf5  1      OPC=nop             
  nop                                                     #  31    0xdaaf6  1      OPC=nop             
  nop                                                     #  32    0xdaaf7  1      OPC=nop             
  nop                                                     #  33    0xdaaf8  1      OPC=nop             
  nop                                                     #  34    0xdaaf9  1      OPC=nop             
  nop                                                     #  35    0xdaafa  1      OPC=nop             
  nop                                                     #  36    0xdaafb  1      OPC=nop             
  nop                                                     #  37    0xdaafc  1      OPC=nop             
  nop                                                     #  38    0xdaafd  1      OPC=nop             
  nop                                                     #  39    0xdaafe  1      OPC=nop             
  nop                                                     #  40    0xdaaff  1      OPC=nop             
.L_dab00:                                                 #        0xdab00  0      OPC=<label>         
  popq %rbx                                               #  41    0xdab00  1      OPC=popq_r64_1      
  popq %r11                                               #  42    0xdab01  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  43    0xdab03  7      OPC=andl_r32_imm32  
  nop                                                     #  44    0xdab0a  1      OPC=nop             
  nop                                                     #  45    0xdab0b  1      OPC=nop             
  nop                                                     #  46    0xdab0c  1      OPC=nop             
  nop                                                     #  47    0xdab0d  1      OPC=nop             
  addq %r15, %r11                                         #  48    0xdab0e  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  49    0xdab11  3      OPC=jmpq_r64        
  nop                                                     #  50    0xdab14  1      OPC=nop             
  nop                                                     #  51    0xdab15  1      OPC=nop             
  nop                                                     #  52    0xdab16  1      OPC=nop             
  nop                                                     #  53    0xdab17  1      OPC=nop             
  nop                                                     #  54    0xdab18  1      OPC=nop             
  nop                                                     #  55    0xdab19  1      OPC=nop             
  nop                                                     #  56    0xdab1a  1      OPC=nop             
  nop                                                     #  57    0xdab1b  1      OPC=nop             
  nop                                                     #  58    0xdab1c  1      OPC=nop             
  nop                                                     #  59    0xdab1d  1      OPC=nop             
  nop                                                     #  60    0xdab1e  1      OPC=nop             
  nop                                                     #  61    0xdab1f  1      OPC=nop             
  nop                                                     #  62    0xdab20  1      OPC=nop             
  nop                                                     #  63    0xdab21  1      OPC=nop             
  nop                                                     #  64    0xdab22  1      OPC=nop             
  nop                                                     #  65    0xdab23  1      OPC=nop             
  nop                                                     #  66    0xdab24  1      OPC=nop             
  nop                                                     #  67    0xdab25  1      OPC=nop             
  nop                                                     #  68    0xdab26  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5beginEv

