  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x11a180
#! rip-offset  0xda180
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4rendEv:                  #        0xda180  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda180  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xda185  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda187  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda18c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda18f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda192  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda194  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xda198  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda19b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda19e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda1a0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r8d                             #  12    0xda1a2  5      OPC=movl_r32_m32    
  testl %r8d, %r8d                                        #  13    0xda1a7  3      OPC=testl_r32_r32   
  js .L_da1e0                                             #  14    0xda1aa  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda1ac  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda1ae  1      OPC=nop             
  nop                                                     #  17    0xda1af  1      OPC=nop             
  nop                                                     #  18    0xda1b0  1      OPC=nop             
  nop                                                     #  19    0xda1b1  1      OPC=nop             
  nop                                                     #  20    0xda1b2  1      OPC=nop             
  nop                                                     #  21    0xda1b3  1      OPC=nop             
  nop                                                     #  22    0xda1b4  1      OPC=nop             
  nop                                                     #  23    0xda1b5  1      OPC=nop             
  nop                                                     #  24    0xda1b6  1      OPC=nop             
  nop                                                     #  25    0xda1b7  1      OPC=nop             
  nop                                                     #  26    0xda1b8  1      OPC=nop             
  nop                                                     #  27    0xda1b9  1      OPC=nop             
  nop                                                     #  28    0xda1ba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xda1bb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xda1c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xda1c2  4      OPC=movl_r32_m32    
  nop                                                     #  32    0xda1c6  1      OPC=nop             
  nop                                                     #  33    0xda1c7  1      OPC=nop             
  nop                                                     #  34    0xda1c8  1      OPC=nop             
  nop                                                     #  35    0xda1c9  1      OPC=nop             
  nop                                                     #  36    0xda1ca  1      OPC=nop             
  nop                                                     #  37    0xda1cb  1      OPC=nop             
  nop                                                     #  38    0xda1cc  1      OPC=nop             
  nop                                                     #  39    0xda1cd  1      OPC=nop             
  nop                                                     #  40    0xda1ce  1      OPC=nop             
  nop                                                     #  41    0xda1cf  1      OPC=nop             
  nop                                                     #  42    0xda1d0  1      OPC=nop             
  nop                                                     #  43    0xda1d1  1      OPC=nop             
  nop                                                     #  44    0xda1d2  1      OPC=nop             
  nop                                                     #  45    0xda1d3  1      OPC=nop             
  nop                                                     #  46    0xda1d4  1      OPC=nop             
  nop                                                     #  47    0xda1d5  1      OPC=nop             
  nop                                                     #  48    0xda1d6  1      OPC=nop             
  nop                                                     #  49    0xda1d7  1      OPC=nop             
  nop                                                     #  50    0xda1d8  1      OPC=nop             
  nop                                                     #  51    0xda1d9  1      OPC=nop             
  nop                                                     #  52    0xda1da  1      OPC=nop             
  nop                                                     #  53    0xda1db  1      OPC=nop             
  nop                                                     #  54    0xda1dc  1      OPC=nop             
  nop                                                     #  55    0xda1dd  1      OPC=nop             
  nop                                                     #  56    0xda1de  1      OPC=nop             
  nop                                                     #  57    0xda1df  1      OPC=nop             
.L_da1e0:                                                 #        0xda1e0  0      OPC=<label>         
  movl %r12d, %r12d                                       #  58    0xda1e0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  59    0xda1e3  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                    #  60    0xda1e7  5      OPC=movq_r64_m64    
  movl %r12d, %eax                                        #  61    0xda1ec  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  62    0xda1ef  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  63    0xda1f4  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  64    0xda1f7  3      OPC=addq_r64_r64    
  popq %r11                                               #  65    0xda1fa  2      OPC=popq_r64_1      
  nop                                                     #  66    0xda1fc  1      OPC=nop             
  nop                                                     #  67    0xda1fd  1      OPC=nop             
  nop                                                     #  68    0xda1fe  1      OPC=nop             
  nop                                                     #  69    0xda1ff  1      OPC=nop             
  andl $0xffffffe0, %r11d                                 #  70    0xda200  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xda207  1      OPC=nop             
  nop                                                     #  72    0xda208  1      OPC=nop             
  nop                                                     #  73    0xda209  1      OPC=nop             
  nop                                                     #  74    0xda20a  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xda20b  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xda20e  3      OPC=jmpq_r64        
  nop                                                     #  77    0xda211  1      OPC=nop             
  nop                                                     #  78    0xda212  1      OPC=nop             
  nop                                                     #  79    0xda213  1      OPC=nop             
  nop                                                     #  80    0xda214  1      OPC=nop             
  nop                                                     #  81    0xda215  1      OPC=nop             
  nop                                                     #  82    0xda216  1      OPC=nop             
  nop                                                     #  83    0xda217  1      OPC=nop             
  nop                                                     #  84    0xda218  1      OPC=nop             
  nop                                                     #  85    0xda219  1      OPC=nop             
  nop                                                     #  86    0xda21a  1      OPC=nop             
  nop                                                     #  87    0xda21b  1      OPC=nop             
  nop                                                     #  88    0xda21c  1      OPC=nop             
  nop                                                     #  89    0xda21d  1      OPC=nop             
  nop                                                     #  90    0xda21e  1      OPC=nop             
  nop                                                     #  91    0xda21f  1      OPC=nop             
  nop                                                     #  92    0xda220  1      OPC=nop             
  nop                                                     #  93    0xda221  1      OPC=nop             
  nop                                                     #  94    0xda222  1      OPC=nop             
  nop                                                     #  95    0xda223  1      OPC=nop             
  nop                                                     #  96    0xda224  1      OPC=nop             
  nop                                                     #  97    0xda225  1      OPC=nop             
  nop                                                     #  98    0xda226  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4rendEv

