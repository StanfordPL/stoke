  .text
  .globl _ZNSt10moneypunctIcLb0EED1Ev
  .type _ZNSt10moneypunctIcLb0EED1Ev, @function

#! file-offset 0x11b7c0
#! rip-offset  0xdb7c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EED1Ev:     #        0xdb7c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb7c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb7c1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb7c3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb7c6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb7c9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb7cb  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb7d0  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)  #  8     0xdb7d2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb7da  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb7dd  1      OPC=nop             
  nop                              #  11    0xdb7de  1      OPC=nop             
  nop                              #  12    0xdb7df  1      OPC=nop             
  je .L_db800                      #  13    0xdb7e0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb7e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb7e4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb7e8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb7ea  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb7ef  1      OPC=nop             
  nop                              #  19    0xdb7f0  1      OPC=nop             
  nop                              #  20    0xdb7f1  1      OPC=nop             
  nop                              #  21    0xdb7f2  1      OPC=nop             
  nop                              #  22    0xdb7f3  1      OPC=nop             
  nop                              #  23    0xdb7f4  1      OPC=nop             
  nop                              #  24    0xdb7f5  1      OPC=nop             
  nop                              #  25    0xdb7f6  1      OPC=nop             
  nop                              #  26    0xdb7f7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb7f8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb7fe  1      OPC=nop             
  nop                              #  29    0xdb7ff  1      OPC=nop             
  nop                              #  30    0xdb800  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb801  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb804  2      OPC=callq_r64       
.L_db800:                          #        0xdb806  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb806  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb808  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb80b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb80e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb80f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb814  1      OPC=nop             
  nop                              #  39    0xdb815  1      OPC=nop             
  nop                              #  40    0xdb816  1      OPC=nop             
  nop                              #  41    0xdb817  1      OPC=nop             
  nop                              #  42    0xdb818  1      OPC=nop             
  nop                              #  43    0xdb819  1      OPC=nop             
  nop                              #  44    0xdb81a  1      OPC=nop             
  nop                              #  45    0xdb81b  1      OPC=nop             
  nop                              #  46    0xdb81c  1      OPC=nop             
  nop                              #  47    0xdb81d  1      OPC=nop             
  nop                              #  48    0xdb81e  1      OPC=nop             
  nop                              #  49    0xdb81f  1      OPC=nop             
  nop                              #  50    0xdb820  1      OPC=nop             
  nop                              #  51    0xdb821  1      OPC=nop             
  nop                              #  52    0xdb822  1      OPC=nop             
  nop                              #  53    0xdb823  1      OPC=nop             
  nop                              #  54    0xdb824  1      OPC=nop             
  nop                              #  55    0xdb825  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb826  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb828  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb82c  1      OPC=nop             
  nop                              #  59    0xdb82d  1      OPC=nop             
  nop                              #  60    0xdb82e  1      OPC=nop             
  nop                              #  61    0xdb82f  1      OPC=nop             
  nop                              #  62    0xdb830  1      OPC=nop             
  nop                              #  63    0xdb831  1      OPC=nop             
  nop                              #  64    0xdb832  1      OPC=nop             
  nop                              #  65    0xdb833  1      OPC=nop             
  nop                              #  66    0xdb834  1      OPC=nop             
  nop                              #  67    0xdb835  1      OPC=nop             
  nop                              #  68    0xdb836  1      OPC=nop             
  nop                              #  69    0xdb837  1      OPC=nop             
  nop                              #  70    0xdb838  1      OPC=nop             
  nop                              #  71    0xdb839  1      OPC=nop             
  nop                              #  72    0xdb83a  1      OPC=nop             
  nop                              #  73    0xdb83b  1      OPC=nop             
  nop                              #  74    0xdb83c  1      OPC=nop             
  nop                              #  75    0xdb83d  1      OPC=nop             
  nop                              #  76    0xdb83e  1      OPC=nop             
  nop                              #  77    0xdb83f  1      OPC=nop             
  nop                              #  78    0xdb840  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb841  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb846  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb84a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb84c  1      OPC=nop             
  nop                              #  83    0xdb84d  1      OPC=nop             
  nop                              #  84    0xdb84e  1      OPC=nop             
  nop                              #  85    0xdb84f  1      OPC=nop             
  nop                              #  86    0xdb850  1      OPC=nop             
  nop                              #  87    0xdb851  1      OPC=nop             
  nop                              #  88    0xdb852  1      OPC=nop             
  nop                              #  89    0xdb853  1      OPC=nop             
  nop                              #  90    0xdb854  1      OPC=nop             
  nop                              #  91    0xdb855  1      OPC=nop             
  nop                              #  92    0xdb856  1      OPC=nop             
  nop                              #  93    0xdb857  1      OPC=nop             
  nop                              #  94    0xdb858  1      OPC=nop             
  nop                              #  95    0xdb859  1      OPC=nop             
  nop                              #  96    0xdb85a  1      OPC=nop             
  nop                              #  97    0xdb85b  1      OPC=nop             
  nop                              #  98    0xdb85c  1      OPC=nop             
  nop                              #  99    0xdb85d  1      OPC=nop             
  nop                              #  100   0xdb85e  1      OPC=nop             
  nop                              #  101   0xdb85f  1      OPC=nop             
  nop                              #  102   0xdb860  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb861  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb0EED1Ev, .-_ZNSt10moneypunctIcLb0EED1Ev

