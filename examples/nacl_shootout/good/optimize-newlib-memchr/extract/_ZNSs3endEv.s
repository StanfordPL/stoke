  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0xef600
#! rip-offset  0xaf600
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs3endEv:                   #        0xaf600  0      OPC=<label>         
  pushq %rbx                    #  1     0xaf600  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaf601  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaf603  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaf605  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaf609  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaf60c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0xaf60e  5      OPC=movl_r32_m32    
  testl %r11d, %r11d            #  8     0xaf613  3      OPC=testl_r32_r32   
  js .L_af640                   #  9     0xaf616  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaf618  2      OPC=movl_r32_r32    
  nop                           #  11    0xaf61a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaf61b  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaf620  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaf622  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  15    0xaf626  3      OPC=leal_r32_m16    
  nop                           #  16    0xaf629  1      OPC=nop             
  nop                           #  17    0xaf62a  1      OPC=nop             
  nop                           #  18    0xaf62b  1      OPC=nop             
  nop                           #  19    0xaf62c  1      OPC=nop             
  nop                           #  20    0xaf62d  1      OPC=nop             
  nop                           #  21    0xaf62e  1      OPC=nop             
  nop                           #  22    0xaf62f  1      OPC=nop             
  nop                           #  23    0xaf630  1      OPC=nop             
  nop                           #  24    0xaf631  1      OPC=nop             
  nop                           #  25    0xaf632  1      OPC=nop             
  nop                           #  26    0xaf633  1      OPC=nop             
  nop                           #  27    0xaf634  1      OPC=nop             
  nop                           #  28    0xaf635  1      OPC=nop             
  nop                           #  29    0xaf636  1      OPC=nop             
  nop                           #  30    0xaf637  1      OPC=nop             
  nop                           #  31    0xaf638  1      OPC=nop             
  nop                           #  32    0xaf639  1      OPC=nop             
  nop                           #  33    0xaf63a  1      OPC=nop             
  nop                           #  34    0xaf63b  1      OPC=nop             
  nop                           #  35    0xaf63c  1      OPC=nop             
  nop                           #  36    0xaf63d  1      OPC=nop             
  nop                           #  37    0xaf63e  1      OPC=nop             
  nop                           #  38    0xaf63f  1      OPC=nop             
.L_af640:                       #        0xaf640  0      OPC=<label>         
  popq %rbx                     #  39    0xaf640  1      OPC=popq_r64_1      
  popq %r11                     #  40    0xaf641  2      OPC=popq_r64_1      
  movl %edx, %edx               #  41    0xaf643  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  42    0xaf645  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d       #  43    0xaf649  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaf650  1      OPC=nop             
  nop                           #  45    0xaf651  1      OPC=nop             
  nop                           #  46    0xaf652  1      OPC=nop             
  nop                           #  47    0xaf653  1      OPC=nop             
  addq %r15, %r11               #  48    0xaf654  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaf657  3      OPC=jmpq_r64        
  nop                           #  50    0xaf65a  1      OPC=nop             
  nop                           #  51    0xaf65b  1      OPC=nop             
  nop                           #  52    0xaf65c  1      OPC=nop             
  nop                           #  53    0xaf65d  1      OPC=nop             
  nop                           #  54    0xaf65e  1      OPC=nop             
  nop                           #  55    0xaf65f  1      OPC=nop             
  nop                           #  56    0xaf660  1      OPC=nop             
  nop                           #  57    0xaf661  1      OPC=nop             
  nop                           #  58    0xaf662  1      OPC=nop             
  nop                           #  59    0xaf663  1      OPC=nop             
  nop                           #  60    0xaf664  1      OPC=nop             
  nop                           #  61    0xaf665  1      OPC=nop             
  nop                           #  62    0xaf666  1      OPC=nop             
                                                                             
.size _ZNSs3endEv, .-_ZNSs3endEv

