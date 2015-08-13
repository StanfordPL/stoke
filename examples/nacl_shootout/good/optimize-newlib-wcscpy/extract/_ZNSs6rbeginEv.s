  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0xeed40
#! rip-offset  0xaed40
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs6rbeginEv:                #        0xaed40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaed40  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaed45  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaed47  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaed4c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaed4f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaed52  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaed54  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaed58  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaed5b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaed5e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaed60  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi   #  12    0xaed62  5      OPC=movl_r32_m32    
  testl %esi, %esi              #  13    0xaed67  2      OPC=testl_r32_r32   
  js .L_aeda0                   #  14    0xaed69  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaed6b  2      OPC=movl_r32_r32    
  nop                           #  16    0xaed6d  1      OPC=nop             
  nop                           #  17    0xaed6e  1      OPC=nop             
  nop                           #  18    0xaed6f  1      OPC=nop             
  nop                           #  19    0xaed70  1      OPC=nop             
  nop                           #  20    0xaed71  1      OPC=nop             
  nop                           #  21    0xaed72  1      OPC=nop             
  nop                           #  22    0xaed73  1      OPC=nop             
  nop                           #  23    0xaed74  1      OPC=nop             
  nop                           #  24    0xaed75  1      OPC=nop             
  nop                           #  25    0xaed76  1      OPC=nop             
  nop                           #  26    0xaed77  1      OPC=nop             
  nop                           #  27    0xaed78  1      OPC=nop             
  nop                           #  28    0xaed79  1      OPC=nop             
  nop                           #  29    0xaed7a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaed7b  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaed80  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaed82  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  33    0xaed86  3      OPC=leal_r32_m16    
  nop                           #  34    0xaed89  1      OPC=nop             
  nop                           #  35    0xaed8a  1      OPC=nop             
  nop                           #  36    0xaed8b  1      OPC=nop             
  nop                           #  37    0xaed8c  1      OPC=nop             
  nop                           #  38    0xaed8d  1      OPC=nop             
  nop                           #  39    0xaed8e  1      OPC=nop             
  nop                           #  40    0xaed8f  1      OPC=nop             
  nop                           #  41    0xaed90  1      OPC=nop             
  nop                           #  42    0xaed91  1      OPC=nop             
  nop                           #  43    0xaed92  1      OPC=nop             
  nop                           #  44    0xaed93  1      OPC=nop             
  nop                           #  45    0xaed94  1      OPC=nop             
  nop                           #  46    0xaed95  1      OPC=nop             
  nop                           #  47    0xaed96  1      OPC=nop             
  nop                           #  48    0xaed97  1      OPC=nop             
  nop                           #  49    0xaed98  1      OPC=nop             
  nop                           #  50    0xaed99  1      OPC=nop             
  nop                           #  51    0xaed9a  1      OPC=nop             
  nop                           #  52    0xaed9b  1      OPC=nop             
  nop                           #  53    0xaed9c  1      OPC=nop             
  nop                           #  54    0xaed9d  1      OPC=nop             
  nop                           #  55    0xaed9e  1      OPC=nop             
  nop                           #  56    0xaed9f  1      OPC=nop             
.L_aeda0:                       #        0xaeda0  0      OPC=<label>         
  movl %edx, %edx               #  57    0xaeda0  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  58    0xaeda2  4      OPC=addl_r32_m32    
  movq 0x8(%rsp), %rbx          #  59    0xaeda6  5      OPC=movq_r64_m64    
  movl %r12d, %r12d             #  60    0xaedab  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  61    0xaedae  4      OPC=movl_m32_r32    
  movl %r12d, %eax              #  62    0xaedb2  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaedb5  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaedba  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaedbd  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaedc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  67    0xaedc2  7      OPC=andl_r32_imm32  
  nop                           #  68    0xaedc9  1      OPC=nop             
  nop                           #  69    0xaedca  1      OPC=nop             
  nop                           #  70    0xaedcb  1      OPC=nop             
  nop                           #  71    0xaedcc  1      OPC=nop             
  addq %r15, %r11               #  72    0xaedcd  3      OPC=addq_r64_r64    
  jmpq %r11                     #  73    0xaedd0  3      OPC=jmpq_r64        
  nop                           #  74    0xaedd3  1      OPC=nop             
  nop                           #  75    0xaedd4  1      OPC=nop             
  nop                           #  76    0xaedd5  1      OPC=nop             
  nop                           #  77    0xaedd6  1      OPC=nop             
  nop                           #  78    0xaedd7  1      OPC=nop             
  nop                           #  79    0xaedd8  1      OPC=nop             
  nop                           #  80    0xaedd9  1      OPC=nop             
  nop                           #  81    0xaedda  1      OPC=nop             
  nop                           #  82    0xaeddb  1      OPC=nop             
  nop                           #  83    0xaeddc  1      OPC=nop             
  nop                           #  84    0xaeddd  1      OPC=nop             
  nop                           #  85    0xaedde  1      OPC=nop             
  nop                           #  86    0xaeddf  1      OPC=nop             
  nop                           #  87    0xaede0  1      OPC=nop             
  nop                           #  88    0xaede1  1      OPC=nop             
  nop                           #  89    0xaede2  1      OPC=nop             
  nop                           #  90    0xaede3  1      OPC=nop             
  nop                           #  91    0xaede4  1      OPC=nop             
  nop                           #  92    0xaede5  1      OPC=nop             
  nop                           #  93    0xaede6  1      OPC=nop             
                                                                             
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

