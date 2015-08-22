  .text
  .globl _ZNSt10moneypunctIwLb1EED1Ev
  .type _ZNSt10moneypunctIwLb1EED1Ev, @function

#! file-offset 0x11bda0
#! rip-offset  0xdbda0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EED1Ev:     #        0xdbda0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbda0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbda1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbda3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbda6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbda9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbdab  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbdb0  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)  #  8     0xdbdb2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbdba  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbdbd  1      OPC=nop             
  nop                              #  11    0xdbdbe  1      OPC=nop             
  nop                              #  12    0xdbdbf  1      OPC=nop             
  je .L_dbde0                      #  13    0xdbdc0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbdc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbdc4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbdc8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbdca  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbdcf  1      OPC=nop             
  nop                              #  19    0xdbdd0  1      OPC=nop             
  nop                              #  20    0xdbdd1  1      OPC=nop             
  nop                              #  21    0xdbdd2  1      OPC=nop             
  nop                              #  22    0xdbdd3  1      OPC=nop             
  nop                              #  23    0xdbdd4  1      OPC=nop             
  nop                              #  24    0xdbdd5  1      OPC=nop             
  nop                              #  25    0xdbdd6  1      OPC=nop             
  nop                              #  26    0xdbdd7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbdd8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbdde  1      OPC=nop             
  nop                              #  29    0xdbddf  1      OPC=nop             
  nop                              #  30    0xdbde0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbde1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbde4  2      OPC=callq_r64       
.L_dbde0:                          #        0xdbde6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbde6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbde8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbdeb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbdee  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbdef  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbdf4  1      OPC=nop             
  nop                              #  39    0xdbdf5  1      OPC=nop             
  nop                              #  40    0xdbdf6  1      OPC=nop             
  nop                              #  41    0xdbdf7  1      OPC=nop             
  nop                              #  42    0xdbdf8  1      OPC=nop             
  nop                              #  43    0xdbdf9  1      OPC=nop             
  nop                              #  44    0xdbdfa  1      OPC=nop             
  nop                              #  45    0xdbdfb  1      OPC=nop             
  nop                              #  46    0xdbdfc  1      OPC=nop             
  nop                              #  47    0xdbdfd  1      OPC=nop             
  nop                              #  48    0xdbdfe  1      OPC=nop             
  nop                              #  49    0xdbdff  1      OPC=nop             
  nop                              #  50    0xdbe00  1      OPC=nop             
  nop                              #  51    0xdbe01  1      OPC=nop             
  nop                              #  52    0xdbe02  1      OPC=nop             
  nop                              #  53    0xdbe03  1      OPC=nop             
  nop                              #  54    0xdbe04  1      OPC=nop             
  nop                              #  55    0xdbe05  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbe06  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbe08  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbe0c  1      OPC=nop             
  nop                              #  59    0xdbe0d  1      OPC=nop             
  nop                              #  60    0xdbe0e  1      OPC=nop             
  nop                              #  61    0xdbe0f  1      OPC=nop             
  nop                              #  62    0xdbe10  1      OPC=nop             
  nop                              #  63    0xdbe11  1      OPC=nop             
  nop                              #  64    0xdbe12  1      OPC=nop             
  nop                              #  65    0xdbe13  1      OPC=nop             
  nop                              #  66    0xdbe14  1      OPC=nop             
  nop                              #  67    0xdbe15  1      OPC=nop             
  nop                              #  68    0xdbe16  1      OPC=nop             
  nop                              #  69    0xdbe17  1      OPC=nop             
  nop                              #  70    0xdbe18  1      OPC=nop             
  nop                              #  71    0xdbe19  1      OPC=nop             
  nop                              #  72    0xdbe1a  1      OPC=nop             
  nop                              #  73    0xdbe1b  1      OPC=nop             
  nop                              #  74    0xdbe1c  1      OPC=nop             
  nop                              #  75    0xdbe1d  1      OPC=nop             
  nop                              #  76    0xdbe1e  1      OPC=nop             
  nop                              #  77    0xdbe1f  1      OPC=nop             
  nop                              #  78    0xdbe20  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdbe21  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdbe26  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdbe2a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdbe2c  1      OPC=nop             
  nop                              #  83    0xdbe2d  1      OPC=nop             
  nop                              #  84    0xdbe2e  1      OPC=nop             
  nop                              #  85    0xdbe2f  1      OPC=nop             
  nop                              #  86    0xdbe30  1      OPC=nop             
  nop                              #  87    0xdbe31  1      OPC=nop             
  nop                              #  88    0xdbe32  1      OPC=nop             
  nop                              #  89    0xdbe33  1      OPC=nop             
  nop                              #  90    0xdbe34  1      OPC=nop             
  nop                              #  91    0xdbe35  1      OPC=nop             
  nop                              #  92    0xdbe36  1      OPC=nop             
  nop                              #  93    0xdbe37  1      OPC=nop             
  nop                              #  94    0xdbe38  1      OPC=nop             
  nop                              #  95    0xdbe39  1      OPC=nop             
  nop                              #  96    0xdbe3a  1      OPC=nop             
  nop                              #  97    0xdbe3b  1      OPC=nop             
  nop                              #  98    0xdbe3c  1      OPC=nop             
  nop                              #  99    0xdbe3d  1      OPC=nop             
  nop                              #  100   0xdbe3e  1      OPC=nop             
  nop                              #  101   0xdbe3f  1      OPC=nop             
  nop                              #  102   0xdbe40  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdbe41  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb1EED1Ev, .-_ZNSt10moneypunctIwLb1EED1Ev

