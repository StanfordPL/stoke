  .text
  .globl _ZNSt10moneypunctIwLb1EED1Ev
  .type _ZNSt10moneypunctIwLb1EED1Ev, @function

#! file-offset 0x11b380
#! rip-offset  0xdb380
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EED1Ev:     #        0xdb380  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb380  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb381  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb383  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb386  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb389  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb38b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb390  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)  #  8     0xdb392  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb39a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb39d  1      OPC=nop             
  nop                              #  11    0xdb39e  1      OPC=nop             
  nop                              #  12    0xdb39f  1      OPC=nop             
  je .L_db3c0                      #  13    0xdb3a0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb3a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb3a4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb3a8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb3aa  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb3af  1      OPC=nop             
  nop                              #  19    0xdb3b0  1      OPC=nop             
  nop                              #  20    0xdb3b1  1      OPC=nop             
  nop                              #  21    0xdb3b2  1      OPC=nop             
  nop                              #  22    0xdb3b3  1      OPC=nop             
  nop                              #  23    0xdb3b4  1      OPC=nop             
  nop                              #  24    0xdb3b5  1      OPC=nop             
  nop                              #  25    0xdb3b6  1      OPC=nop             
  nop                              #  26    0xdb3b7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb3b8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb3be  1      OPC=nop             
  nop                              #  29    0xdb3bf  1      OPC=nop             
  nop                              #  30    0xdb3c0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb3c1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb3c4  2      OPC=callq_r64       
.L_db3c0:                          #        0xdb3c6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb3c6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb3c8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb3cb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb3ce  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb3cf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb3d4  1      OPC=nop             
  nop                              #  39    0xdb3d5  1      OPC=nop             
  nop                              #  40    0xdb3d6  1      OPC=nop             
  nop                              #  41    0xdb3d7  1      OPC=nop             
  nop                              #  42    0xdb3d8  1      OPC=nop             
  nop                              #  43    0xdb3d9  1      OPC=nop             
  nop                              #  44    0xdb3da  1      OPC=nop             
  nop                              #  45    0xdb3db  1      OPC=nop             
  nop                              #  46    0xdb3dc  1      OPC=nop             
  nop                              #  47    0xdb3dd  1      OPC=nop             
  nop                              #  48    0xdb3de  1      OPC=nop             
  nop                              #  49    0xdb3df  1      OPC=nop             
  nop                              #  50    0xdb3e0  1      OPC=nop             
  nop                              #  51    0xdb3e1  1      OPC=nop             
  nop                              #  52    0xdb3e2  1      OPC=nop             
  nop                              #  53    0xdb3e3  1      OPC=nop             
  nop                              #  54    0xdb3e4  1      OPC=nop             
  nop                              #  55    0xdb3e5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb3e6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb3e8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb3ec  1      OPC=nop             
  nop                              #  59    0xdb3ed  1      OPC=nop             
  nop                              #  60    0xdb3ee  1      OPC=nop             
  nop                              #  61    0xdb3ef  1      OPC=nop             
  nop                              #  62    0xdb3f0  1      OPC=nop             
  nop                              #  63    0xdb3f1  1      OPC=nop             
  nop                              #  64    0xdb3f2  1      OPC=nop             
  nop                              #  65    0xdb3f3  1      OPC=nop             
  nop                              #  66    0xdb3f4  1      OPC=nop             
  nop                              #  67    0xdb3f5  1      OPC=nop             
  nop                              #  68    0xdb3f6  1      OPC=nop             
  nop                              #  69    0xdb3f7  1      OPC=nop             
  nop                              #  70    0xdb3f8  1      OPC=nop             
  nop                              #  71    0xdb3f9  1      OPC=nop             
  nop                              #  72    0xdb3fa  1      OPC=nop             
  nop                              #  73    0xdb3fb  1      OPC=nop             
  nop                              #  74    0xdb3fc  1      OPC=nop             
  nop                              #  75    0xdb3fd  1      OPC=nop             
  nop                              #  76    0xdb3fe  1      OPC=nop             
  nop                              #  77    0xdb3ff  1      OPC=nop             
  nop                              #  78    0xdb400  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb401  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb406  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb40a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb40c  1      OPC=nop             
  nop                              #  83    0xdb40d  1      OPC=nop             
  nop                              #  84    0xdb40e  1      OPC=nop             
  nop                              #  85    0xdb40f  1      OPC=nop             
  nop                              #  86    0xdb410  1      OPC=nop             
  nop                              #  87    0xdb411  1      OPC=nop             
  nop                              #  88    0xdb412  1      OPC=nop             
  nop                              #  89    0xdb413  1      OPC=nop             
  nop                              #  90    0xdb414  1      OPC=nop             
  nop                              #  91    0xdb415  1      OPC=nop             
  nop                              #  92    0xdb416  1      OPC=nop             
  nop                              #  93    0xdb417  1      OPC=nop             
  nop                              #  94    0xdb418  1      OPC=nop             
  nop                              #  95    0xdb419  1      OPC=nop             
  nop                              #  96    0xdb41a  1      OPC=nop             
  nop                              #  97    0xdb41b  1      OPC=nop             
  nop                              #  98    0xdb41c  1      OPC=nop             
  nop                              #  99    0xdb41d  1      OPC=nop             
  nop                              #  100   0xdb41e  1      OPC=nop             
  nop                              #  101   0xdb41f  1      OPC=nop             
  nop                              #  102   0xdb420  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb421  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb1EED1Ev, .-_ZNSt10moneypunctIwLb1EED1Ev

