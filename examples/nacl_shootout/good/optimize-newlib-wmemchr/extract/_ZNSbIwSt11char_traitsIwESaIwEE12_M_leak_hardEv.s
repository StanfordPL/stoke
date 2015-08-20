  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, @function

#! file-offset 0x11a1c0
#! rip-offset  0xda1c0
#! capacity    160 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv:       #        0xda1c0  0      OPC=<label>         
  pushq %rbx                                            #  1     0xda1c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xda1c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  3     0xda1c3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  4     0xda1c5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  5     0xda1c9  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %eax                                #  6     0xda1cc  5      OPC=cmpl_eax_imm32  
  je .L_da240                                           #  7     0xda1d1  2      OPC=je_label        
  movl %eax, %eax                                       #  8     0xda1d3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r11d                          #  9     0xda1d5  5      OPC=movl_r32_m32    
  testl %r11d, %r11d                                    #  10    0xda1da  3      OPC=testl_r32_r32   
  nop                                                   #  11    0xda1dd  1      OPC=nop             
  nop                                                   #  12    0xda1de  1      OPC=nop             
  nop                                                   #  13    0xda1df  1      OPC=nop             
  jle .L_da220                                          #  14    0xda1e0  2      OPC=jle_label       
  xorl %ecx, %ecx                                       #  15    0xda1e2  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                                       #  16    0xda1e4  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                                       #  17    0xda1e6  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                       #  18    0xda1e8  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                        #  19    0xda1ea  2      OPC=xchgw_ax_r16    
  nop                                                   #  20    0xda1ec  1      OPC=nop             
  nop                                                   #  21    0xda1ed  1      OPC=nop             
  nop                                                   #  22    0xda1ee  1      OPC=nop             
  nop                                                   #  23    0xda1ef  1      OPC=nop             
  nop                                                   #  24    0xda1f0  1      OPC=nop             
  nop                                                   #  25    0xda1f1  1      OPC=nop             
  nop                                                   #  26    0xda1f2  1      OPC=nop             
  nop                                                   #  27    0xda1f3  1      OPC=nop             
  nop                                                   #  28    0xda1f4  1      OPC=nop             
  nop                                                   #  29    0xda1f5  1      OPC=nop             
  nop                                                   #  30    0xda1f6  1      OPC=nop             
  nop                                                   #  31    0xda1f7  1      OPC=nop             
  nop                                                   #  32    0xda1f8  1      OPC=nop             
  nop                                                   #  33    0xda1f9  1      OPC=nop             
  nop                                                   #  34    0xda1fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  35    0xda1fb  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  36    0xda200  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  37    0xda202  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  38    0xda206  3      OPC=subl_r32_imm8   
  nop                                                   #  39    0xda209  1      OPC=nop             
  nop                                                   #  40    0xda20a  1      OPC=nop             
  nop                                                   #  41    0xda20b  1      OPC=nop             
  nop                                                   #  42    0xda20c  1      OPC=nop             
  nop                                                   #  43    0xda20d  1      OPC=nop             
  nop                                                   #  44    0xda20e  1      OPC=nop             
  nop                                                   #  45    0xda20f  1      OPC=nop             
  nop                                                   #  46    0xda210  1      OPC=nop             
  nop                                                   #  47    0xda211  1      OPC=nop             
  nop                                                   #  48    0xda212  1      OPC=nop             
  nop                                                   #  49    0xda213  1      OPC=nop             
  nop                                                   #  50    0xda214  1      OPC=nop             
  nop                                                   #  51    0xda215  1      OPC=nop             
  nop                                                   #  52    0xda216  1      OPC=nop             
  nop                                                   #  53    0xda217  1      OPC=nop             
  nop                                                   #  54    0xda218  1      OPC=nop             
  nop                                                   #  55    0xda219  1      OPC=nop             
  nop                                                   #  56    0xda21a  1      OPC=nop             
  nop                                                   #  57    0xda21b  1      OPC=nop             
  nop                                                   #  58    0xda21c  1      OPC=nop             
  nop                                                   #  59    0xda21d  1      OPC=nop             
  nop                                                   #  60    0xda21e  1      OPC=nop             
  nop                                                   #  61    0xda21f  1      OPC=nop             
