  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x11ac40
#! rip-offset  0xdac40
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv:                #        0xdac40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xdac40  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xdac45  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xdac47  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xdac4c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xdac4f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xdac52  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xdac54  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xdac58  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xdac5b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xdac5e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xdac60  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                             #  12    0xdac62  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                                        #  13    0xdac67  3      OPC=testl_r32_r32   
  js .L_daca0                                             #  14    0xdac6a  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xdac6c  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xdac6e  1      OPC=nop             
  nop                                                     #  17    0xdac6f  1      OPC=nop             
  nop                                                     #  18    0xdac70  1      OPC=nop             
  nop                                                     #  19    0xdac71  1      OPC=nop             
  nop                                                     #  20    0xdac72  1      OPC=nop             
  nop                                                     #  21    0xdac73  1      OPC=nop             
  nop                                                     #  22    0xdac74  1      OPC=nop             
  nop                                                     #  23    0xdac75  1      OPC=nop             
  nop                                                     #  24    0xdac76  1      OPC=nop             
  nop                                                     #  25    0xdac77  1      OPC=nop             
  nop                                                     #  26    0xdac78  1      OPC=nop             
  nop                                                     #  27    0xdac79  1      OPC=nop             
  nop                                                     #  28    0xdac7a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xdac7b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xdac80  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xdac82  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  32    0xdac86  3      OPC=leal_r32_m16    
  nop                                                     #  33    0xdac89  1      OPC=nop             
  nop                                                     #  34    0xdac8a  1      OPC=nop             
  nop                                                     #  35    0xdac8b  1      OPC=nop             
  nop                                                     #  36    0xdac8c  1      OPC=nop             
  nop                                                     #  37    0xdac8d  1      OPC=nop             
  nop                                                     #  38    0xdac8e  1      OPC=nop             
  nop                                                     #  39    0xdac8f  1      OPC=nop             
  nop                                                     #  40    0xdac90  1      OPC=nop             
  nop                                                     #  41    0xdac91  1      OPC=nop             
  nop                                                     #  42    0xdac92  1      OPC=nop             
  nop                                                     #  43    0xdac93  1      OPC=nop             
  nop                                                     #  44    0xdac94  1      OPC=nop             
  nop                                                     #  45    0xdac95  1      OPC=nop             
  nop                                                     #  46    0xdac96  1      OPC=nop             
  nop                                                     #  47    0xdac97  1      OPC=nop             
  nop                                                     #  48    0xdac98  1      OPC=nop             
  nop                                                     #  49    0xdac99  1      OPC=nop             
  nop                                                     #  50    0xdac9a  1      OPC=nop             
  nop                                                     #  51    0xdac9b  1      OPC=nop             
  nop                                                     #  52    0xdac9c  1      OPC=nop             
  nop                                                     #  53    0xdac9d  1      OPC=nop             
  nop                                                     #  54    0xdac9e  1      OPC=nop             
  nop                                                     #  55    0xdac9f  1      OPC=nop             
.L_daca0:                                                 #        0xdaca0  0      OPC=<label>         
  movl %edx, %edx                                         #  56    0xdaca0  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  57    0xdaca2  4      OPC=movl_r32_m32    
  movq 0x8(%rsp), %rbx                                    #  58    0xdaca6  5      OPC=movq_r64_m64    
  leal (%rax,%rdx,4), %eax                                #  59    0xdacab  3      OPC=leal_r32_m16    
  movl %r12d, %r12d                                       #  60    0xdacae  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  61    0xdacb1  4      OPC=movl_m32_r32    
  movl %r12d, %eax                                        #  62    0xdacb5  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  63    0xdacb8  5      OPC=movq_r64_m64    
  nop                                                     #  64    0xdacbd  1      OPC=nop             
  nop                                                     #  65    0xdacbe  1      OPC=nop             
  nop                                                     #  66    0xdacbf  1      OPC=nop             
  addl $0x18, %esp                                        #  67    0xdacc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  68    0xdacc3  3      OPC=addq_r64_r64    
  popq %r11                                               #  69    0xdacc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  70    0xdacc8  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xdaccf  1      OPC=nop             
  nop                                                     #  72    0xdacd0  1      OPC=nop             
  nop                                                     #  73    0xdacd1  1      OPC=nop             
  nop                                                     #  74    0xdacd2  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xdacd3  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xdacd6  3      OPC=jmpq_r64        
  nop                                                     #  77    0xdacd9  1      OPC=nop             
  nop                                                     #  78    0xdacda  1      OPC=nop             
  nop                                                     #  79    0xdacdb  1      OPC=nop             
  nop                                                     #  80    0xdacdc  1      OPC=nop             
  nop                                                     #  81    0xdacdd  1      OPC=nop             
  nop                                                     #  82    0xdacde  1      OPC=nop             
  nop                                                     #  83    0xdacdf  1      OPC=nop             
  nop                                                     #  84    0xdace0  1      OPC=nop             
  nop                                                     #  85    0xdace1  1      OPC=nop             
  nop                                                     #  86    0xdace2  1      OPC=nop             
  nop                                                     #  87    0xdace3  1      OPC=nop             
  nop                                                     #  88    0xdace4  1      OPC=nop             
  nop                                                     #  89    0xdace5  1      OPC=nop             
  nop                                                     #  90    0xdace6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv

