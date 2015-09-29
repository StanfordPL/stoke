  .text
  .globl tp_create
  .type tp_create, @function

#! file-offset 0x64460
#! rip-offset  0x24460
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.tp_create:                     #        0x24460  0      OPC=<label>         
  pushq %r12                    #  1     0x24460  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x24462  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x24463  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x24466  3      OPC=addq_r64_r64    
  movl %edi, %r12d              #  5     0x24469  3      OPC=movl_r32_r32    
  movl $0x20, %edi              #  6     0x2446c  5      OPC=movl_r32_imm32  
  nop                           #  7     0x24471  1      OPC=nop             
  nop                           #  8     0x24472  1      OPC=nop             
  nop                           #  9     0x24473  1      OPC=nop             
  nop                           #  10    0x24474  1      OPC=nop             
  nop                           #  11    0x24475  1      OPC=nop             
  nop                           #  12    0x24476  1      OPC=nop             
  nop                           #  13    0x24477  1      OPC=nop             
  nop                           #  14    0x24478  1      OPC=nop             
  nop                           #  15    0x24479  1      OPC=nop             
  nop                           #  16    0x2447a  1      OPC=nop             
  callq .malloc                 #  17    0x2447b  5      OPC=callq_label     
  movl %eax, %ebx               #  18    0x24480  2      OPC=movl_r32_r32    
  leal (,%r12,8), %edi          #  19    0x24482  8      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  20    0x2448a  2      OPC=xchgw_ax_r16    
  nop                           #  21    0x2448c  1      OPC=nop             
  nop                           #  22    0x2448d  1      OPC=nop             
  nop                           #  23    0x2448e  1      OPC=nop             
  nop                           #  24    0x2448f  1      OPC=nop             
  nop                           #  25    0x24490  1      OPC=nop             
  nop                           #  26    0x24491  1      OPC=nop             
  nop                           #  27    0x24492  1      OPC=nop             
  nop                           #  28    0x24493  1      OPC=nop             
  nop                           #  29    0x24494  1      OPC=nop             
  nop                           #  30    0x24495  1      OPC=nop             
  nop                           #  31    0x24496  1      OPC=nop             
  nop                           #  32    0x24497  1      OPC=nop             
  nop                           #  33    0x24498  1      OPC=nop             
  nop                           #  34    0x24499  1      OPC=nop             
  nop                           #  35    0x2449a  1      OPC=nop             
  callq .malloc                 #  36    0x2449b  5      OPC=callq_label     
  movl %ebx, %ebx               #  37    0x244a0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  38    0x244a2  4      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  39    0x244a6  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rbx,1)  #  40    0x244a8  5      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  41    0x244ad  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)   #  42    0x244af  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi          #  43    0x244b8  3      OPC=leal_r32_m16    
  xorl %esi, %esi               #  44    0x244bb  2      OPC=xorl_r32_r32    
  nop                           #  45    0x244bd  1      OPC=nop             
  nop                           #  46    0x244be  1      OPC=nop             
  nop                           #  47    0x244bf  1      OPC=nop             
  nop                           #  48    0x244c0  1      OPC=nop             
  nop                           #  49    0x244c1  1      OPC=nop             
  nop                           #  50    0x244c2  1      OPC=nop             
  nop                           #  51    0x244c3  1      OPC=nop             
  nop                           #  52    0x244c4  1      OPC=nop             
  nop                           #  53    0x244c5  1      OPC=nop             
  nop                           #  54    0x244c6  1      OPC=nop             
  nop                           #  55    0x244c7  1      OPC=nop             
  nop                           #  56    0x244c8  1      OPC=nop             
  nop                           #  57    0x244c9  1      OPC=nop             
  nop                           #  58    0x244ca  1      OPC=nop             
  nop                           #  59    0x244cb  1      OPC=nop             
  nop                           #  60    0x244cc  1      OPC=nop             
  nop                           #  61    0x244cd  1      OPC=nop             
  nop                           #  62    0x244ce  1      OPC=nop             
  nop                           #  63    0x244cf  1      OPC=nop             
  nop                           #  64    0x244d0  1      OPC=nop             
  nop                           #  65    0x244d1  1      OPC=nop             
  nop                           #  66    0x244d2  1      OPC=nop             
  nop                           #  67    0x244d3  1      OPC=nop             
  nop                           #  68    0x244d4  1      OPC=nop             
  nop                           #  69    0x244d5  1      OPC=nop             
  nop                           #  70    0x244d6  1      OPC=nop             
  nop                           #  71    0x244d7  1      OPC=nop             
  nop                           #  72    0x244d8  1      OPC=nop             
  nop                           #  73    0x244d9  1      OPC=nop             
  nop                           #  74    0x244da  1      OPC=nop             
  callq .pthread_mutex_init     #  75    0x244db  5      OPC=callq_label     
  movl %ebx, %eax               #  76    0x244e0  2      OPC=movl_r32_r32    
  addl $0x8, %esp               #  77    0x244e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  78    0x244e5  3      OPC=addq_r64_r64    
  popq %rbx                     #  79    0x244e8  1      OPC=popq_r64_1      
  popq %r12                     #  80    0x244e9  2      OPC=popq_r64_1      
  popq %r11                     #  81    0x244eb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  82    0x244ed  7      OPC=andl_r32_imm32  
  nop                           #  83    0x244f4  1      OPC=nop             
  nop                           #  84    0x244f5  1      OPC=nop             
  nop                           #  85    0x244f6  1      OPC=nop             
  nop                           #  86    0x244f7  1      OPC=nop             
  addq %r15, %r11               #  87    0x244f8  3      OPC=addq_r64_r64    
  jmpq %r11                     #  88    0x244fb  3      OPC=jmpq_r64        
  nop                           #  89    0x244fe  1      OPC=nop             
  nop                           #  90    0x244ff  1      OPC=nop             
  nop                           #  91    0x24500  1      OPC=nop             
  nop                           #  92    0x24501  1      OPC=nop             
  nop                           #  93    0x24502  1      OPC=nop             
  nop                           #  94    0x24503  1      OPC=nop             
  nop                           #  95    0x24504  1      OPC=nop             
  nop                           #  96    0x24505  1      OPC=nop             
  nop                           #  97    0x24506  1      OPC=nop             
                                                                             
.size tp_create, .-tp_create