.L_da220:                                               #        0xda220  0      OPC=<label>         
  movl %eax, %eax                                       #  62    0xda220  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)                    #  63    0xda222  9      OPC=movl_m32_imm32  
  nop                                                   #  64    0xda22b  1      OPC=nop             
  nop                                                   #  65    0xda22c  1      OPC=nop             
  nop                                                   #  66    0xda22d  1      OPC=nop             
  nop                                                   #  67    0xda22e  1      OPC=nop             
  nop                                                   #  68    0xda22f  1      OPC=nop             
  nop                                                   #  69    0xda230  1      OPC=nop             
  nop                                                   #  70    0xda231  1      OPC=nop             
  nop                                                   #  71    0xda232  1      OPC=nop             
  nop                                                   #  72    0xda233  1      OPC=nop             
  nop                                                   #  73    0xda234  1      OPC=nop             
  nop                                                   #  74    0xda235  1      OPC=nop             
  nop                                                   #  75    0xda236  1      OPC=nop             
  nop                                                   #  76    0xda237  1      OPC=nop             
  nop                                                   #  77    0xda238  1      OPC=nop             
  nop                                                   #  78    0xda239  1      OPC=nop             
  nop                                                   #  79    0xda23a  1      OPC=nop             
  nop                                                   #  80    0xda23b  1      OPC=nop             
  nop                                                   #  81    0xda23c  1      OPC=nop             
  nop                                                   #  82    0xda23d  1      OPC=nop             
  nop                                                   #  83    0xda23e  1      OPC=nop             
  nop                                                   #  84    0xda23f  1      OPC=nop             
.L_da240:                                               #        0xda240  0      OPC=<label>         
  popq %rbx                                             #  85    0xda240  1      OPC=popq_r64_1      
  popq %r11                                             #  86    0xda241  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  87    0xda243  7      OPC=andl_r32_imm32  
  nop                                                   #  88    0xda24a  1      OPC=nop             
  nop                                                   #  89    0xda24b  1      OPC=nop             
  nop                                                   #  90    0xda24c  1      OPC=nop             
  nop                                                   #  91    0xda24d  1      OPC=nop             
  addq %r15, %r11                                       #  92    0xda24e  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  93    0xda251  3      OPC=jmpq_r64        
  nop                                                   #  94    0xda254  1      OPC=nop             
  nop                                                   #  95    0xda255  1      OPC=nop             
  nop                                                   #  96    0xda256  1      OPC=nop             
  nop                                                   #  97    0xda257  1      OPC=nop             
  nop                                                   #  98    0xda258  1      OPC=nop             
  nop                                                   #  99    0xda259  1      OPC=nop             
  nop                                                   #  100   0xda25a  1      OPC=nop             
  nop                                                   #  101   0xda25b  1      OPC=nop             
  nop                                                   #  102   0xda25c  1      OPC=nop             
  nop                                                   #  103   0xda25d  1      OPC=nop             
  nop                                                   #  104   0xda25e  1      OPC=nop             
  nop                                                   #  105   0xda25f  1      OPC=nop             
  nop                                                   #  106   0xda260  1      OPC=nop             
  nop                                                   #  107   0xda261  1      OPC=nop             
  nop                                                   #  108   0xda262  1      OPC=nop             
  nop                                                   #  109   0xda263  1      OPC=nop             
  nop                                                   #  110   0xda264  1      OPC=nop             
  nop                                                   #  111   0xda265  1      OPC=nop             
  nop                                                   #  112   0xda266  1      OPC=nop             
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, .-_ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv

