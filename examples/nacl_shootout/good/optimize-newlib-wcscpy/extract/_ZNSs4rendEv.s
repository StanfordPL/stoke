  .text
  .globl _ZNSs4rendEv
  .type _ZNSs4rendEv, @function

#! file-offset 0xeeca0
#! rip-offset  0xaeca0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs4rendEv:                  #        0xaeca0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaeca0  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaeca5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaeca7  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaecac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaecaf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaecb2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaecb4  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaecb8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaecbb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaecbe  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaecc0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx   #  12    0xaecc2  5      OPC=movl_r32_m32    
  testl %ecx, %ecx              #  13    0xaecc7  2      OPC=testl_r32_r32   
  js .L_aed00                   #  14    0xaecc9  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaeccb  2      OPC=movl_r32_r32    
  nop                           #  16    0xaeccd  1      OPC=nop             
  nop                           #  17    0xaecce  1      OPC=nop             
  nop                           #  18    0xaeccf  1      OPC=nop             
  nop                           #  19    0xaecd0  1      OPC=nop             
  nop                           #  20    0xaecd1  1      OPC=nop             
  nop                           #  21    0xaecd2  1      OPC=nop             
  nop                           #  22    0xaecd3  1      OPC=nop             
  nop                           #  23    0xaecd4  1      OPC=nop             
  nop                           #  24    0xaecd5  1      OPC=nop             
  nop                           #  25    0xaecd6  1      OPC=nop             
  nop                           #  26    0xaecd7  1      OPC=nop             
  nop                           #  27    0xaecd8  1      OPC=nop             
  nop                           #  28    0xaecd9  1      OPC=nop             
  nop                           #  29    0xaecda  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaecdb  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaece0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaece2  4      OPC=movl_r32_m32    
  nop                           #  33    0xaece6  1      OPC=nop             
  nop                           #  34    0xaece7  1      OPC=nop             
  nop                           #  35    0xaece8  1      OPC=nop             
  nop                           #  36    0xaece9  1      OPC=nop             
  nop                           #  37    0xaecea  1      OPC=nop             
  nop                           #  38    0xaeceb  1      OPC=nop             
  nop                           #  39    0xaecec  1      OPC=nop             
  nop                           #  40    0xaeced  1      OPC=nop             
  nop                           #  41    0xaecee  1      OPC=nop             
  nop                           #  42    0xaecef  1      OPC=nop             
  nop                           #  43    0xaecf0  1      OPC=nop             
  nop                           #  44    0xaecf1  1      OPC=nop             
  nop                           #  45    0xaecf2  1      OPC=nop             
  nop                           #  46    0xaecf3  1      OPC=nop             
  nop                           #  47    0xaecf4  1      OPC=nop             
  nop                           #  48    0xaecf5  1      OPC=nop             
  nop                           #  49    0xaecf6  1      OPC=nop             
  nop                           #  50    0xaecf7  1      OPC=nop             
  nop                           #  51    0xaecf8  1      OPC=nop             
  nop                           #  52    0xaecf9  1      OPC=nop             
  nop                           #  53    0xaecfa  1      OPC=nop             
  nop                           #  54    0xaecfb  1      OPC=nop             
  nop                           #  55    0xaecfc  1      OPC=nop             
  nop                           #  56    0xaecfd  1      OPC=nop             
  nop                           #  57    0xaecfe  1      OPC=nop             
  nop                           #  58    0xaecff  1      OPC=nop             
.L_aed00:                       #        0xaed00  0      OPC=<label>         
  movl %r12d, %r12d             #  59    0xaed00  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  60    0xaed03  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx          #  61    0xaed07  5      OPC=movq_r64_m64    
  movl %r12d, %eax              #  62    0xaed0c  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaed0f  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaed14  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaed17  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaed1a  2      OPC=popq_r64_1      
  nop                           #  67    0xaed1c  1      OPC=nop             
  nop                           #  68    0xaed1d  1      OPC=nop             
  nop                           #  69    0xaed1e  1      OPC=nop             
  nop                           #  70    0xaed1f  1      OPC=nop             
  andl $0xffffffe0, %r11d       #  71    0xaed20  7      OPC=andl_r32_imm32  
  nop                           #  72    0xaed27  1      OPC=nop             
  nop                           #  73    0xaed28  1      OPC=nop             
  nop                           #  74    0xaed29  1      OPC=nop             
  nop                           #  75    0xaed2a  1      OPC=nop             
  addq %r15, %r11               #  76    0xaed2b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  77    0xaed2e  3      OPC=jmpq_r64        
  nop                           #  78    0xaed31  1      OPC=nop             
  nop                           #  79    0xaed32  1      OPC=nop             
  nop                           #  80    0xaed33  1      OPC=nop             
  nop                           #  81    0xaed34  1      OPC=nop             
  nop                           #  82    0xaed35  1      OPC=nop             
  nop                           #  83    0xaed36  1      OPC=nop             
  nop                           #  84    0xaed37  1      OPC=nop             
  nop                           #  85    0xaed38  1      OPC=nop             
  nop                           #  86    0xaed39  1      OPC=nop             
  nop                           #  87    0xaed3a  1      OPC=nop             
  nop                           #  88    0xaed3b  1      OPC=nop             
  nop                           #  89    0xaed3c  1      OPC=nop             
  nop                           #  90    0xaed3d  1      OPC=nop             
  nop                           #  91    0xaed3e  1      OPC=nop             
  nop                           #  92    0xaed3f  1      OPC=nop             
  nop                           #  93    0xaed40  1      OPC=nop             
  nop                           #  94    0xaed41  1      OPC=nop             
  nop                           #  95    0xaed42  1      OPC=nop             
  nop                           #  96    0xaed43  1      OPC=nop             
  nop                           #  97    0xaed44  1      OPC=nop             
  nop                           #  98    0xaed45  1      OPC=nop             
  nop                           #  99    0xaed46  1      OPC=nop             
                                                                             
.size _ZNSs4rendEv, .-_ZNSs4rendEv

