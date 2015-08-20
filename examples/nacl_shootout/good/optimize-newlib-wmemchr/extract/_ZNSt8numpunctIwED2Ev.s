  .text
  .globl _ZNSt8numpunctIwED2Ev
  .type _ZNSt8numpunctIwED2Ev, @function

#! file-offset 0x11c7e0
#! rip-offset  0xdc7e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED2Ev:            #        0xdc7e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc7e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc7e1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc7e3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc7e6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc7e9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc7eb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc7f0  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdc7f2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc7fa  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc7fd  1      OPC=nop             
  nop                              #  11    0xdc7fe  1      OPC=nop             
  nop                              #  12    0xdc7ff  1      OPC=nop             
  je .L_dc820                      #  13    0xdc800  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc802  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc804  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc808  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc80a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc80f  1      OPC=nop             
  nop                              #  19    0xdc810  1      OPC=nop             
  nop                              #  20    0xdc811  1      OPC=nop             
  nop                              #  21    0xdc812  1      OPC=nop             
  nop                              #  22    0xdc813  1      OPC=nop             
  nop                              #  23    0xdc814  1      OPC=nop             
  nop                              #  24    0xdc815  1      OPC=nop             
  nop                              #  25    0xdc816  1      OPC=nop             
  nop                              #  26    0xdc817  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc818  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc81e  1      OPC=nop             
  nop                              #  29    0xdc81f  1      OPC=nop             
  nop                              #  30    0xdc820  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc821  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc824  2      OPC=callq_r64       
.L_dc820:                          #        0xdc826  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc826  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc828  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc82b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc82e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc82f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc834  1      OPC=nop             
  nop                              #  39    0xdc835  1      OPC=nop             
  nop                              #  40    0xdc836  1      OPC=nop             
  nop                              #  41    0xdc837  1      OPC=nop             
  nop                              #  42    0xdc838  1      OPC=nop             
  nop                              #  43    0xdc839  1      OPC=nop             
  nop                              #  44    0xdc83a  1      OPC=nop             
  nop                              #  45    0xdc83b  1      OPC=nop             
  nop                              #  46    0xdc83c  1      OPC=nop             
  nop                              #  47    0xdc83d  1      OPC=nop             
  nop                              #  48    0xdc83e  1      OPC=nop             
  nop                              #  49    0xdc83f  1      OPC=nop             
  nop                              #  50    0xdc840  1      OPC=nop             
  nop                              #  51    0xdc841  1      OPC=nop             
  nop                              #  52    0xdc842  1      OPC=nop             
  nop                              #  53    0xdc843  1      OPC=nop             
  nop                              #  54    0xdc844  1      OPC=nop             
  nop                              #  55    0xdc845  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc846  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc848  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc84c  1      OPC=nop             
  nop                              #  59    0xdc84d  1      OPC=nop             
  nop                              #  60    0xdc84e  1      OPC=nop             
  nop                              #  61    0xdc84f  1      OPC=nop             
  nop                              #  62    0xdc850  1      OPC=nop             
  nop                              #  63    0xdc851  1      OPC=nop             
  nop                              #  64    0xdc852  1      OPC=nop             
  nop                              #  65    0xdc853  1      OPC=nop             
  nop                              #  66    0xdc854  1      OPC=nop             
  nop                              #  67    0xdc855  1      OPC=nop             
  nop                              #  68    0xdc856  1      OPC=nop             
  nop                              #  69    0xdc857  1      OPC=nop             
  nop                              #  70    0xdc858  1      OPC=nop             
  nop                              #  71    0xdc859  1      OPC=nop             
  nop                              #  72    0xdc85a  1      OPC=nop             
  nop                              #  73    0xdc85b  1      OPC=nop             
  nop                              #  74    0xdc85c  1      OPC=nop             
  nop                              #  75    0xdc85d  1      OPC=nop             
  nop                              #  76    0xdc85e  1      OPC=nop             
  nop                              #  77    0xdc85f  1      OPC=nop             
  nop                              #  78    0xdc860  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc861  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc866  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc86a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc86c  1      OPC=nop             
  nop                              #  83    0xdc86d  1      OPC=nop             
  nop                              #  84    0xdc86e  1      OPC=nop             
  nop                              #  85    0xdc86f  1      OPC=nop             
  nop                              #  86    0xdc870  1      OPC=nop             
  nop                              #  87    0xdc871  1      OPC=nop             
  nop                              #  88    0xdc872  1      OPC=nop             
  nop                              #  89    0xdc873  1      OPC=nop             
  nop                              #  90    0xdc874  1      OPC=nop             
  nop                              #  91    0xdc875  1      OPC=nop             
  nop                              #  92    0xdc876  1      OPC=nop             
  nop                              #  93    0xdc877  1      OPC=nop             
  nop                              #  94    0xdc878  1      OPC=nop             
  nop                              #  95    0xdc879  1      OPC=nop             
  nop                              #  96    0xdc87a  1      OPC=nop             
  nop                              #  97    0xdc87b  1      OPC=nop             
  nop                              #  98    0xdc87c  1      OPC=nop             
  nop                              #  99    0xdc87d  1      OPC=nop             
  nop                              #  100   0xdc87e  1      OPC=nop             
  nop                              #  101   0xdc87f  1      OPC=nop             
  nop                              #  102   0xdc880  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc881  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED2Ev, .-_ZNSt8numpunctIwED2Ev

