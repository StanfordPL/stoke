  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0xef660
#! rip-offset  0xaf660
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs5beginEv:                 #        0xaf660  0      OPC=<label>         
  pushq %rbx                    #  1     0xaf660  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaf661  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaf663  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaf665  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaf669  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaf66c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx   #  7     0xaf66e  5      OPC=movl_r32_m32    
  testl %edx, %edx              #  8     0xaf673  2      OPC=testl_r32_r32   
  js .L_af6a0                   #  9     0xaf675  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaf677  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  11    0xaf679  2      OPC=xchgw_ax_r16    
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaf67b  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaf680  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaf682  4      OPC=movl_r32_m32    
  nop                           #  15    0xaf686  1      OPC=nop             
  nop                           #  16    0xaf687  1      OPC=nop             
  nop                           #  17    0xaf688  1      OPC=nop             
  nop                           #  18    0xaf689  1      OPC=nop             
  nop                           #  19    0xaf68a  1      OPC=nop             
  nop                           #  20    0xaf68b  1      OPC=nop             
  nop                           #  21    0xaf68c  1      OPC=nop             
  nop                           #  22    0xaf68d  1      OPC=nop             
  nop                           #  23    0xaf68e  1      OPC=nop             
  nop                           #  24    0xaf68f  1      OPC=nop             
  nop                           #  25    0xaf690  1      OPC=nop             
  nop                           #  26    0xaf691  1      OPC=nop             
  nop                           #  27    0xaf692  1      OPC=nop             
  nop                           #  28    0xaf693  1      OPC=nop             
  nop                           #  29    0xaf694  1      OPC=nop             
  nop                           #  30    0xaf695  1      OPC=nop             
  nop                           #  31    0xaf696  1      OPC=nop             
  nop                           #  32    0xaf697  1      OPC=nop             
  nop                           #  33    0xaf698  1      OPC=nop             
  nop                           #  34    0xaf699  1      OPC=nop             
  nop                           #  35    0xaf69a  1      OPC=nop             
  nop                           #  36    0xaf69b  1      OPC=nop             
  nop                           #  37    0xaf69c  1      OPC=nop             
  nop                           #  38    0xaf69d  1      OPC=nop             
  nop                           #  39    0xaf69e  1      OPC=nop             
  nop                           #  40    0xaf69f  1      OPC=nop             
.L_af6a0:                       #        0xaf6a0  0      OPC=<label>         
  popq %rbx                     #  41    0xaf6a0  1      OPC=popq_r64_1      
  popq %r11                     #  42    0xaf6a1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  43    0xaf6a3  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaf6aa  1      OPC=nop             
  nop                           #  45    0xaf6ab  1      OPC=nop             
  nop                           #  46    0xaf6ac  1      OPC=nop             
  nop                           #  47    0xaf6ad  1      OPC=nop             
  addq %r15, %r11               #  48    0xaf6ae  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaf6b1  3      OPC=jmpq_r64        
  nop                           #  50    0xaf6b4  1      OPC=nop             
  nop                           #  51    0xaf6b5  1      OPC=nop             
  nop                           #  52    0xaf6b6  1      OPC=nop             
  nop                           #  53    0xaf6b7  1      OPC=nop             
  nop                           #  54    0xaf6b8  1      OPC=nop             
  nop                           #  55    0xaf6b9  1      OPC=nop             
  nop                           #  56    0xaf6ba  1      OPC=nop             
  nop                           #  57    0xaf6bb  1      OPC=nop             
  nop                           #  58    0xaf6bc  1      OPC=nop             
  nop                           #  59    0xaf6bd  1      OPC=nop             
  nop                           #  60    0xaf6be  1      OPC=nop             
  nop                           #  61    0xaf6bf  1      OPC=nop             
  nop                           #  62    0xaf6c0  1      OPC=nop             
  nop                           #  63    0xaf6c1  1      OPC=nop             
  nop                           #  64    0xaf6c2  1      OPC=nop             
  nop                           #  65    0xaf6c3  1      OPC=nop             
  nop                           #  66    0xaf6c4  1      OPC=nop             
  nop                           #  67    0xaf6c5  1      OPC=nop             
  nop                           #  68    0xaf6c6  1      OPC=nop             
                                                                             
.size _ZNSs5beginEv, .-_ZNSs5beginEv

