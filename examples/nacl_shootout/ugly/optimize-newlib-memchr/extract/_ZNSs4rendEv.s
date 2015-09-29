  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0xef6c0
#! rip-offset  0xaf6c0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs4rendEv:                  #        0xaf6c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaf6c0  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaf6c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaf6c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaf6cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaf6cf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaf6d2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaf6d4  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaf6d8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaf6db  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaf6de  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaf6e0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0xaf6e2  5      OPC=movl_r32_m32    
  testl %ecx, %ecx              #  13    0xaf6e7  2      OPC=testl_r32_r32   
  js .L_af720                   #  14    0xaf6e9  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaf6eb  2      OPC=movl_r32_r32    
  nop                           #  16    0xaf6ed  1      OPC=nop             
  nop                           #  17    0xaf6ee  1      OPC=nop             
  nop                           #  18    0xaf6ef  1      OPC=nop             
  nop                           #  19    0xaf6f0  1      OPC=nop             
  nop                           #  20    0xaf6f1  1      OPC=nop             
  nop                           #  21    0xaf6f2  1      OPC=nop             
  nop                           #  22    0xaf6f3  1      OPC=nop             
  nop                           #  23    0xaf6f4  1      OPC=nop             
  nop                           #  24    0xaf6f5  1      OPC=nop             
  nop                           #  25    0xaf6f6  1      OPC=nop             
  nop                           #  26    0xaf6f7  1      OPC=nop             
  nop                           #  27    0xaf6f8  1      OPC=nop             
  nop                           #  28    0xaf6f9  1      OPC=nop             
  nop                           #  29    0xaf6fa  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaf6fb  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaf700  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaf702  4      OPC=movl_r32_m32    
  nop                           #  33    0xaf706  1      OPC=nop             
  nop                           #  34    0xaf707  1      OPC=nop             
  nop                           #  35    0xaf708  1      OPC=nop             
  nop                           #  36    0xaf709  1      OPC=nop             
  nop                           #  37    0xaf70a  1      OPC=nop             
  nop                           #  38    0xaf70b  1      OPC=nop             
  nop                           #  39    0xaf70c  1      OPC=nop             
  nop                           #  40    0xaf70d  1      OPC=nop             
  nop                           #  41    0xaf70e  1      OPC=nop             
  nop                           #  42    0xaf70f  1      OPC=nop             
  nop                           #  43    0xaf710  1      OPC=nop             
  nop                           #  44    0xaf711  1      OPC=nop             
  nop                           #  45    0xaf712  1      OPC=nop             
  nop                           #  46    0xaf713  1      OPC=nop             
  nop                           #  47    0xaf714  1      OPC=nop             
  nop                           #  48    0xaf715  1      OPC=nop             
  nop                           #  49    0xaf716  1      OPC=nop             
  nop                           #  50    0xaf717  1      OPC=nop             
  nop                           #  51    0xaf718  1      OPC=nop             
  nop                           #  52    0xaf719  1      OPC=nop             
  nop                           #  53    0xaf71a  1      OPC=nop             
  nop                           #  54    0xaf71b  1      OPC=nop             
  nop                           #  55    0xaf71c  1      OPC=nop             
  nop                           #  56    0xaf71d  1      OPC=nop             
  nop                           #  57    0xaf71e  1      OPC=nop             
  nop                           #  58    0xaf71f  1      OPC=nop             
.L_af720:                       #        0xaf720  0      OPC=<label>         
  movl %r12d, %r12d             #  59    0xaf720  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  60    0xaf723  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx          #  61    0xaf727  5      OPC=movq_r64_m64    
  movl %r12d, %eax              #  62    0xaf72c  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaf72f  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaf734  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaf737  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaf73a  2      OPC=popq_r64_1      
  nop                           #  67    0xaf73c  1      OPC=nop             
  nop                           #  68    0xaf73d  1      OPC=nop             
  nop                           #  69    0xaf73e  1      OPC=nop             
  nop                           #  70    0xaf73f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  71    0xaf740  7      OPC=andl_r32_imm32  
  nop                           #  72    0xaf747  1      OPC=nop             
  nop                           #  73    0xaf748  1      OPC=nop             
  nop                           #  74    0xaf749  1      OPC=nop             
  nop                           #  75    0xaf74a  1      OPC=nop             
  addq %r15, %r11               #  76    0xaf74b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  77    0xaf74e  3      OPC=jmpq_r64        
  nop                           #  78    0xaf751  1      OPC=nop             
  nop                           #  79    0xaf752  1      OPC=nop             
  nop                           #  80    0xaf753  1      OPC=nop             
  nop                           #  81    0xaf754  1      OPC=nop             
  nop                           #  82    0xaf755  1      OPC=nop             
  nop                           #  83    0xaf756  1      OPC=nop             
  nop                           #  84    0xaf757  1      OPC=nop             
  nop                           #  85    0xaf758  1      OPC=nop             
  nop                           #  86    0xaf759  1      OPC=nop             
  nop                           #  87    0xaf75a  1      OPC=nop             
  nop                           #  88    0xaf75b  1      OPC=nop             
  nop                           #  89    0xaf75c  1      OPC=nop             
  nop                           #  90    0xaf75d  1      OPC=nop             
  nop                           #  91    0xaf75e  1      OPC=nop             
  nop                           #  92    0xaf75f  1      OPC=nop             
  nop                           #  93    0xaf760  1      OPC=nop             
  nop                           #  94    0xaf761  1      OPC=nop             
  nop                           #  95    0xaf762  1      OPC=nop             
  nop                           #  96    0xaf763  1      OPC=nop             
  nop                           #  97    0xaf764  1      OPC=nop             
  nop                           #  98    0xaf765  1      OPC=nop             
  nop                           #  99    0xaf766  1      OPC=nop             
                                                                             
.size _ZNSs4rendEv, .-_ZNSs4rendEv

