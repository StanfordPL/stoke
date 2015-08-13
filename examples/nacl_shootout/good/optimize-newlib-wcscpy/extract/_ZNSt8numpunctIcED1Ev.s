  .text
  .globl _ZNSt8numpunctIcED1Ev
  .type _ZNSt8numpunctIcED1Ev, @function

#! file-offset 0x11c580
#! rip-offset  0xdc580
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED1Ev:            #        0xdc580  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc580  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc581  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc583  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc586  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc589  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc58b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc590  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc592  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc59a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc59d  1      OPC=nop             
  nop                              #  11    0xdc59e  1      OPC=nop             
  nop                              #  12    0xdc59f  1      OPC=nop             
  je .L_dc5c0                      #  13    0xdc5a0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc5a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc5a4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc5a8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc5aa  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc5af  1      OPC=nop             
  nop                              #  19    0xdc5b0  1      OPC=nop             
  nop                              #  20    0xdc5b1  1      OPC=nop             
  nop                              #  21    0xdc5b2  1      OPC=nop             
  nop                              #  22    0xdc5b3  1      OPC=nop             
  nop                              #  23    0xdc5b4  1      OPC=nop             
  nop                              #  24    0xdc5b5  1      OPC=nop             
  nop                              #  25    0xdc5b6  1      OPC=nop             
  nop                              #  26    0xdc5b7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc5b8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc5be  1      OPC=nop             
  nop                              #  29    0xdc5bf  1      OPC=nop             
  nop                              #  30    0xdc5c0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc5c1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc5c4  2      OPC=callq_r64       
.L_dc5c0:                          #        0xdc5c6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc5c6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc5c8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc5cb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc5ce  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc5cf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc5d4  1      OPC=nop             
  nop                              #  39    0xdc5d5  1      OPC=nop             
  nop                              #  40    0xdc5d6  1      OPC=nop             
  nop                              #  41    0xdc5d7  1      OPC=nop             
  nop                              #  42    0xdc5d8  1      OPC=nop             
  nop                              #  43    0xdc5d9  1      OPC=nop             
  nop                              #  44    0xdc5da  1      OPC=nop             
  nop                              #  45    0xdc5db  1      OPC=nop             
  nop                              #  46    0xdc5dc  1      OPC=nop             
  nop                              #  47    0xdc5dd  1      OPC=nop             
  nop                              #  48    0xdc5de  1      OPC=nop             
  nop                              #  49    0xdc5df  1      OPC=nop             
  nop                              #  50    0xdc5e0  1      OPC=nop             
  nop                              #  51    0xdc5e1  1      OPC=nop             
  nop                              #  52    0xdc5e2  1      OPC=nop             
  nop                              #  53    0xdc5e3  1      OPC=nop             
  nop                              #  54    0xdc5e4  1      OPC=nop             
  nop                              #  55    0xdc5e5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc5e6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc5e8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc5ec  1      OPC=nop             
  nop                              #  59    0xdc5ed  1      OPC=nop             
  nop                              #  60    0xdc5ee  1      OPC=nop             
  nop                              #  61    0xdc5ef  1      OPC=nop             
  nop                              #  62    0xdc5f0  1      OPC=nop             
  nop                              #  63    0xdc5f1  1      OPC=nop             
  nop                              #  64    0xdc5f2  1      OPC=nop             
  nop                              #  65    0xdc5f3  1      OPC=nop             
  nop                              #  66    0xdc5f4  1      OPC=nop             
  nop                              #  67    0xdc5f5  1      OPC=nop             
  nop                              #  68    0xdc5f6  1      OPC=nop             
  nop                              #  69    0xdc5f7  1      OPC=nop             
  nop                              #  70    0xdc5f8  1      OPC=nop             
  nop                              #  71    0xdc5f9  1      OPC=nop             
  nop                              #  72    0xdc5fa  1      OPC=nop             
  nop                              #  73    0xdc5fb  1      OPC=nop             
  nop                              #  74    0xdc5fc  1      OPC=nop             
  nop                              #  75    0xdc5fd  1      OPC=nop             
  nop                              #  76    0xdc5fe  1      OPC=nop             
  nop                              #  77    0xdc5ff  1      OPC=nop             
  nop                              #  78    0xdc600  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc601  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc606  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc60a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc60c  1      OPC=nop             
  nop                              #  83    0xdc60d  1      OPC=nop             
  nop                              #  84    0xdc60e  1      OPC=nop             
  nop                              #  85    0xdc60f  1      OPC=nop             
  nop                              #  86    0xdc610  1      OPC=nop             
  nop                              #  87    0xdc611  1      OPC=nop             
  nop                              #  88    0xdc612  1      OPC=nop             
  nop                              #  89    0xdc613  1      OPC=nop             
  nop                              #  90    0xdc614  1      OPC=nop             
  nop                              #  91    0xdc615  1      OPC=nop             
  nop                              #  92    0xdc616  1      OPC=nop             
  nop                              #  93    0xdc617  1      OPC=nop             
  nop                              #  94    0xdc618  1      OPC=nop             
  nop                              #  95    0xdc619  1      OPC=nop             
  nop                              #  96    0xdc61a  1      OPC=nop             
  nop                              #  97    0xdc61b  1      OPC=nop             
  nop                              #  98    0xdc61c  1      OPC=nop             
  nop                              #  99    0xdc61d  1      OPC=nop             
  nop                              #  100   0xdc61e  1      OPC=nop             
  nop                              #  101   0xdc61f  1      OPC=nop             
  nop                              #  102   0xdc620  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc621  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED1Ev, .-_ZNSt8numpunctIcED1Ev

