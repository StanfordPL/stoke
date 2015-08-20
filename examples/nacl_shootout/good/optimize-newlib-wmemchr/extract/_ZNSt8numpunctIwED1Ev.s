  .text
  .globl _ZNSt8numpunctIwED1Ev
  .type _ZNSt8numpunctIwED1Ev, @function

#! file-offset 0x11c740
#! rip-offset  0xdc740
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED1Ev:            #        0xdc740  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc740  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc741  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc743  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc746  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc749  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc74b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc750  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdc752  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc75a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc75d  1      OPC=nop             
  nop                              #  11    0xdc75e  1      OPC=nop             
  nop                              #  12    0xdc75f  1      OPC=nop             
  je .L_dc780                      #  13    0xdc760  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc762  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc764  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc768  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc76a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc76f  1      OPC=nop             
  nop                              #  19    0xdc770  1      OPC=nop             
  nop                              #  20    0xdc771  1      OPC=nop             
  nop                              #  21    0xdc772  1      OPC=nop             
  nop                              #  22    0xdc773  1      OPC=nop             
  nop                              #  23    0xdc774  1      OPC=nop             
  nop                              #  24    0xdc775  1      OPC=nop             
  nop                              #  25    0xdc776  1      OPC=nop             
  nop                              #  26    0xdc777  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc778  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc77e  1      OPC=nop             
  nop                              #  29    0xdc77f  1      OPC=nop             
  nop                              #  30    0xdc780  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc781  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc784  2      OPC=callq_r64       
.L_dc780:                          #        0xdc786  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc786  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc788  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc78b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc78e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc78f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc794  1      OPC=nop             
  nop                              #  39    0xdc795  1      OPC=nop             
  nop                              #  40    0xdc796  1      OPC=nop             
  nop                              #  41    0xdc797  1      OPC=nop             
  nop                              #  42    0xdc798  1      OPC=nop             
  nop                              #  43    0xdc799  1      OPC=nop             
  nop                              #  44    0xdc79a  1      OPC=nop             
  nop                              #  45    0xdc79b  1      OPC=nop             
  nop                              #  46    0xdc79c  1      OPC=nop             
  nop                              #  47    0xdc79d  1      OPC=nop             
  nop                              #  48    0xdc79e  1      OPC=nop             
  nop                              #  49    0xdc79f  1      OPC=nop             
  nop                              #  50    0xdc7a0  1      OPC=nop             
  nop                              #  51    0xdc7a1  1      OPC=nop             
  nop                              #  52    0xdc7a2  1      OPC=nop             
  nop                              #  53    0xdc7a3  1      OPC=nop             
  nop                              #  54    0xdc7a4  1      OPC=nop             
  nop                              #  55    0xdc7a5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc7a6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc7a8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc7ac  1      OPC=nop             
  nop                              #  59    0xdc7ad  1      OPC=nop             
  nop                              #  60    0xdc7ae  1      OPC=nop             
  nop                              #  61    0xdc7af  1      OPC=nop             
  nop                              #  62    0xdc7b0  1      OPC=nop             
  nop                              #  63    0xdc7b1  1      OPC=nop             
  nop                              #  64    0xdc7b2  1      OPC=nop             
  nop                              #  65    0xdc7b3  1      OPC=nop             
  nop                              #  66    0xdc7b4  1      OPC=nop             
  nop                              #  67    0xdc7b5  1      OPC=nop             
  nop                              #  68    0xdc7b6  1      OPC=nop             
  nop                              #  69    0xdc7b7  1      OPC=nop             
  nop                              #  70    0xdc7b8  1      OPC=nop             
  nop                              #  71    0xdc7b9  1      OPC=nop             
  nop                              #  72    0xdc7ba  1      OPC=nop             
  nop                              #  73    0xdc7bb  1      OPC=nop             
  nop                              #  74    0xdc7bc  1      OPC=nop             
  nop                              #  75    0xdc7bd  1      OPC=nop             
  nop                              #  76    0xdc7be  1      OPC=nop             
  nop                              #  77    0xdc7bf  1      OPC=nop             
  nop                              #  78    0xdc7c0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc7c1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc7c6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc7ca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc7cc  1      OPC=nop             
  nop                              #  83    0xdc7cd  1      OPC=nop             
  nop                              #  84    0xdc7ce  1      OPC=nop             
  nop                              #  85    0xdc7cf  1      OPC=nop             
  nop                              #  86    0xdc7d0  1      OPC=nop             
  nop                              #  87    0xdc7d1  1      OPC=nop             
  nop                              #  88    0xdc7d2  1      OPC=nop             
  nop                              #  89    0xdc7d3  1      OPC=nop             
  nop                              #  90    0xdc7d4  1      OPC=nop             
  nop                              #  91    0xdc7d5  1      OPC=nop             
  nop                              #  92    0xdc7d6  1      OPC=nop             
  nop                              #  93    0xdc7d7  1      OPC=nop             
  nop                              #  94    0xdc7d8  1      OPC=nop             
  nop                              #  95    0xdc7d9  1      OPC=nop             
  nop                              #  96    0xdc7da  1      OPC=nop             
  nop                              #  97    0xdc7db  1      OPC=nop             
  nop                              #  98    0xdc7dc  1      OPC=nop             
  nop                              #  99    0xdc7dd  1      OPC=nop             
  nop                              #  100   0xdc7de  1      OPC=nop             
  nop                              #  101   0xdc7df  1      OPC=nop             
  nop                              #  102   0xdc7e0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc7e1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED1Ev, .-_ZNSt8numpunctIwED1Ev

