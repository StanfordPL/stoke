  .text
  .globl _ZNSt8numpunctIcED2Ev
  .type _ZNSt8numpunctIcED2Ev, @function

#! file-offset 0x11c620
#! rip-offset  0xdc620
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED2Ev:            #        0xdc620  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc620  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc621  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc623  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc626  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc629  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc62b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc630  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc632  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc63a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc63d  1      OPC=nop             
  nop                              #  11    0xdc63e  1      OPC=nop             
  nop                              #  12    0xdc63f  1      OPC=nop             
  je .L_dc660                      #  13    0xdc640  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc642  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc644  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc648  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc64a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc64f  1      OPC=nop             
  nop                              #  19    0xdc650  1      OPC=nop             
  nop                              #  20    0xdc651  1      OPC=nop             
  nop                              #  21    0xdc652  1      OPC=nop             
  nop                              #  22    0xdc653  1      OPC=nop             
  nop                              #  23    0xdc654  1      OPC=nop             
  nop                              #  24    0xdc655  1      OPC=nop             
  nop                              #  25    0xdc656  1      OPC=nop             
  nop                              #  26    0xdc657  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc658  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc65e  1      OPC=nop             
  nop                              #  29    0xdc65f  1      OPC=nop             
  nop                              #  30    0xdc660  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc661  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc664  2      OPC=callq_r64       
.L_dc660:                          #        0xdc666  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc666  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc668  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc66b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc66e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc66f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc674  1      OPC=nop             
  nop                              #  39    0xdc675  1      OPC=nop             
  nop                              #  40    0xdc676  1      OPC=nop             
  nop                              #  41    0xdc677  1      OPC=nop             
  nop                              #  42    0xdc678  1      OPC=nop             
  nop                              #  43    0xdc679  1      OPC=nop             
  nop                              #  44    0xdc67a  1      OPC=nop             
  nop                              #  45    0xdc67b  1      OPC=nop             
  nop                              #  46    0xdc67c  1      OPC=nop             
  nop                              #  47    0xdc67d  1      OPC=nop             
  nop                              #  48    0xdc67e  1      OPC=nop             
  nop                              #  49    0xdc67f  1      OPC=nop             
  nop                              #  50    0xdc680  1      OPC=nop             
  nop                              #  51    0xdc681  1      OPC=nop             
  nop                              #  52    0xdc682  1      OPC=nop             
  nop                              #  53    0xdc683  1      OPC=nop             
  nop                              #  54    0xdc684  1      OPC=nop             
  nop                              #  55    0xdc685  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc686  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc688  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc68c  1      OPC=nop             
  nop                              #  59    0xdc68d  1      OPC=nop             
  nop                              #  60    0xdc68e  1      OPC=nop             
  nop                              #  61    0xdc68f  1      OPC=nop             
  nop                              #  62    0xdc690  1      OPC=nop             
  nop                              #  63    0xdc691  1      OPC=nop             
  nop                              #  64    0xdc692  1      OPC=nop             
  nop                              #  65    0xdc693  1      OPC=nop             
  nop                              #  66    0xdc694  1      OPC=nop             
  nop                              #  67    0xdc695  1      OPC=nop             
  nop                              #  68    0xdc696  1      OPC=nop             
  nop                              #  69    0xdc697  1      OPC=nop             
  nop                              #  70    0xdc698  1      OPC=nop             
  nop                              #  71    0xdc699  1      OPC=nop             
  nop                              #  72    0xdc69a  1      OPC=nop             
  nop                              #  73    0xdc69b  1      OPC=nop             
  nop                              #  74    0xdc69c  1      OPC=nop             
  nop                              #  75    0xdc69d  1      OPC=nop             
  nop                              #  76    0xdc69e  1      OPC=nop             
  nop                              #  77    0xdc69f  1      OPC=nop             
  nop                              #  78    0xdc6a0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc6a1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc6a6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc6aa  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc6ac  1      OPC=nop             
  nop                              #  83    0xdc6ad  1      OPC=nop             
  nop                              #  84    0xdc6ae  1      OPC=nop             
  nop                              #  85    0xdc6af  1      OPC=nop             
  nop                              #  86    0xdc6b0  1      OPC=nop             
  nop                              #  87    0xdc6b1  1      OPC=nop             
  nop                              #  88    0xdc6b2  1      OPC=nop             
  nop                              #  89    0xdc6b3  1      OPC=nop             
  nop                              #  90    0xdc6b4  1      OPC=nop             
  nop                              #  91    0xdc6b5  1      OPC=nop             
  nop                              #  92    0xdc6b6  1      OPC=nop             
  nop                              #  93    0xdc6b7  1      OPC=nop             
  nop                              #  94    0xdc6b8  1      OPC=nop             
  nop                              #  95    0xdc6b9  1      OPC=nop             
  nop                              #  96    0xdc6ba  1      OPC=nop             
  nop                              #  97    0xdc6bb  1      OPC=nop             
  nop                              #  98    0xdc6bc  1      OPC=nop             
  nop                              #  99    0xdc6bd  1      OPC=nop             
  nop                              #  100   0xdc6be  1      OPC=nop             
  nop                              #  101   0xdc6bf  1      OPC=nop             
  nop                              #  102   0xdc6c0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc6c1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED2Ev, .-_ZNSt8numpunctIcED2Ev

