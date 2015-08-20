  .text
  .globl _ZNSt10moneypunctIwLb0EED2Ev
  .type _ZNSt10moneypunctIwLb0EED2Ev, @function

#! file-offset 0x11b5e0
#! rip-offset  0xdb5e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED2Ev:     #        0xdb5e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb5e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb5e1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb5e3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb5e6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb5e9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb5eb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb5f0  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdb5f2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb5fa  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb5fd  1      OPC=nop             
  nop                              #  11    0xdb5fe  1      OPC=nop             
  nop                              #  12    0xdb5ff  1      OPC=nop             
  je .L_db620                      #  13    0xdb600  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb602  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb604  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb608  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb60a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb60f  1      OPC=nop             
  nop                              #  19    0xdb610  1      OPC=nop             
  nop                              #  20    0xdb611  1      OPC=nop             
  nop                              #  21    0xdb612  1      OPC=nop             
  nop                              #  22    0xdb613  1      OPC=nop             
  nop                              #  23    0xdb614  1      OPC=nop             
  nop                              #  24    0xdb615  1      OPC=nop             
  nop                              #  25    0xdb616  1      OPC=nop             
  nop                              #  26    0xdb617  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb618  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb61e  1      OPC=nop             
  nop                              #  29    0xdb61f  1      OPC=nop             
  nop                              #  30    0xdb620  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb621  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb624  2      OPC=callq_r64       
.L_db620:                          #        0xdb626  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb626  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb628  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb62b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb62e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb62f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb634  1      OPC=nop             
  nop                              #  39    0xdb635  1      OPC=nop             
  nop                              #  40    0xdb636  1      OPC=nop             
  nop                              #  41    0xdb637  1      OPC=nop             
  nop                              #  42    0xdb638  1      OPC=nop             
  nop                              #  43    0xdb639  1      OPC=nop             
  nop                              #  44    0xdb63a  1      OPC=nop             
  nop                              #  45    0xdb63b  1      OPC=nop             
  nop                              #  46    0xdb63c  1      OPC=nop             
  nop                              #  47    0xdb63d  1      OPC=nop             
  nop                              #  48    0xdb63e  1      OPC=nop             
  nop                              #  49    0xdb63f  1      OPC=nop             
  nop                              #  50    0xdb640  1      OPC=nop             
  nop                              #  51    0xdb641  1      OPC=nop             
  nop                              #  52    0xdb642  1      OPC=nop             
  nop                              #  53    0xdb643  1      OPC=nop             
  nop                              #  54    0xdb644  1      OPC=nop             
  nop                              #  55    0xdb645  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb646  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb648  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb64c  1      OPC=nop             
  nop                              #  59    0xdb64d  1      OPC=nop             
  nop                              #  60    0xdb64e  1      OPC=nop             
  nop                              #  61    0xdb64f  1      OPC=nop             
  nop                              #  62    0xdb650  1      OPC=nop             
  nop                              #  63    0xdb651  1      OPC=nop             
  nop                              #  64    0xdb652  1      OPC=nop             
  nop                              #  65    0xdb653  1      OPC=nop             
  nop                              #  66    0xdb654  1      OPC=nop             
  nop                              #  67    0xdb655  1      OPC=nop             
  nop                              #  68    0xdb656  1      OPC=nop             
  nop                              #  69    0xdb657  1      OPC=nop             
  nop                              #  70    0xdb658  1      OPC=nop             
  nop                              #  71    0xdb659  1      OPC=nop             
  nop                              #  72    0xdb65a  1      OPC=nop             
  nop                              #  73    0xdb65b  1      OPC=nop             
  nop                              #  74    0xdb65c  1      OPC=nop             
  nop                              #  75    0xdb65d  1      OPC=nop             
  nop                              #  76    0xdb65e  1      OPC=nop             
  nop                              #  77    0xdb65f  1      OPC=nop             
  nop                              #  78    0xdb660  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb661  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb666  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb66a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb66c  1      OPC=nop             
  nop                              #  83    0xdb66d  1      OPC=nop             
  nop                              #  84    0xdb66e  1      OPC=nop             
  nop                              #  85    0xdb66f  1      OPC=nop             
  nop                              #  86    0xdb670  1      OPC=nop             
  nop                              #  87    0xdb671  1      OPC=nop             
  nop                              #  88    0xdb672  1      OPC=nop             
  nop                              #  89    0xdb673  1      OPC=nop             
  nop                              #  90    0xdb674  1      OPC=nop             
  nop                              #  91    0xdb675  1      OPC=nop             
  nop                              #  92    0xdb676  1      OPC=nop             
  nop                              #  93    0xdb677  1      OPC=nop             
  nop                              #  94    0xdb678  1      OPC=nop             
  nop                              #  95    0xdb679  1      OPC=nop             
  nop                              #  96    0xdb67a  1      OPC=nop             
  nop                              #  97    0xdb67b  1      OPC=nop             
  nop                              #  98    0xdb67c  1      OPC=nop             
  nop                              #  99    0xdb67d  1      OPC=nop             
  nop                              #  100   0xdb67e  1      OPC=nop             
  nop                              #  101   0xdb67f  1      OPC=nop             
  nop                              #  102   0xdb680  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb681  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED2Ev, .-_ZNSt10moneypunctIwLb0EED2Ev

