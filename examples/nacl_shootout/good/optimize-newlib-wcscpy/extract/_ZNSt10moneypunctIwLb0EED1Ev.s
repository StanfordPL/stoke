  .text
  .globl _ZNSt10moneypunctIwLb0EED1Ev
  .type _ZNSt10moneypunctIwLb0EED1Ev, @function

#! file-offset 0x11b240
#! rip-offset  0xdb240
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED1Ev:     #        0xdb240  0      OPC=<label>         
  pushq %rbx                       #  1     0xdb240  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdb241  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdb243  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdb246  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdb249  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdb24b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdb250  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdb252  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdb25a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdb25d  1      OPC=nop             
  nop                              #  11    0xdb25e  1      OPC=nop             
  nop                              #  12    0xdb25f  1      OPC=nop             
  je .L_db280                      #  13    0xdb260  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdb262  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdb264  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdb268  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdb26a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdb26f  1      OPC=nop             
  nop                              #  19    0xdb270  1      OPC=nop             
  nop                              #  20    0xdb271  1      OPC=nop             
  nop                              #  21    0xdb272  1      OPC=nop             
  nop                              #  22    0xdb273  1      OPC=nop             
  nop                              #  23    0xdb274  1      OPC=nop             
  nop                              #  24    0xdb275  1      OPC=nop             
  nop                              #  25    0xdb276  1      OPC=nop             
  nop                              #  26    0xdb277  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdb278  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdb27e  1      OPC=nop             
  nop                              #  29    0xdb27f  1      OPC=nop             
  nop                              #  30    0xdb280  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdb281  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdb284  2      OPC=callq_r64       
.L_db280:                          #        0xdb286  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdb286  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdb288  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdb28b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdb28e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdb28f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdb294  1      OPC=nop             
  nop                              #  39    0xdb295  1      OPC=nop             
  nop                              #  40    0xdb296  1      OPC=nop             
  nop                              #  41    0xdb297  1      OPC=nop             
  nop                              #  42    0xdb298  1      OPC=nop             
  nop                              #  43    0xdb299  1      OPC=nop             
  nop                              #  44    0xdb29a  1      OPC=nop             
  nop                              #  45    0xdb29b  1      OPC=nop             
  nop                              #  46    0xdb29c  1      OPC=nop             
  nop                              #  47    0xdb29d  1      OPC=nop             
  nop                              #  48    0xdb29e  1      OPC=nop             
  nop                              #  49    0xdb29f  1      OPC=nop             
  nop                              #  50    0xdb2a0  1      OPC=nop             
  nop                              #  51    0xdb2a1  1      OPC=nop             
  nop                              #  52    0xdb2a2  1      OPC=nop             
  nop                              #  53    0xdb2a3  1      OPC=nop             
  nop                              #  54    0xdb2a4  1      OPC=nop             
  nop                              #  55    0xdb2a5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdb2a6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdb2a8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdb2ac  1      OPC=nop             
  nop                              #  59    0xdb2ad  1      OPC=nop             
  nop                              #  60    0xdb2ae  1      OPC=nop             
  nop                              #  61    0xdb2af  1      OPC=nop             
  nop                              #  62    0xdb2b0  1      OPC=nop             
  nop                              #  63    0xdb2b1  1      OPC=nop             
  nop                              #  64    0xdb2b2  1      OPC=nop             
  nop                              #  65    0xdb2b3  1      OPC=nop             
  nop                              #  66    0xdb2b4  1      OPC=nop             
  nop                              #  67    0xdb2b5  1      OPC=nop             
  nop                              #  68    0xdb2b6  1      OPC=nop             
  nop                              #  69    0xdb2b7  1      OPC=nop             
  nop                              #  70    0xdb2b8  1      OPC=nop             
  nop                              #  71    0xdb2b9  1      OPC=nop             
  nop                              #  72    0xdb2ba  1      OPC=nop             
  nop                              #  73    0xdb2bb  1      OPC=nop             
  nop                              #  74    0xdb2bc  1      OPC=nop             
  nop                              #  75    0xdb2bd  1      OPC=nop             
  nop                              #  76    0xdb2be  1      OPC=nop             
  nop                              #  77    0xdb2bf  1      OPC=nop             
  nop                              #  78    0xdb2c0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdb2c1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdb2c6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdb2ca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdb2cc  1      OPC=nop             
  nop                              #  83    0xdb2cd  1      OPC=nop             
  nop                              #  84    0xdb2ce  1      OPC=nop             
  nop                              #  85    0xdb2cf  1      OPC=nop             
  nop                              #  86    0xdb2d0  1      OPC=nop             
  nop                              #  87    0xdb2d1  1      OPC=nop             
  nop                              #  88    0xdb2d2  1      OPC=nop             
  nop                              #  89    0xdb2d3  1      OPC=nop             
  nop                              #  90    0xdb2d4  1      OPC=nop             
  nop                              #  91    0xdb2d5  1      OPC=nop             
  nop                              #  92    0xdb2d6  1      OPC=nop             
  nop                              #  93    0xdb2d7  1      OPC=nop             
  nop                              #  94    0xdb2d8  1      OPC=nop             
  nop                              #  95    0xdb2d9  1      OPC=nop             
  nop                              #  96    0xdb2da  1      OPC=nop             
  nop                              #  97    0xdb2db  1      OPC=nop             
  nop                              #  98    0xdb2dc  1      OPC=nop             
  nop                              #  99    0xdb2dd  1      OPC=nop             
  nop                              #  100   0xdb2de  1      OPC=nop             
  nop                              #  101   0xdb2df  1      OPC=nop             
  nop                              #  102   0xdb2e0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdb2e1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED1Ev, .-_ZNSt10moneypunctIwLb0EED1Ev

