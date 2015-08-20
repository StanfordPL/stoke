  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0xeefa0
#! rip-offset  0xaefa0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs4rendEv:                  #        0xaefa0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaefa0  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaefa5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaefa7  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaefac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaefaf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaefb2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaefb4  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaefb8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaefbb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaefbe  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaefc0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0xaefc2  5      OPC=movl_r32_m32    
  testl %ecx, %ecx              #  13    0xaefc7  2      OPC=testl_r32_r32   
  js .L_af000                   #  14    0xaefc9  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaefcb  2      OPC=movl_r32_r32    
  nop                           #  16    0xaefcd  1      OPC=nop             
  nop                           #  17    0xaefce  1      OPC=nop             
  nop                           #  18    0xaefcf  1      OPC=nop             
  nop                           #  19    0xaefd0  1      OPC=nop             
  nop                           #  20    0xaefd1  1      OPC=nop             
  nop                           #  21    0xaefd2  1      OPC=nop             
  nop                           #  22    0xaefd3  1      OPC=nop             
  nop                           #  23    0xaefd4  1      OPC=nop             
  nop                           #  24    0xaefd5  1      OPC=nop             
  nop                           #  25    0xaefd6  1      OPC=nop             
  nop                           #  26    0xaefd7  1      OPC=nop             
  nop                           #  27    0xaefd8  1      OPC=nop             
  nop                           #  28    0xaefd9  1      OPC=nop             
  nop                           #  29    0xaefda  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaefdb  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaefe0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaefe2  4      OPC=movl_r32_m32    
  nop                           #  33    0xaefe6  1      OPC=nop             
  nop                           #  34    0xaefe7  1      OPC=nop             
  nop                           #  35    0xaefe8  1      OPC=nop             
  nop                           #  36    0xaefe9  1      OPC=nop             
  nop                           #  37    0xaefea  1      OPC=nop             
  nop                           #  38    0xaefeb  1      OPC=nop             
  nop                           #  39    0xaefec  1      OPC=nop             
  nop                           #  40    0xaefed  1      OPC=nop             
  nop                           #  41    0xaefee  1      OPC=nop             
  nop                           #  42    0xaefef  1      OPC=nop             
  nop                           #  43    0xaeff0  1      OPC=nop             
  nop                           #  44    0xaeff1  1      OPC=nop             
  nop                           #  45    0xaeff2  1      OPC=nop             
  nop                           #  46    0xaeff3  1      OPC=nop             
  nop                           #  47    0xaeff4  1      OPC=nop             
  nop                           #  48    0xaeff5  1      OPC=nop             
  nop                           #  49    0xaeff6  1      OPC=nop             
  nop                           #  50    0xaeff7  1      OPC=nop             
  nop                           #  51    0xaeff8  1      OPC=nop             
  nop                           #  52    0xaeff9  1      OPC=nop             
  nop                           #  53    0xaeffa  1      OPC=nop             
  nop                           #  54    0xaeffb  1      OPC=nop             
  nop                           #  55    0xaeffc  1      OPC=nop             
  nop                           #  56    0xaeffd  1      OPC=nop             
  nop                           #  57    0xaeffe  1      OPC=nop             
  nop                           #  58    0xaefff  1      OPC=nop             
.L_af000:                       #        0xaf000  0      OPC=<label>         
  movl %r12d, %r12d             #  59    0xaf000  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  60    0xaf003  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx          #  61    0xaf007  5      OPC=movq_r64_m64    
  movl %r12d, %eax              #  62    0xaf00c  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaf00f  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaf014  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaf017  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaf01a  2      OPC=popq_r64_1      
  nop                           #  67    0xaf01c  1      OPC=nop             
  nop                           #  68    0xaf01d  1      OPC=nop             
  nop                           #  69    0xaf01e  1      OPC=nop             
  nop                           #  70    0xaf01f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  71    0xaf020  7      OPC=andl_r32_imm32  
  nop                           #  72    0xaf027  1      OPC=nop             
  nop                           #  73    0xaf028  1      OPC=nop             
  nop                           #  74    0xaf029  1      OPC=nop             
  nop                           #  75    0xaf02a  1      OPC=nop             
  addq %r15, %r11               #  76    0xaf02b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  77    0xaf02e  3      OPC=jmpq_r64        
  nop                           #  78    0xaf031  1      OPC=nop             
  nop                           #  79    0xaf032  1      OPC=nop             
  nop                           #  80    0xaf033  1      OPC=nop             
  nop                           #  81    0xaf034  1      OPC=nop             
  nop                           #  82    0xaf035  1      OPC=nop             
  nop                           #  83    0xaf036  1      OPC=nop             
  nop                           #  84    0xaf037  1      OPC=nop             
  nop                           #  85    0xaf038  1      OPC=nop             
  nop                           #  86    0xaf039  1      OPC=nop             
  nop                           #  87    0xaf03a  1      OPC=nop             
  nop                           #  88    0xaf03b  1      OPC=nop             
  nop                           #  89    0xaf03c  1      OPC=nop             
  nop                           #  90    0xaf03d  1      OPC=nop             
  nop                           #  91    0xaf03e  1      OPC=nop             
  nop                           #  92    0xaf03f  1      OPC=nop             
  nop                           #  93    0xaf040  1      OPC=nop             
  nop                           #  94    0xaf041  1      OPC=nop             
  nop                           #  95    0xaf042  1      OPC=nop             
  nop                           #  96    0xaf043  1      OPC=nop             
  nop                           #  97    0xaf044  1      OPC=nop             
  nop                           #  98    0xaf045  1      OPC=nop             
  nop                           #  99    0xaf046  1      OPC=nop             
                                                                             
.size _ZNSs4rendEv, .-_ZNSs4rendEv

