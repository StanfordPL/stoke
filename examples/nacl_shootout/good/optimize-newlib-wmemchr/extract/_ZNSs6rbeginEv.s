  .text
  .globl _ZNSs6rbeginEv
  .type _ZNSs6rbeginEv, @function

#! file-offset 0xef040
#! rip-offset  0xaf040
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs6rbeginEv:                #        0xaf040  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaf040  5      OPC=movq_m64_r64    
  movl %esi, %ebx               #  2     0xaf045  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaf047  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaf04c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaf04f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaf052  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaf054  4      OPC=movl_r32_m32    
  movl %edi, %r12d              #  8     0xaf058  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaf05b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaf05e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaf060  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi   #  12    0xaf062  5      OPC=movl_r32_m32    
  testl %esi, %esi              #  13    0xaf067  2      OPC=testl_r32_r32   
  js .L_af0a0                   #  14    0xaf069  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaf06b  2      OPC=movl_r32_r32    
  nop                           #  16    0xaf06d  1      OPC=nop             
  nop                           #  17    0xaf06e  1      OPC=nop             
  nop                           #  18    0xaf06f  1      OPC=nop             
  nop                           #  19    0xaf070  1      OPC=nop             
  nop                           #  20    0xaf071  1      OPC=nop             
  nop                           #  21    0xaf072  1      OPC=nop             
  nop                           #  22    0xaf073  1      OPC=nop             
  nop                           #  23    0xaf074  1      OPC=nop             
  nop                           #  24    0xaf075  1      OPC=nop             
  nop                           #  25    0xaf076  1      OPC=nop             
  nop                           #  26    0xaf077  1      OPC=nop             
  nop                           #  27    0xaf078  1      OPC=nop             
  nop                           #  28    0xaf079  1      OPC=nop             
  nop                           #  29    0xaf07a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  30    0xaf07b  5      OPC=callq_label     
  movl %ebx, %ebx               #  31    0xaf080  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  32    0xaf082  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  33    0xaf086  3      OPC=leal_r32_m16    
  nop                           #  34    0xaf089  1      OPC=nop             
  nop                           #  35    0xaf08a  1      OPC=nop             
  nop                           #  36    0xaf08b  1      OPC=nop             
  nop                           #  37    0xaf08c  1      OPC=nop             
  nop                           #  38    0xaf08d  1      OPC=nop             
  nop                           #  39    0xaf08e  1      OPC=nop             
  nop                           #  40    0xaf08f  1      OPC=nop             
  nop                           #  41    0xaf090  1      OPC=nop             
  nop                           #  42    0xaf091  1      OPC=nop             
  nop                           #  43    0xaf092  1      OPC=nop             
  nop                           #  44    0xaf093  1      OPC=nop             
  nop                           #  45    0xaf094  1      OPC=nop             
  nop                           #  46    0xaf095  1      OPC=nop             
  nop                           #  47    0xaf096  1      OPC=nop             
  nop                           #  48    0xaf097  1      OPC=nop             
  nop                           #  49    0xaf098  1      OPC=nop             
  nop                           #  50    0xaf099  1      OPC=nop             
  nop                           #  51    0xaf09a  1      OPC=nop             
  nop                           #  52    0xaf09b  1      OPC=nop             
  nop                           #  53    0xaf09c  1      OPC=nop             
  nop                           #  54    0xaf09d  1      OPC=nop             
  nop                           #  55    0xaf09e  1      OPC=nop             
  nop                           #  56    0xaf09f  1      OPC=nop             
.L_af0a0:                       #        0xaf0a0  0      OPC=<label>         
  movl %edx, %edx               #  57    0xaf0a0  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  58    0xaf0a2  4      OPC=addl_r32_m32    
  movq 0x8(%rsp), %rbx          #  59    0xaf0a6  5      OPC=movq_r64_m64    
  movl %r12d, %r12d             #  60    0xaf0ab  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)      #  61    0xaf0ae  4      OPC=movl_m32_r32    
  movl %r12d, %eax              #  62    0xaf0b2  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12         #  63    0xaf0b5  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  64    0xaf0ba  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  65    0xaf0bd  3      OPC=addq_r64_r64    
  popq %r11                     #  66    0xaf0c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  67    0xaf0c2  7      OPC=andl_r32_imm32  
  nop                           #  68    0xaf0c9  1      OPC=nop             
  nop                           #  69    0xaf0ca  1      OPC=nop             
  nop                           #  70    0xaf0cb  1      OPC=nop             
  nop                           #  71    0xaf0cc  1      OPC=nop             
  addq %r15, %r11               #  72    0xaf0cd  3      OPC=addq_r64_r64    
  jmpq %r11                     #  73    0xaf0d0  3      OPC=jmpq_r64        
  nop                           #  74    0xaf0d3  1      OPC=nop             
  nop                           #  75    0xaf0d4  1      OPC=nop             
  nop                           #  76    0xaf0d5  1      OPC=nop             
  nop                           #  77    0xaf0d6  1      OPC=nop             
  nop                           #  78    0xaf0d7  1      OPC=nop             
  nop                           #  79    0xaf0d8  1      OPC=nop             
  nop                           #  80    0xaf0d9  1      OPC=nop             
  nop                           #  81    0xaf0da  1      OPC=nop             
  nop                           #  82    0xaf0db  1      OPC=nop             
  nop                           #  83    0xaf0dc  1      OPC=nop             
  nop                           #  84    0xaf0dd  1      OPC=nop             
  nop                           #  85    0xaf0de  1      OPC=nop             
  nop                           #  86    0xaf0df  1      OPC=nop             
  nop                           #  87    0xaf0e0  1      OPC=nop             
  nop                           #  88    0xaf0e1  1      OPC=nop             
  nop                           #  89    0xaf0e2  1      OPC=nop             
  nop                           #  90    0xaf0e3  1      OPC=nop             
  nop                           #  91    0xaf0e4  1      OPC=nop             
  nop                           #  92    0xaf0e5  1      OPC=nop             
  nop                           #  93    0xaf0e6  1      OPC=nop             
                                                                             
.size _ZNSs6rbeginEv, .-_ZNSs6rbeginEv

