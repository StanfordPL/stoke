  .text
  .globl _ZNSt8numpunctIwED1Ev
  .type _ZNSt8numpunctIwED1Ev, @function

#! file-offset 0x11c440
#! rip-offset  0xdc440
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwED1Ev:            #        0xdc440  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc440  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc441  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc443  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc446  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc449  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc44b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc450  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)  #  8     0xdc452  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc45a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc45d  1      OPC=nop             
  nop                              #  11    0xdc45e  1      OPC=nop             
  nop                              #  12    0xdc45f  1      OPC=nop             
  je .L_dc480                      #  13    0xdc460  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc462  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc464  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc468  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc46a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc46f  1      OPC=nop             
  nop                              #  19    0xdc470  1      OPC=nop             
  nop                              #  20    0xdc471  1      OPC=nop             
  nop                              #  21    0xdc472  1      OPC=nop             
  nop                              #  22    0xdc473  1      OPC=nop             
  nop                              #  23    0xdc474  1      OPC=nop             
  nop                              #  24    0xdc475  1      OPC=nop             
  nop                              #  25    0xdc476  1      OPC=nop             
  nop                              #  26    0xdc477  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc478  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc47e  1      OPC=nop             
  nop                              #  29    0xdc47f  1      OPC=nop             
  nop                              #  30    0xdc480  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc481  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc484  2      OPC=callq_r64       
.L_dc480:                          #        0xdc486  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc486  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc488  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc48b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc48e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc48f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc494  1      OPC=nop             
  nop                              #  39    0xdc495  1      OPC=nop             
  nop                              #  40    0xdc496  1      OPC=nop             
  nop                              #  41    0xdc497  1      OPC=nop             
  nop                              #  42    0xdc498  1      OPC=nop             
  nop                              #  43    0xdc499  1      OPC=nop             
  nop                              #  44    0xdc49a  1      OPC=nop             
  nop                              #  45    0xdc49b  1      OPC=nop             
  nop                              #  46    0xdc49c  1      OPC=nop             
  nop                              #  47    0xdc49d  1      OPC=nop             
  nop                              #  48    0xdc49e  1      OPC=nop             
  nop                              #  49    0xdc49f  1      OPC=nop             
  nop                              #  50    0xdc4a0  1      OPC=nop             
  nop                              #  51    0xdc4a1  1      OPC=nop             
  nop                              #  52    0xdc4a2  1      OPC=nop             
  nop                              #  53    0xdc4a3  1      OPC=nop             
  nop                              #  54    0xdc4a4  1      OPC=nop             
  nop                              #  55    0xdc4a5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc4a6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc4a8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc4ac  1      OPC=nop             
  nop                              #  59    0xdc4ad  1      OPC=nop             
  nop                              #  60    0xdc4ae  1      OPC=nop             
  nop                              #  61    0xdc4af  1      OPC=nop             
  nop                              #  62    0xdc4b0  1      OPC=nop             
  nop                              #  63    0xdc4b1  1      OPC=nop             
  nop                              #  64    0xdc4b2  1      OPC=nop             
  nop                              #  65    0xdc4b3  1      OPC=nop             
  nop                              #  66    0xdc4b4  1      OPC=nop             
  nop                              #  67    0xdc4b5  1      OPC=nop             
  nop                              #  68    0xdc4b6  1      OPC=nop             
  nop                              #  69    0xdc4b7  1      OPC=nop             
  nop                              #  70    0xdc4b8  1      OPC=nop             
  nop                              #  71    0xdc4b9  1      OPC=nop             
  nop                              #  72    0xdc4ba  1      OPC=nop             
  nop                              #  73    0xdc4bb  1      OPC=nop             
  nop                              #  74    0xdc4bc  1      OPC=nop             
  nop                              #  75    0xdc4bd  1      OPC=nop             
  nop                              #  76    0xdc4be  1      OPC=nop             
  nop                              #  77    0xdc4bf  1      OPC=nop             
  nop                              #  78    0xdc4c0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc4c1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc4c6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc4ca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc4cc  1      OPC=nop             
  nop                              #  83    0xdc4cd  1      OPC=nop             
  nop                              #  84    0xdc4ce  1      OPC=nop             
  nop                              #  85    0xdc4cf  1      OPC=nop             
  nop                              #  86    0xdc4d0  1      OPC=nop             
  nop                              #  87    0xdc4d1  1      OPC=nop             
  nop                              #  88    0xdc4d2  1      OPC=nop             
  nop                              #  89    0xdc4d3  1      OPC=nop             
  nop                              #  90    0xdc4d4  1      OPC=nop             
  nop                              #  91    0xdc4d5  1      OPC=nop             
  nop                              #  92    0xdc4d6  1      OPC=nop             
  nop                              #  93    0xdc4d7  1      OPC=nop             
  nop                              #  94    0xdc4d8  1      OPC=nop             
  nop                              #  95    0xdc4d9  1      OPC=nop             
  nop                              #  96    0xdc4da  1      OPC=nop             
  nop                              #  97    0xdc4db  1      OPC=nop             
  nop                              #  98    0xdc4dc  1      OPC=nop             
  nop                              #  99    0xdc4dd  1      OPC=nop             
  nop                              #  100   0xdc4de  1      OPC=nop             
  nop                              #  101   0xdc4df  1      OPC=nop             
  nop                              #  102   0xdc4e0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc4e1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIwED1Ev, .-_ZNSt8numpunctIwED1Ev

