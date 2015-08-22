  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0xef760
#! rip-offset  0xaf760
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs6rbeginEv:                #        0xaf760  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaf760  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaf765  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaf767  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaf76c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaf76f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaf772  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaf774  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaf778  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaf77b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaf77e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaf780  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi   #  12    0xaf782  5      OPC=movl_r32_m32    
  testl %esi, %esi              #  13    0xaf787  2      OPC=testl_r32_r32   
  js .L_af7c0                   #  14    0xaf789  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaf78b  2      OPC=movl_r32_r32    
  nop                           #  16    0xaf78d  1      OPC=nop             
  nop                           #  17    0xaf78e  1      OPC=nop             
  nop                           #  18    0xaf78f  1      OPC=nop             
  nop                           #  19    0xaf790  1      OPC=nop             
  nop                           #  20    0xaf791  1      OPC=nop             
  nop                           #  21    0xaf792  1      OPC=nop             
  nop                           #  22    0xaf793  1      OPC=nop             
  nop                           #  23    0xaf794  1      OPC=nop             
  nop                           #  24    0xaf795  1      OPC=nop             
  nop                           #  25    0xaf796  1      OPC=nop             
  nop                           #  26    0xaf797  1      OPC=nop             
  nop                           #  27    0xaf798  1      OPC=nop             
  nop                           #  28    0xaf799  1      OPC=nop             
  nop                           #  29    0xaf79a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaf79b  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaf7a0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaf7a2  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  33    0xaf7a6  3      OPC=leal_r32_m16    
  nop                           #  34    0xaf7a9  1      OPC=nop             
  nop                           #  35    0xaf7aa  1      OPC=nop             
  nop                           #  36    0xaf7ab  1      OPC=nop             
  nop                           #  37    0xaf7ac  1      OPC=nop             
  nop                           #  38    0xaf7ad  1      OPC=nop             
  nop                           #  39    0xaf7ae  1      OPC=nop             
  nop                           #  40    0xaf7af  1      OPC=nop             
  nop                           #  41    0xaf7b0  1      OPC=nop             
  nop                           #  42    0xaf7b1  1      OPC=nop             
  nop                           #  43    0xaf7b2  1      OPC=nop             
  nop                           #  44    0xaf7b3  1      OPC=nop             
  nop                           #  45    0xaf7b4  1      OPC=nop             
  nop                           #  46    0xaf7b5  1      OPC=nop             
  nop                           #  47    0xaf7b6  1      OPC=nop             
  nop                           #  48    0xaf7b7  1      OPC=nop             
  nop                           #  49    0xaf7b8  1      OPC=nop             
  nop                           #  50    0xaf7b9  1      OPC=nop             
  nop                           #  51    0xaf7ba  1      OPC=nop             
  nop                           #  52    0xaf7bb  1      OPC=nop             
  nop                           #  53    0xaf7bc  1      OPC=nop             
  nop                           #  54    0xaf7bd  1      OPC=nop             
  nop                           #  55    0xaf7be  1      OPC=nop             
  nop                           #  56    0xaf7bf  1      OPC=nop             
.L_af7c0:                       #        0xaf7c0  0      OPC=<label>         
  movl %edx, %edx               #  57    0xaf7c0  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  58    0xaf7c2  4      OPC=addl_r32_m32    
  movq 0x8(%rsp), %rbx          #  59    0xaf7c6  5      OPC=movq_r64_m64    
  movl %r12d, %r12d             #  60    0xaf7cb  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  61    0xaf7ce  4      OPC=movl_m32_r32    
  movl %r12d, %eax              #  62    0xaf7d2  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaf7d5  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaf7da  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaf7dd  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaf7e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  67    0xaf7e2  7      OPC=andl_r32_imm32  
  nop                           #  68    0xaf7e9  1      OPC=nop             
  nop                           #  69    0xaf7ea  1      OPC=nop             
  nop                           #  70    0xaf7eb  1      OPC=nop             
  nop                           #  71    0xaf7ec  1      OPC=nop             
  addq %r15, %r11               #  72    0xaf7ed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  73    0xaf7f0  3      OPC=jmpq_r64        
  nop                           #  74    0xaf7f3  1      OPC=nop             
  nop                           #  75    0xaf7f4  1      OPC=nop             
  nop                           #  76    0xaf7f5  1      OPC=nop             
  nop                           #  77    0xaf7f6  1      OPC=nop             
  nop                           #  78    0xaf7f7  1      OPC=nop             
  nop                           #  79    0xaf7f8  1      OPC=nop             
  nop                           #  80    0xaf7f9  1      OPC=nop             
  nop                           #  81    0xaf7fa  1      OPC=nop             
  nop                           #  82    0xaf7fb  1      OPC=nop             
  nop                           #  83    0xaf7fc  1      OPC=nop             
  nop                           #  84    0xaf7fd  1      OPC=nop             
  nop                           #  85    0xaf7fe  1      OPC=nop             
  nop                           #  86    0xaf7ff  1      OPC=nop             
  nop                           #  87    0xaf800  1      OPC=nop             
  nop                           #  88    0xaf801  1      OPC=nop             
  nop                           #  89    0xaf802  1      OPC=nop             
  nop                           #  90    0xaf803  1      OPC=nop             
  nop                           #  91    0xaf804  1      OPC=nop             
  nop                           #  92    0xaf805  1      OPC=nop             
  nop                           #  93    0xaf806  1      OPC=nop             
                                                                             
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

