  .text
  .globl _ZNSt10moneypunctIwLb0EED1Ev
  .type _ZNSt10moneypunctIwLb0EED1Ev, @function

#! file-offset 0x11bc60
#! rip-offset  0xdbc60
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EED1Ev:     #        0xdbc60  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbc60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbc61  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbc63  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbc66  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbc69  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbc6b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbc70  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)  #  8     0xdbc72  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbc7a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbc7d  1      OPC=nop             
  nop                              #  11    0xdbc7e  1      OPC=nop             
  nop                              #  12    0xdbc7f  1      OPC=nop             
  je .L_dbca0                      #  13    0xdbc80  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbc82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbc84  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbc88  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbc8a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbc8f  1      OPC=nop             
  nop                              #  19    0xdbc90  1      OPC=nop             
  nop                              #  20    0xdbc91  1      OPC=nop             
  nop                              #  21    0xdbc92  1      OPC=nop             
  nop                              #  22    0xdbc93  1      OPC=nop             
  nop                              #  23    0xdbc94  1      OPC=nop             
  nop                              #  24    0xdbc95  1      OPC=nop             
  nop                              #  25    0xdbc96  1      OPC=nop             
  nop                              #  26    0xdbc97  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbc98  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbc9e  1      OPC=nop             
  nop                              #  29    0xdbc9f  1      OPC=nop             
  nop                              #  30    0xdbca0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbca1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbca4  2      OPC=callq_r64       
.L_dbca0:                          #        0xdbca6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbca6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbca8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbcab  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbcae  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbcaf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbcb4  1      OPC=nop             
  nop                              #  39    0xdbcb5  1      OPC=nop             
  nop                              #  40    0xdbcb6  1      OPC=nop             
  nop                              #  41    0xdbcb7  1      OPC=nop             
  nop                              #  42    0xdbcb8  1      OPC=nop             
  nop                              #  43    0xdbcb9  1      OPC=nop             
  nop                              #  44    0xdbcba  1      OPC=nop             
  nop                              #  45    0xdbcbb  1      OPC=nop             
  nop                              #  46    0xdbcbc  1      OPC=nop             
  nop                              #  47    0xdbcbd  1      OPC=nop             
  nop                              #  48    0xdbcbe  1      OPC=nop             
  nop                              #  49    0xdbcbf  1      OPC=nop             
  nop                              #  50    0xdbcc0  1      OPC=nop             
  nop                              #  51    0xdbcc1  1      OPC=nop             
  nop                              #  52    0xdbcc2  1      OPC=nop             
  nop                              #  53    0xdbcc3  1      OPC=nop             
  nop                              #  54    0xdbcc4  1      OPC=nop             
  nop                              #  55    0xdbcc5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbcc6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbcc8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbccc  1      OPC=nop             
  nop                              #  59    0xdbccd  1      OPC=nop             
  nop                              #  60    0xdbcce  1      OPC=nop             
  nop                              #  61    0xdbccf  1      OPC=nop             
  nop                              #  62    0xdbcd0  1      OPC=nop             
  nop                              #  63    0xdbcd1  1      OPC=nop             
  nop                              #  64    0xdbcd2  1      OPC=nop             
  nop                              #  65    0xdbcd3  1      OPC=nop             
  nop                              #  66    0xdbcd4  1      OPC=nop             
  nop                              #  67    0xdbcd5  1      OPC=nop             
  nop                              #  68    0xdbcd6  1      OPC=nop             
  nop                              #  69    0xdbcd7  1      OPC=nop             
  nop                              #  70    0xdbcd8  1      OPC=nop             
  nop                              #  71    0xdbcd9  1      OPC=nop             
  nop                              #  72    0xdbcda  1      OPC=nop             
  nop                              #  73    0xdbcdb  1      OPC=nop             
  nop                              #  74    0xdbcdc  1      OPC=nop             
  nop                              #  75    0xdbcdd  1      OPC=nop             
  nop                              #  76    0xdbcde  1      OPC=nop             
  nop                              #  77    0xdbcdf  1      OPC=nop             
  nop                              #  78    0xdbce0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdbce1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdbce6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdbcea  2      OPC=movl_r32_r32    
  nop                              #  82    0xdbcec  1      OPC=nop             
  nop                              #  83    0xdbced  1      OPC=nop             
  nop                              #  84    0xdbcee  1      OPC=nop             
  nop                              #  85    0xdbcef  1      OPC=nop             
  nop                              #  86    0xdbcf0  1      OPC=nop             
  nop                              #  87    0xdbcf1  1      OPC=nop             
  nop                              #  88    0xdbcf2  1      OPC=nop             
  nop                              #  89    0xdbcf3  1      OPC=nop             
  nop                              #  90    0xdbcf4  1      OPC=nop             
  nop                              #  91    0xdbcf5  1      OPC=nop             
  nop                              #  92    0xdbcf6  1      OPC=nop             
  nop                              #  93    0xdbcf7  1      OPC=nop             
  nop                              #  94    0xdbcf8  1      OPC=nop             
  nop                              #  95    0xdbcf9  1      OPC=nop             
  nop                              #  96    0xdbcfa  1      OPC=nop             
  nop                              #  97    0xdbcfb  1      OPC=nop             
  nop                              #  98    0xdbcfc  1      OPC=nop             
  nop                              #  99    0xdbcfd  1      OPC=nop             
  nop                              #  100   0xdbcfe  1      OPC=nop             
  nop                              #  101   0xdbcff  1      OPC=nop             
  nop                              #  102   0xdbd00  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdbd01  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb0EED1Ev, .-_ZNSt10moneypunctIwLb0EED1Ev

