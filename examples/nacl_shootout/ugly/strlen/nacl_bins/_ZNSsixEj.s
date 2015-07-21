  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0xee620
#! rip-offset  0xae620
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
._ZNSsixEj:                     #        0xae620  0      OPC=0     
  movq %rbx, -0x10(%rsp)        #  1     0xae620  5      OPC=1138  
  movl %edi, %ebx               #  2     0xae625  2      OPC=1157  
  movq %r12, -0x8(%rsp)         #  3     0xae627  5      OPC=1138  
  subl $0x18, %esp              #  4     0xae62c  3      OPC=2384  
  addq %r15, %rsp               #  5     0xae62f  3      OPC=72    
  movl %ebx, %ebx               #  6     0xae632  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  7     0xae634  4      OPC=1156  
  movl %esi, %r12d              #  8     0xae638  3      OPC=1157  
  leal -0xc(%rax), %edx         #  9     0xae63b  3      OPC=1066  
  xchgw %ax, %ax                #  10    0xae63e  2      OPC=3700  
  movl %edx, %edx               #  11    0xae640  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0xae642  5      OPC=1156  
  testl %r10d, %r10d            #  13    0xae647  3      OPC=2436  
  js .L_ae680                   #  14    0xae64a  6      OPC=1043  
  nop                           #  15    0xae650  1      OPC=1343  
  nop                           #  16    0xae651  1      OPC=1343  
  movl %ebx, %edi               #  17    0xae652  2      OPC=1157  
  nop                           #  18    0xae654  1      OPC=1343  
  nop                           #  19    0xae655  1      OPC=1343  
  nop                           #  20    0xae656  1      OPC=1343  
  nop                           #  21    0xae657  1      OPC=1343  
  nop                           #  22    0xae658  1      OPC=1343  
  nop                           #  23    0xae659  1      OPC=1343  
  nop                           #  24    0xae65a  1      OPC=1343  
  nop                           #  25    0xae65b  1      OPC=1343  
  nop                           #  26    0xae65c  1      OPC=1343  
  nop                           #  27    0xae65d  1      OPC=1343  
  nop                           #  28    0xae65e  1      OPC=1343  
  nop                           #  29    0xae65f  1      OPC=1343  
  nop                           #  30    0xae660  1      OPC=1343  
  callq ._ZNSs12_M_leak_hardEv  #  31    0xae661  5      OPC=260   
  movl %ebx, %ebx               #  32    0xae666  2      OPC=1157  
  movl (%r15,%rbx,1), %eax      #  33    0xae668  4      OPC=1156  
  nop                           #  34    0xae66c  1      OPC=1343  
  nop                           #  35    0xae66d  1      OPC=1343  
  nop                           #  36    0xae66e  1      OPC=1343  
  nop                           #  37    0xae66f  1      OPC=1343  
  nop                           #  38    0xae670  1      OPC=1343  
  nop                           #  39    0xae671  1      OPC=1343  
  nop                           #  40    0xae672  1      OPC=1343  
  nop                           #  41    0xae673  1      OPC=1343  
  nop                           #  42    0xae674  1      OPC=1343  
  nop                           #  43    0xae675  1      OPC=1343  
  nop                           #  44    0xae676  1      OPC=1343  
  nop                           #  45    0xae677  1      OPC=1343  
  nop                           #  46    0xae678  1      OPC=1343  
  nop                           #  47    0xae679  1      OPC=1343  
  nop                           #  48    0xae67a  1      OPC=1343  
  nop                           #  49    0xae67b  1      OPC=1343  
  nop                           #  50    0xae67c  1      OPC=1343  
  nop                           #  51    0xae67d  1      OPC=1343  
  nop                           #  52    0xae67e  1      OPC=1343  
  nop                           #  53    0xae67f  1      OPC=1343  
  nop                           #  54    0xae680  1      OPC=1343  
  nop                           #  55    0xae681  1      OPC=1343  
  nop                           #  56    0xae682  1      OPC=1343  
  nop                           #  57    0xae683  1      OPC=1343  
  nop                           #  58    0xae684  1      OPC=1343  
  nop                           #  59    0xae685  1      OPC=1343  
.L_ae680:                       #        0xae686  0      OPC=0     
  leal (%r12,%rax,1), %eax      #  60    0xae686  4      OPC=1066  
  movq 0x8(%rsp), %rbx          #  61    0xae68a  5      OPC=1161  
  movq 0x10(%rsp), %r12         #  62    0xae68f  5      OPC=1161  
  addl $0x18, %esp              #  63    0xae694  3      OPC=65    
  addq %r15, %rsp               #  64    0xae697  3      OPC=72    
  popq %r11                     #  65    0xae69a  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  66    0xae69c  7      OPC=131   
  nop                           #  67    0xae6a3  1      OPC=1343  
  nop                           #  68    0xae6a4  1      OPC=1343  
  nop                           #  69    0xae6a5  1      OPC=1343  
  nop                           #  70    0xae6a6  1      OPC=1343  
  addq %r15, %r11               #  71    0xae6a7  3      OPC=72    
  jmpq %r11                     #  72    0xae6aa  3      OPC=928   
                                                                   
.size _ZNSsixEj, .-_ZNSsixEj

