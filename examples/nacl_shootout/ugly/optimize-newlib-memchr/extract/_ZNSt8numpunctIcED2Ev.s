  .text
  .globl _ZNSt8numpunctIcED2Ev
  .type _ZNSt8numpunctIcED2Ev, @function

#! file-offset 0x11d040
#! rip-offset  0xdd040
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED2Ev:            #        0xdd040  0      OPC=<label>         
  pushq %rbx                       #  1     0xdd040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdd041  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdd043  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdd046  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdd049  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdd04b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdd050  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdd052  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdd05a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdd05d  1      OPC=nop             
  nop                              #  11    0xdd05e  1      OPC=nop             
  nop                              #  12    0xdd05f  1      OPC=nop             
  je .L_dd080                      #  13    0xdd060  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdd062  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdd064  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdd068  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdd06a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdd06f  1      OPC=nop             
  nop                              #  19    0xdd070  1      OPC=nop             
  nop                              #  20    0xdd071  1      OPC=nop             
  nop                              #  21    0xdd072  1      OPC=nop             
  nop                              #  22    0xdd073  1      OPC=nop             
  nop                              #  23    0xdd074  1      OPC=nop             
  nop                              #  24    0xdd075  1      OPC=nop             
  nop                              #  25    0xdd076  1      OPC=nop             
  nop                              #  26    0xdd077  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdd078  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdd07e  1      OPC=nop             
  nop                              #  29    0xdd07f  1      OPC=nop             
  nop                              #  30    0xdd080  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdd081  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdd084  2      OPC=callq_r64       
.L_dd080:                          #        0xdd086  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdd086  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdd088  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdd08b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdd08e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdd08f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdd094  1      OPC=nop             
  nop                              #  39    0xdd095  1      OPC=nop             
  nop                              #  40    0xdd096  1      OPC=nop             
  nop                              #  41    0xdd097  1      OPC=nop             
  nop                              #  42    0xdd098  1      OPC=nop             
  nop                              #  43    0xdd099  1      OPC=nop             
  nop                              #  44    0xdd09a  1      OPC=nop             
  nop                              #  45    0xdd09b  1      OPC=nop             
  nop                              #  46    0xdd09c  1      OPC=nop             
  nop                              #  47    0xdd09d  1      OPC=nop             
  nop                              #  48    0xdd09e  1      OPC=nop             
  nop                              #  49    0xdd09f  1      OPC=nop             
  nop                              #  50    0xdd0a0  1      OPC=nop             
  nop                              #  51    0xdd0a1  1      OPC=nop             
  nop                              #  52    0xdd0a2  1      OPC=nop             
  nop                              #  53    0xdd0a3  1      OPC=nop             
  nop                              #  54    0xdd0a4  1      OPC=nop             
  nop                              #  55    0xdd0a5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdd0a6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdd0a8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdd0ac  1      OPC=nop             
  nop                              #  59    0xdd0ad  1      OPC=nop             
  nop                              #  60    0xdd0ae  1      OPC=nop             
  nop                              #  61    0xdd0af  1      OPC=nop             
  nop                              #  62    0xdd0b0  1      OPC=nop             
  nop                              #  63    0xdd0b1  1      OPC=nop             
  nop                              #  64    0xdd0b2  1      OPC=nop             
  nop                              #  65    0xdd0b3  1      OPC=nop             
  nop                              #  66    0xdd0b4  1      OPC=nop             
  nop                              #  67    0xdd0b5  1      OPC=nop             
  nop                              #  68    0xdd0b6  1      OPC=nop             
  nop                              #  69    0xdd0b7  1      OPC=nop             
  nop                              #  70    0xdd0b8  1      OPC=nop             
  nop                              #  71    0xdd0b9  1      OPC=nop             
  nop                              #  72    0xdd0ba  1      OPC=nop             
  nop                              #  73    0xdd0bb  1      OPC=nop             
  nop                              #  74    0xdd0bc  1      OPC=nop             
  nop                              #  75    0xdd0bd  1      OPC=nop             
  nop                              #  76    0xdd0be  1      OPC=nop             
  nop                              #  77    0xdd0bf  1      OPC=nop             
  nop                              #  78    0xdd0c0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdd0c1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdd0c6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdd0ca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdd0cc  1      OPC=nop             
  nop                              #  83    0xdd0cd  1      OPC=nop             
  nop                              #  84    0xdd0ce  1      OPC=nop             
  nop                              #  85    0xdd0cf  1      OPC=nop             
  nop                              #  86    0xdd0d0  1      OPC=nop             
  nop                              #  87    0xdd0d1  1      OPC=nop             
  nop                              #  88    0xdd0d2  1      OPC=nop             
  nop                              #  89    0xdd0d3  1      OPC=nop             
  nop                              #  90    0xdd0d4  1      OPC=nop             
  nop                              #  91    0xdd0d5  1      OPC=nop             
  nop                              #  92    0xdd0d6  1      OPC=nop             
  nop                              #  93    0xdd0d7  1      OPC=nop             
  nop                              #  94    0xdd0d8  1      OPC=nop             
  nop                              #  95    0xdd0d9  1      OPC=nop             
  nop                              #  96    0xdd0da  1      OPC=nop             
  nop                              #  97    0xdd0db  1      OPC=nop             
  nop                              #  98    0xdd0dc  1      OPC=nop             
  nop                              #  99    0xdd0dd  1      OPC=nop             
  nop                              #  100   0xdd0de  1      OPC=nop             
  nop                              #  101   0xdd0df  1      OPC=nop             
  nop                              #  102   0xdd0e0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdd0e1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED2Ev, .-_ZNSt8numpunctIcED2Ev

