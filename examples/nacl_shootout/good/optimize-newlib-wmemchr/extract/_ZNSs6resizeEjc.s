  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0xef7a0
#! rip-offset  0xaf7a0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6resizeEjc:                       #        0xaf7a0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaf7a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf7a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf7a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaf7a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xaf7aa  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaf7ae  3      OPC=subl_r32_imm8   
  cmpl $0x3ffffffc, %esi                #  7     0xaf7b1  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                       #  8     0xaf7b7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xaf7b9  4      OPC=movl_r32_m32    
  nop                                   #  10    0xaf7bd  1      OPC=nop             
  nop                                   #  11    0xaf7be  1      OPC=nop             
  nop                                   #  12    0xaf7bf  1      OPC=nop             
  ja .L_af820                           #  13    0xaf7c0  2      OPC=ja_label        
  cmpl %eax, %esi                       #  14    0xaf7c2  2      OPC=cmpl_r32_r32    
  ja .L_af800                           #  15    0xaf7c4  2      OPC=ja_label        
  jb .L_af7e0                           #  16    0xaf7c6  2      OPC=jb_label        
  addl $0x8, %esp                       #  17    0xaf7c8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  18    0xaf7cb  3      OPC=addq_r64_r64    
  popq %r11                             #  19    0xaf7ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xaf7d0  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xaf7d7  1      OPC=nop             
  nop                                   #  22    0xaf7d8  1      OPC=nop             
  nop                                   #  23    0xaf7d9  1      OPC=nop             
  nop                                   #  24    0xaf7da  1      OPC=nop             
  addq %r15, %r11                       #  25    0xaf7db  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xaf7de  3      OPC=jmpq_r64        
  nop                                   #  27    0xaf7e1  1      OPC=nop             
  nop                                   #  28    0xaf7e2  1      OPC=nop             
  nop                                   #  29    0xaf7e3  1      OPC=nop             
  nop                                   #  30    0xaf7e4  1      OPC=nop             
  nop                                   #  31    0xaf7e5  1      OPC=nop             
  nop                                   #  32    0xaf7e6  1      OPC=nop             
.L_af7e0:                               #        0xaf7e7  0      OPC=<label>         
  movl %eax, %edx                       #  33    0xaf7e7  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                       #  34    0xaf7e9  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                       #  35    0xaf7eb  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  36    0xaf7ee  3      OPC=addq_r64_r64    
  subl %esi, %edx                       #  37    0xaf7f1  2      OPC=subl_r32_r32    
  jmpq ._ZNSs9_M_mutateEjjj             #  38    0xaf7f3  5      OPC=jmpq_label_1    
  nop                                   #  39    0xaf7f8  1      OPC=nop             
  nop                                   #  40    0xaf7f9  1      OPC=nop             
  nop                                   #  41    0xaf7fa  1      OPC=nop             
  nop                                   #  42    0xaf7fb  1      OPC=nop             
  nop                                   #  43    0xaf7fc  1      OPC=nop             
  nop                                   #  44    0xaf7fd  1      OPC=nop             
  nop                                   #  45    0xaf7fe  1      OPC=nop             
  nop                                   #  46    0xaf7ff  1      OPC=nop             
  nop                                   #  47    0xaf800  1      OPC=nop             
  nop                                   #  48    0xaf801  1      OPC=nop             
  nop                                   #  49    0xaf802  1      OPC=nop             
  nop                                   #  50    0xaf803  1      OPC=nop             
  nop                                   #  51    0xaf804  1      OPC=nop             
  nop                                   #  52    0xaf805  1      OPC=nop             
  nop                                   #  53    0xaf806  1      OPC=nop             
.L_af800:                               #        0xaf807  0      OPC=<label>         
  movsbl %dl, %edx                      #  54    0xaf807  3      OPC=movsbl_r32_r8   
  subl %eax, %esi                       #  55    0xaf80a  2      OPC=subl_r32_r32    
  addl $0x8, %esp                       #  56    0xaf80c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaf80f  3      OPC=addq_r64_r64    
  jmpq ._ZNSs6appendEjc                 #  58    0xaf812  5      OPC=jmpq_label_1    
  nop                                   #  59    0xaf817  1      OPC=nop             
  nop                                   #  60    0xaf818  1      OPC=nop             
  nop                                   #  61    0xaf819  1      OPC=nop             
  nop                                   #  62    0xaf81a  1      OPC=nop             
  nop                                   #  63    0xaf81b  1      OPC=nop             
  nop                                   #  64    0xaf81c  1      OPC=nop             
  nop                                   #  65    0xaf81d  1      OPC=nop             
  nop                                   #  66    0xaf81e  1      OPC=nop             
  nop                                   #  67    0xaf81f  1      OPC=nop             
  nop                                   #  68    0xaf820  1      OPC=nop             
  nop                                   #  69    0xaf821  1      OPC=nop             
  nop                                   #  70    0xaf822  1      OPC=nop             
  nop                                   #  71    0xaf823  1      OPC=nop             
  nop                                   #  72    0xaf824  1      OPC=nop             
  nop                                   #  73    0xaf825  1      OPC=nop             
  nop                                   #  74    0xaf826  1      OPC=nop             
.L_af820:                               #        0xaf827  0      OPC=<label>         
  movl $0x1003bb88, %edi                #  75    0xaf827  5      OPC=movl_r32_imm32  
  nop                                   #  76    0xaf82c  1      OPC=nop             
  nop                                   #  77    0xaf82d  1      OPC=nop             
  nop                                   #  78    0xaf82e  1      OPC=nop             
  nop                                   #  79    0xaf82f  1      OPC=nop             
  nop                                   #  80    0xaf830  1      OPC=nop             
  nop                                   #  81    0xaf831  1      OPC=nop             
  nop                                   #  82    0xaf832  1      OPC=nop             
  nop                                   #  83    0xaf833  1      OPC=nop             
  nop                                   #  84    0xaf834  1      OPC=nop             
  nop                                   #  85    0xaf835  1      OPC=nop             
  nop                                   #  86    0xaf836  1      OPC=nop             
  nop                                   #  87    0xaf837  1      OPC=nop             
  nop                                   #  88    0xaf838  1      OPC=nop             
  nop                                   #  89    0xaf839  1      OPC=nop             
  nop                                   #  90    0xaf83a  1      OPC=nop             
  nop                                   #  91    0xaf83b  1      OPC=nop             
  nop                                   #  92    0xaf83c  1      OPC=nop             
  nop                                   #  93    0xaf83d  1      OPC=nop             
  nop                                   #  94    0xaf83e  1      OPC=nop             
  nop                                   #  95    0xaf83f  1      OPC=nop             
  nop                                   #  96    0xaf840  1      OPC=nop             
  nop                                   #  97    0xaf841  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  98    0xaf842  5      OPC=callq_label     
                                                                                     
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

