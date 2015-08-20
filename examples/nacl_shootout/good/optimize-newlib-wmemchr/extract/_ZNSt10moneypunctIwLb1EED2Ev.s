  .text
  .globl _ZNSt10moneypunctIwLb1EED2Ev
  .type _ZNSt10moneypunctIwLb1EED2Ev, @function

#! file-offset 0x11b720
#! rip-offset  0xdb720
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EED2Ev:     #        0xdb720  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb720  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb721  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb723  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb726  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb729  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb72b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb730  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)  #  8     0xdb732  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb73a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb73d  1      OPC=nop             
  nop                              #  11    0xdb73e  1      OPC=nop             
  nop                              #  12    0xdb73f  1      OPC=nop             
  je .L_db760                      #  13    0xdb740  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb742  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb744  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb748  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb74a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb74f  1      OPC=nop             
  nop                              #  19    0xdb750  1      OPC=nop             
  nop                              #  20    0xdb751  1      OPC=nop             
  nop                              #  21    0xdb752  1      OPC=nop             
  nop                              #  22    0xdb753  1      OPC=nop             
  nop                              #  23    0xdb754  1      OPC=nop             
  nop                              #  24    0xdb755  1      OPC=nop             
  nop                              #  25    0xdb756  1      OPC=nop             
  nop                              #  26    0xdb757  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb758  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb75e  1      OPC=nop             
  nop                              #  29    0xdb75f  1      OPC=nop             
  nop                              #  30    0xdb760  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb761  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb764  2      OPC=callq_r64       
.L_db760:                          #        0xdb766  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb766  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb768  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb76b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb76e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb76f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb774  1      OPC=nop             
  nop                              #  39    0xdb775  1      OPC=nop             
  nop                              #  40    0xdb776  1      OPC=nop             
  nop                              #  41    0xdb777  1      OPC=nop             
  nop                              #  42    0xdb778  1      OPC=nop             
  nop                              #  43    0xdb779  1      OPC=nop             
  nop                              #  44    0xdb77a  1      OPC=nop             
  nop                              #  45    0xdb77b  1      OPC=nop             
  nop                              #  46    0xdb77c  1      OPC=nop             
  nop                              #  47    0xdb77d  1      OPC=nop             
  nop                              #  48    0xdb77e  1      OPC=nop             
  nop                              #  49    0xdb77f  1      OPC=nop             
  nop                              #  50    0xdb780  1      OPC=nop             
  nop                              #  51    0xdb781  1      OPC=nop             
  nop                              #  52    0xdb782  1      OPC=nop             
  nop                              #  53    0xdb783  1      OPC=nop             
  nop                              #  54    0xdb784  1      OPC=nop             
  nop                              #  55    0xdb785  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb786  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb788  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb78c  1      OPC=nop             
  nop                              #  59    0xdb78d  1      OPC=nop             
  nop                              #  60    0xdb78e  1      OPC=nop             
  nop                              #  61    0xdb78f  1      OPC=nop             
  nop                              #  62    0xdb790  1      OPC=nop             
  nop                              #  63    0xdb791  1      OPC=nop             
  nop                              #  64    0xdb792  1      OPC=nop             
  nop                              #  65    0xdb793  1      OPC=nop             
  nop                              #  66    0xdb794  1      OPC=nop             
  nop                              #  67    0xdb795  1      OPC=nop             
  nop                              #  68    0xdb796  1      OPC=nop             
  nop                              #  69    0xdb797  1      OPC=nop             
  nop                              #  70    0xdb798  1      OPC=nop             
  nop                              #  71    0xdb799  1      OPC=nop             
  nop                              #  72    0xdb79a  1      OPC=nop             
  nop                              #  73    0xdb79b  1      OPC=nop             
  nop                              #  74    0xdb79c  1      OPC=nop             
  nop                              #  75    0xdb79d  1      OPC=nop             
  nop                              #  76    0xdb79e  1      OPC=nop             
  nop                              #  77    0xdb79f  1      OPC=nop             
  nop                              #  78    0xdb7a0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb7a1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb7a6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb7aa  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb7ac  1      OPC=nop             
  nop                              #  83    0xdb7ad  1      OPC=nop             
  nop                              #  84    0xdb7ae  1      OPC=nop             
  nop                              #  85    0xdb7af  1      OPC=nop             
  nop                              #  86    0xdb7b0  1      OPC=nop             
  nop                              #  87    0xdb7b1  1      OPC=nop             
  nop                              #  88    0xdb7b2  1      OPC=nop             
  nop                              #  89    0xdb7b3  1      OPC=nop             
  nop                              #  90    0xdb7b4  1      OPC=nop             
  nop                              #  91    0xdb7b5  1      OPC=nop             
  nop                              #  92    0xdb7b6  1      OPC=nop             
  nop                              #  93    0xdb7b7  1      OPC=nop             
  nop                              #  94    0xdb7b8  1      OPC=nop             
  nop                              #  95    0xdb7b9  1      OPC=nop             
  nop                              #  96    0xdb7ba  1      OPC=nop             
  nop                              #  97    0xdb7bb  1      OPC=nop             
  nop                              #  98    0xdb7bc  1      OPC=nop             
  nop                              #  99    0xdb7bd  1      OPC=nop             
  nop                              #  100   0xdb7be  1      OPC=nop             
  nop                              #  101   0xdb7bf  1      OPC=nop             
  nop                              #  102   0xdb7c0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb7c1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb1EED2Ev, .-_ZNSt10moneypunctIwLb1EED2Ev

