  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x11aba0
#! rip-offset  0xdaba0
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4rendEv:                  #        0xdaba0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xdaba0  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xdaba5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xdaba7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xdabac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xdabaf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xdabb2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xdabb4  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xdabb8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xdabbb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xdabbe  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xdabc0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r8d                             #  12    0xdabc2  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                                        #  13    0xdabc7  3      OPC=testl_r32_r32   
  js .L_dac00                                             #  14    0xdabca  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xdabcc  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xdabce  1      OPC=nop             
  nop                                                     #  17    0xdabcf  1      OPC=nop             
  nop                                                     #  18    0xdabd0  1      OPC=nop             
  nop                                                     #  19    0xdabd1  1      OPC=nop             
  nop                                                     #  20    0xdabd2  1      OPC=nop             
  nop                                                     #  21    0xdabd3  1      OPC=nop             
  nop                                                     #  22    0xdabd4  1      OPC=nop             
  nop                                                     #  23    0xdabd5  1      OPC=nop             
  nop                                                     #  24    0xdabd6  1      OPC=nop             
  nop                                                     #  25    0xdabd7  1      OPC=nop             
  nop                                                     #  26    0xdabd8  1      OPC=nop             
  nop                                                     #  27    0xdabd9  1      OPC=nop             
  nop                                                     #  28    0xdabda  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xdabdb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xdabe0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xdabe2  4      OPC=movl_r32_m32    
  nop                                                     #  32    0xdabe6  1      OPC=nop             
  nop                                                     #  33    0xdabe7  1      OPC=nop             
  nop                                                     #  34    0xdabe8  1      OPC=nop             
  nop                                                     #  35    0xdabe9  1      OPC=nop             
  nop                                                     #  36    0xdabea  1      OPC=nop             
  nop                                                     #  37    0xdabeb  1      OPC=nop             
  nop                                                     #  38    0xdabec  1      OPC=nop             
  nop                                                     #  39    0xdabed  1      OPC=nop             
  nop                                                     #  40    0xdabee  1      OPC=nop             
  nop                                                     #  41    0xdabef  1      OPC=nop             
  nop                                                     #  42    0xdabf0  1      OPC=nop             
  nop                                                     #  43    0xdabf1  1      OPC=nop             
  nop                                                     #  44    0xdabf2  1      OPC=nop             
  nop                                                     #  45    0xdabf3  1      OPC=nop             
  nop                                                     #  46    0xdabf4  1      OPC=nop             
  nop                                                     #  47    0xdabf5  1      OPC=nop             
  nop                                                     #  48    0xdabf6  1      OPC=nop             
  nop                                                     #  49    0xdabf7  1      OPC=nop             
  nop                                                     #  50    0xdabf8  1      OPC=nop             
  nop                                                     #  51    0xdabf9  1      OPC=nop             
  nop                                                     #  52    0xdabfa  1      OPC=nop             
  nop                                                     #  53    0xdabfb  1      OPC=nop             
  nop                                                     #  54    0xdabfc  1      OPC=nop             
  nop                                                     #  55    0xdabfd  1      OPC=nop             
  nop                                                     #  56    0xdabfe  1      OPC=nop             
  nop                                                     #  57    0xdabff  1      OPC=nop             
.L_dac00:                                                 #        0xdac00  0      OPC=<label>         
  movl %r12d, %r12d                                       #  58    0xdac00  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  59    0xdac03  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                    #  60    0xdac07  5      OPC=movq_r64_m64    
  movl %r12d, %eax                                        #  61    0xdac0c  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  62    0xdac0f  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  63    0xdac14  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  64    0xdac17  3      OPC=addq_r64_r64    
  popq %r11                                               #  65    0xdac1a  2      OPC=popq_r64_1      
  nop                                                     #  66    0xdac1c  1      OPC=nop             
  nop                                                     #  67    0xdac1d  1      OPC=nop             
  nop                                                     #  68    0xdac1e  1      OPC=nop             
  nop                                                     #  69    0xdac1f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  70    0xdac20  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xdac27  1      OPC=nop             
  nop                                                     #  72    0xdac28  1      OPC=nop             
  nop                                                     #  73    0xdac29  1      OPC=nop             
  nop                                                     #  74    0xdac2a  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xdac2b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xdac2e  3      OPC=jmpq_r64        
  nop                                                     #  77    0xdac31  1      OPC=nop             
  nop                                                     #  78    0xdac32  1      OPC=nop             
  nop                                                     #  79    0xdac33  1      OPC=nop             
  nop                                                     #  80    0xdac34  1      OPC=nop             
  nop                                                     #  81    0xdac35  1      OPC=nop             
  nop                                                     #  82    0xdac36  1      OPC=nop             
  nop                                                     #  83    0xdac37  1      OPC=nop             
  nop                                                     #  84    0xdac38  1      OPC=nop             
  nop                                                     #  85    0xdac39  1      OPC=nop             
  nop                                                     #  86    0xdac3a  1      OPC=nop             
  nop                                                     #  87    0xdac3b  1      OPC=nop             
  nop                                                     #  88    0xdac3c  1      OPC=nop             
  nop                                                     #  89    0xdac3d  1      OPC=nop             
  nop                                                     #  90    0xdac3e  1      OPC=nop             
  nop                                                     #  91    0xdac3f  1      OPC=nop             
  nop                                                     #  92    0xdac40  1      OPC=nop             
  nop                                                     #  93    0xdac41  1      OPC=nop             
  nop                                                     #  94    0xdac42  1      OPC=nop             
  nop                                                     #  95    0xdac43  1      OPC=nop             
  nop                                                     #  96    0xdac44  1      OPC=nop             
  nop                                                     #  97    0xdac45  1      OPC=nop             
  nop                                                     #  98    0xdac46  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4rendEv

