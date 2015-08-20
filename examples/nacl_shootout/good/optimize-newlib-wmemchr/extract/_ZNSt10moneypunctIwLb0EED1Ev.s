  .text
  .globl _ZNSt10moneypunctIwLb0EED1Ev
  .type _ZNSt10moneypunctIwLb0EED1Ev, @function

#! file-offset 0x11b540
#! rip-offset  0xdb540
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED1Ev:     #        0xdb540  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb540  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb541  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb543  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb546  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb549  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb54b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb550  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdb552  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb55a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb55d  1      OPC=nop             
  nop                              #  11    0xdb55e  1      OPC=nop             
  nop                              #  12    0xdb55f  1      OPC=nop             
  je .L_db580                      #  13    0xdb560  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb562  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb564  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb568  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb56a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb56f  1      OPC=nop             
  nop                              #  19    0xdb570  1      OPC=nop             
  nop                              #  20    0xdb571  1      OPC=nop             
  nop                              #  21    0xdb572  1      OPC=nop             
  nop                              #  22    0xdb573  1      OPC=nop             
  nop                              #  23    0xdb574  1      OPC=nop             
  nop                              #  24    0xdb575  1      OPC=nop             
  nop                              #  25    0xdb576  1      OPC=nop             
  nop                              #  26    0xdb577  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb578  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb57e  1      OPC=nop             
  nop                              #  29    0xdb57f  1      OPC=nop             
  nop                              #  30    0xdb580  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb581  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb584  2      OPC=callq_r64       
.L_db580:                          #        0xdb586  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb586  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb588  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb58b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb58e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb58f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb594  1      OPC=nop             
  nop                              #  39    0xdb595  1      OPC=nop             
  nop                              #  40    0xdb596  1      OPC=nop             
  nop                              #  41    0xdb597  1      OPC=nop             
  nop                              #  42    0xdb598  1      OPC=nop             
  nop                              #  43    0xdb599  1      OPC=nop             
  nop                              #  44    0xdb59a  1      OPC=nop             
  nop                              #  45    0xdb59b  1      OPC=nop             
  nop                              #  46    0xdb59c  1      OPC=nop             
  nop                              #  47    0xdb59d  1      OPC=nop             
  nop                              #  48    0xdb59e  1      OPC=nop             
  nop                              #  49    0xdb59f  1      OPC=nop             
  nop                              #  50    0xdb5a0  1      OPC=nop             
  nop                              #  51    0xdb5a1  1      OPC=nop             
  nop                              #  52    0xdb5a2  1      OPC=nop             
  nop                              #  53    0xdb5a3  1      OPC=nop             
  nop                              #  54    0xdb5a4  1      OPC=nop             
  nop                              #  55    0xdb5a5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb5a6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb5a8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb5ac  1      OPC=nop             
  nop                              #  59    0xdb5ad  1      OPC=nop             
  nop                              #  60    0xdb5ae  1      OPC=nop             
  nop                              #  61    0xdb5af  1      OPC=nop             
  nop                              #  62    0xdb5b0  1      OPC=nop             
  nop                              #  63    0xdb5b1  1      OPC=nop             
  nop                              #  64    0xdb5b2  1      OPC=nop             
  nop                              #  65    0xdb5b3  1      OPC=nop             
  nop                              #  66    0xdb5b4  1      OPC=nop             
  nop                              #  67    0xdb5b5  1      OPC=nop             
  nop                              #  68    0xdb5b6  1      OPC=nop             
  nop                              #  69    0xdb5b7  1      OPC=nop             
  nop                              #  70    0xdb5b8  1      OPC=nop             
  nop                              #  71    0xdb5b9  1      OPC=nop             
  nop                              #  72    0xdb5ba  1      OPC=nop             
  nop                              #  73    0xdb5bb  1      OPC=nop             
  nop                              #  74    0xdb5bc  1      OPC=nop             
  nop                              #  75    0xdb5bd  1      OPC=nop             
  nop                              #  76    0xdb5be  1      OPC=nop             
  nop                              #  77    0xdb5bf  1      OPC=nop             
  nop                              #  78    0xdb5c0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb5c1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb5c6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb5ca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb5cc  1      OPC=nop             
  nop                              #  83    0xdb5cd  1      OPC=nop             
  nop                              #  84    0xdb5ce  1      OPC=nop             
  nop                              #  85    0xdb5cf  1      OPC=nop             
  nop                              #  86    0xdb5d0  1      OPC=nop             
  nop                              #  87    0xdb5d1  1      OPC=nop             
  nop                              #  88    0xdb5d2  1      OPC=nop             
  nop                              #  89    0xdb5d3  1      OPC=nop             
  nop                              #  90    0xdb5d4  1      OPC=nop             
  nop                              #  91    0xdb5d5  1      OPC=nop             
  nop                              #  92    0xdb5d6  1      OPC=nop             
  nop                              #  93    0xdb5d7  1      OPC=nop             
  nop                              #  94    0xdb5d8  1      OPC=nop             
  nop                              #  95    0xdb5d9  1      OPC=nop             
  nop                              #  96    0xdb5da  1      OPC=nop             
  nop                              #  97    0xdb5db  1      OPC=nop             
  nop                              #  98    0xdb5dc  1      OPC=nop             
  nop                              #  99    0xdb5dd  1      OPC=nop             
  nop                              #  100   0xdb5de  1      OPC=nop             
  nop                              #  101   0xdb5df  1      OPC=nop             
  nop                              #  102   0xdb5e0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb5e1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED1Ev, .-_ZNSt10moneypunctIwLb0EED1Ev

