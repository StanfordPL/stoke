  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0xef4a0
#! rip-offset  0xaf4a0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6resizeEjc:                       #        0xaf4a0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaf4a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf4a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf4a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaf4a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xaf4aa  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaf4ae  3      OPC=subl_r32_imm8   
  cmpl $0x3ffffffc, %esi                #  7     0xaf4b1  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                       #  8     0xaf4b7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xaf4b9  4      OPC=movl_r32_m32    
  nop                                   #  10    0xaf4bd  1      OPC=nop             
  nop                                   #  11    0xaf4be  1      OPC=nop             
  nop                                   #  12    0xaf4bf  1      OPC=nop             
  ja .L_af520                           #  13    0xaf4c0  2      OPC=ja_label        
  cmpl %eax, %esi                       #  14    0xaf4c2  2      OPC=cmpl_r32_r32    
  ja .L_af500                           #  15    0xaf4c4  2      OPC=ja_label        
  jb .L_af4e0                           #  16    0xaf4c6  2      OPC=jb_label        
  addl $0x8, %esp                       #  17    0xaf4c8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  18    0xaf4cb  3      OPC=addq_r64_r64    
  popq %r11                             #  19    0xaf4ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xaf4d0  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xaf4d7  1      OPC=nop             
  nop                                   #  22    0xaf4d8  1      OPC=nop             
  nop                                   #  23    0xaf4d9  1      OPC=nop             
  nop                                   #  24    0xaf4da  1      OPC=nop             
  addq %r15, %r11                       #  25    0xaf4db  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xaf4de  3      OPC=jmpq_r64        
  nop                                   #  27    0xaf4e1  1      OPC=nop             
  nop                                   #  28    0xaf4e2  1      OPC=nop             
  nop                                   #  29    0xaf4e3  1      OPC=nop             
  nop                                   #  30    0xaf4e4  1      OPC=nop             
  nop                                   #  31    0xaf4e5  1      OPC=nop             
  nop                                   #  32    0xaf4e6  1      OPC=nop             
.L_af4e0:                               #        0xaf4e7  0      OPC=<label>         
  movl %eax, %edx                       #  33    0xaf4e7  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                       #  34    0xaf4e9  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                       #  35    0xaf4eb  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  36    0xaf4ee  3      OPC=addq_r64_r64    
  subl %esi, %edx                       #  37    0xaf4f1  2      OPC=subl_r32_r32    
  jmpq ._ZNSs9_M_mutateEjjj             #  38    0xaf4f3  5      OPC=jmpq_label_1    
  nop                                   #  39    0xaf4f8  1      OPC=nop             
  nop                                   #  40    0xaf4f9  1      OPC=nop             
  nop                                   #  41    0xaf4fa  1      OPC=nop             
  nop                                   #  42    0xaf4fb  1      OPC=nop             
  nop                                   #  43    0xaf4fc  1      OPC=nop             
  nop                                   #  44    0xaf4fd  1      OPC=nop             
  nop                                   #  45    0xaf4fe  1      OPC=nop             
  nop                                   #  46    0xaf4ff  1      OPC=nop             
  nop                                   #  47    0xaf500  1      OPC=nop             
  nop                                   #  48    0xaf501  1      OPC=nop             
  nop                                   #  49    0xaf502  1      OPC=nop             
  nop                                   #  50    0xaf503  1      OPC=nop             
  nop                                   #  51    0xaf504  1      OPC=nop             
  nop                                   #  52    0xaf505  1      OPC=nop             
  nop                                   #  53    0xaf506  1      OPC=nop             
.L_af500:                               #        0xaf507  0      OPC=<label>         
  movsbl %dl, %edx                      #  54    0xaf507  3      OPC=movsbl_r32_r8   
  subl %eax, %esi                       #  55    0xaf50a  2      OPC=subl_r32_r32    
  addl $0x8, %esp                       #  56    0xaf50c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaf50f  3      OPC=addq_r64_r64    
  jmpq ._ZNSs6appendEjc                 #  58    0xaf512  5      OPC=jmpq_label_1    
  nop                                   #  59    0xaf517  1      OPC=nop             
  nop                                   #  60    0xaf518  1      OPC=nop             
  nop                                   #  61    0xaf519  1      OPC=nop             
  nop                                   #  62    0xaf51a  1      OPC=nop             
  nop                                   #  63    0xaf51b  1      OPC=nop             
  nop                                   #  64    0xaf51c  1      OPC=nop             
  nop                                   #  65    0xaf51d  1      OPC=nop             
  nop                                   #  66    0xaf51e  1      OPC=nop             
  nop                                   #  67    0xaf51f  1      OPC=nop             
  nop                                   #  68    0xaf520  1      OPC=nop             
  nop                                   #  69    0xaf521  1      OPC=nop             
  nop                                   #  70    0xaf522  1      OPC=nop             
  nop                                   #  71    0xaf523  1      OPC=nop             
  nop                                   #  72    0xaf524  1      OPC=nop             
  nop                                   #  73    0xaf525  1      OPC=nop             
  nop                                   #  74    0xaf526  1      OPC=nop             
.L_af520:                               #        0xaf527  0      OPC=<label>         
  movl $0x1003bb88, %edi                #  75    0xaf527  5      OPC=movl_r32_imm32  
  nop                                   #  76    0xaf52c  1      OPC=nop             
  nop                                   #  77    0xaf52d  1      OPC=nop             
  nop                                   #  78    0xaf52e  1      OPC=nop             
  nop                                   #  79    0xaf52f  1      OPC=nop             
  nop                                   #  80    0xaf530  1      OPC=nop             
  nop                                   #  81    0xaf531  1      OPC=nop             
  nop                                   #  82    0xaf532  1      OPC=nop             
  nop                                   #  83    0xaf533  1      OPC=nop             
  nop                                   #  84    0xaf534  1      OPC=nop             
  nop                                   #  85    0xaf535  1      OPC=nop             
  nop                                   #  86    0xaf536  1      OPC=nop             
  nop                                   #  87    0xaf537  1      OPC=nop             
  nop                                   #  88    0xaf538  1      OPC=nop             
  nop                                   #  89    0xaf539  1      OPC=nop             
  nop                                   #  90    0xaf53a  1      OPC=nop             
  nop                                   #  91    0xaf53b  1      OPC=nop             
  nop                                   #  92    0xaf53c  1      OPC=nop             
  nop                                   #  93    0xaf53d  1      OPC=nop             
  nop                                   #  94    0xaf53e  1      OPC=nop             
  nop                                   #  95    0xaf53f  1      OPC=nop             
  nop                                   #  96    0xaf540  1      OPC=nop             
  nop                                   #  97    0xaf541  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  98    0xaf542  5      OPC=callq_label     
                                                                                     
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

