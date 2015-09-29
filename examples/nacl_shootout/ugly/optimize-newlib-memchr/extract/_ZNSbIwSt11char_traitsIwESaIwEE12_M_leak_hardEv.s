  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, @function

#! file-offset 0x11a8e0
#! rip-offset  0xda8e0
#! capacity    160 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv:       #        0xda8e0  0      OPC=<label>         
  pushq %rbx                                            #  1     0xda8e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xda8e1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  3     0xda8e3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  4     0xda8e5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  5     0xda8e9  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %eax                                #  6     0xda8ec  5      OPC=cmpl_eax_imm32  
  je .L_da960                                           #  7     0xda8f1  2      OPC=je_label        
  movl %eax, %eax                                       #  8     0xda8f3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r11d                          #  9     0xda8f5  5      OPC=movl_r32_m32    
  testl %r11d, %r11d                                    #  10    0xda8fa  3      OPC=testl_r32_r32   
  nop                                                   #  11    0xda8fd  1      OPC=nop             
  nop                                                   #  12    0xda8fe  1      OPC=nop             
  nop                                                   #  13    0xda8ff  1      OPC=nop             
  jle .L_da940                                          #  14    0xda900  2      OPC=jle_label       
  xorl %ecx, %ecx                                       #  15    0xda902  2      OPC=xorl_r32_r32    
  xorl %edx, %edx                                       #  16    0xda904  2      OPC=xorl_r32_r32    
  xorl %esi, %esi                                       #  17    0xda906  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                       #  18    0xda908  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                        #  19    0xda90a  2      OPC=xchgw_ax_r16    
  nop                                                   #  20    0xda90c  1      OPC=nop             
  nop                                                   #  21    0xda90d  1      OPC=nop             
  nop                                                   #  22    0xda90e  1      OPC=nop             
  nop                                                   #  23    0xda90f  1      OPC=nop             
  nop                                                   #  24    0xda910  1      OPC=nop             
  nop                                                   #  25    0xda911  1      OPC=nop             
  nop                                                   #  26    0xda912  1      OPC=nop             
  nop                                                   #  27    0xda913  1      OPC=nop             
  nop                                                   #  28    0xda914  1      OPC=nop             
  nop                                                   #  29    0xda915  1      OPC=nop             
  nop                                                   #  30    0xda916  1      OPC=nop             
  nop                                                   #  31    0xda917  1      OPC=nop             
  nop                                                   #  32    0xda918  1      OPC=nop             
  nop                                                   #  33    0xda919  1      OPC=nop             
  nop                                                   #  34    0xda91a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  35    0xda91b  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  36    0xda920  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  37    0xda922  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                       #  38    0xda926  3      OPC=subl_r32_imm8   
  nop                                                   #  39    0xda929  1      OPC=nop             
  nop                                                   #  40    0xda92a  1      OPC=nop             
  nop                                                   #  41    0xda92b  1      OPC=nop             
  nop                                                   #  42    0xda92c  1      OPC=nop             
  nop                                                   #  43    0xda92d  1      OPC=nop             
  nop                                                   #  44    0xda92e  1      OPC=nop             
  nop                                                   #  45    0xda92f  1      OPC=nop             
  nop                                                   #  46    0xda930  1      OPC=nop             
  nop                                                   #  47    0xda931  1      OPC=nop             
  nop                                                   #  48    0xda932  1      OPC=nop             
  nop                                                   #  49    0xda933  1      OPC=nop             
  nop                                                   #  50    0xda934  1      OPC=nop             
  nop                                                   #  51    0xda935  1      OPC=nop             
  nop                                                   #  52    0xda936  1      OPC=nop             
  nop                                                   #  53    0xda937  1      OPC=nop             
  nop                                                   #  54    0xda938  1      OPC=nop             
  nop                                                   #  55    0xda939  1      OPC=nop             
  nop                                                   #  56    0xda93a  1      OPC=nop             
  nop                                                   #  57    0xda93b  1      OPC=nop             
  nop                                                   #  58    0xda93c  1      OPC=nop             
  nop                                                   #  59    0xda93d  1      OPC=nop             
  nop                                                   #  60    0xda93e  1      OPC=nop             
  nop                                                   #  61    0xda93f  1      OPC=nop             
.L_da940:                                               #        0xda940  0      OPC=<label>         
  movl %eax, %eax                                       #  62    0xda940  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rax,1)                    #  63    0xda942  9      OPC=movl_m32_imm32  
  nop                                                   #  64    0xda94b  1      OPC=nop             
  nop                                                   #  65    0xda94c  1      OPC=nop             
  nop                                                   #  66    0xda94d  1      OPC=nop             
  nop                                                   #  67    0xda94e  1      OPC=nop             
  nop                                                   #  68    0xda94f  1      OPC=nop             
  nop                                                   #  69    0xda950  1      OPC=nop             
  nop                                                   #  70    0xda951  1      OPC=nop             
  nop                                                   #  71    0xda952  1      OPC=nop             
  nop                                                   #  72    0xda953  1      OPC=nop             
  nop                                                   #  73    0xda954  1      OPC=nop             
  nop                                                   #  74    0xda955  1      OPC=nop             
  nop                                                   #  75    0xda956  1      OPC=nop             
  nop                                                   #  76    0xda957  1      OPC=nop             
  nop                                                   #  77    0xda958  1      OPC=nop             
  nop                                                   #  78    0xda959  1      OPC=nop             
  nop                                                   #  79    0xda95a  1      OPC=nop             
  nop                                                   #  80    0xda95b  1      OPC=nop             
  nop                                                   #  81    0xda95c  1      OPC=nop             
  nop                                                   #  82    0xda95d  1      OPC=nop             
  nop                                                   #  83    0xda95e  1      OPC=nop             
  nop                                                   #  84    0xda95f  1      OPC=nop             
.L_da960:                                               #        0xda960  0      OPC=<label>         
  popq %rbx                                             #  85    0xda960  1      OPC=popq_r64_1      
  popq %r11                                             #  86    0xda961  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  87    0xda963  7      OPC=andl_r32_imm32  
  nop                                                   #  88    0xda96a  1      OPC=nop             
  nop                                                   #  89    0xda96b  1      OPC=nop             
  nop                                                   #  90    0xda96c  1      OPC=nop             
  nop                                                   #  91    0xda96d  1      OPC=nop             
  addq %r15, %r11                                       #  92    0xda96e  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  93    0xda971  3      OPC=jmpq_r64        
  nop                                                   #  94    0xda974  1      OPC=nop             
  nop                                                   #  95    0xda975  1      OPC=nop             
  nop                                                   #  96    0xda976  1      OPC=nop             
  nop                                                   #  97    0xda977  1      OPC=nop             
  nop                                                   #  98    0xda978  1      OPC=nop             
  nop                                                   #  99    0xda979  1      OPC=nop             
  nop                                                   #  100   0xda97a  1      OPC=nop             
  nop                                                   #  101   0xda97b  1      OPC=nop             
  nop                                                   #  102   0xda97c  1      OPC=nop             
  nop                                                   #  103   0xda97d  1      OPC=nop             
  nop                                                   #  104   0xda97e  1      OPC=nop             
  nop                                                   #  105   0xda97f  1      OPC=nop             
  nop                                                   #  106   0xda980  1      OPC=nop             
  nop                                                   #  107   0xda981  1      OPC=nop             
  nop                                                   #  108   0xda982  1      OPC=nop             
  nop                                                   #  109   0xda983  1      OPC=nop             
  nop                                                   #  110   0xda984  1      OPC=nop             
  nop                                                   #  111   0xda985  1      OPC=nop             
  nop                                                   #  112   0xda986  1      OPC=nop             
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv, .-_ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv

