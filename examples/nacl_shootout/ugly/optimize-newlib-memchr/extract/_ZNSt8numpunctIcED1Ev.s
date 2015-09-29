  .text
  .globl _ZNSt8numpunctIcED1Ev
  .type _ZNSt8numpunctIcED1Ev, @function

#! file-offset 0x11cfa0
#! rip-offset  0xdcfa0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED1Ev:            #        0xdcfa0  0      OPC=<label>         
  pushq %rbx                       #  1     0xdcfa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdcfa1  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdcfa3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdcfa6  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdcfa9  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdcfab  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdcfb0  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdcfb2  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdcfba  3      OPC=testq_r64_r64   
  nop                              #  10    0xdcfbd  1      OPC=nop             
  nop                              #  11    0xdcfbe  1      OPC=nop             
  nop                              #  12    0xdcfbf  1      OPC=nop             
  je .L_dcfe0                      #  13    0xdcfc0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdcfc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdcfc4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdcfc8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdcfca  5      OPC=movl_r32_m32    
  nop                              #  18    0xdcfcf  1      OPC=nop             
  nop                              #  19    0xdcfd0  1      OPC=nop             
  nop                              #  20    0xdcfd1  1      OPC=nop             
  nop                              #  21    0xdcfd2  1      OPC=nop             
  nop                              #  22    0xdcfd3  1      OPC=nop             
  nop                              #  23    0xdcfd4  1      OPC=nop             
  nop                              #  24    0xdcfd5  1      OPC=nop             
  nop                              #  25    0xdcfd6  1      OPC=nop             
  nop                              #  26    0xdcfd7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdcfd8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdcfde  1      OPC=nop             
  nop                              #  29    0xdcfdf  1      OPC=nop             
  nop                              #  30    0xdcfe0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdcfe1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdcfe4  2      OPC=callq_r64       
.L_dcfe0:                          #        0xdcfe6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdcfe6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdcfe8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdcfeb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdcfee  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdcfef  5      OPC=jmpq_label_1    
  nop                              #  38    0xdcff4  1      OPC=nop             
  nop                              #  39    0xdcff5  1      OPC=nop             
  nop                              #  40    0xdcff6  1      OPC=nop             
  nop                              #  41    0xdcff7  1      OPC=nop             
  nop                              #  42    0xdcff8  1      OPC=nop             
  nop                              #  43    0xdcff9  1      OPC=nop             
  nop                              #  44    0xdcffa  1      OPC=nop             
  nop                              #  45    0xdcffb  1      OPC=nop             
  nop                              #  46    0xdcffc  1      OPC=nop             
  nop                              #  47    0xdcffd  1      OPC=nop             
  nop                              #  48    0xdcffe  1      OPC=nop             
  nop                              #  49    0xdcfff  1      OPC=nop             
  nop                              #  50    0xdd000  1      OPC=nop             
  nop                              #  51    0xdd001  1      OPC=nop             
  nop                              #  52    0xdd002  1      OPC=nop             
  nop                              #  53    0xdd003  1      OPC=nop             
  nop                              #  54    0xdd004  1      OPC=nop             
  nop                              #  55    0xdd005  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdd006  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdd008  4      OPC=movl_m32_r32    
  nop                              #  58    0xdd00c  1      OPC=nop             
  nop                              #  59    0xdd00d  1      OPC=nop             
  nop                              #  60    0xdd00e  1      OPC=nop             
  nop                              #  61    0xdd00f  1      OPC=nop             
  nop                              #  62    0xdd010  1      OPC=nop             
  nop                              #  63    0xdd011  1      OPC=nop             
  nop                              #  64    0xdd012  1      OPC=nop             
  nop                              #  65    0xdd013  1      OPC=nop             
  nop                              #  66    0xdd014  1      OPC=nop             
  nop                              #  67    0xdd015  1      OPC=nop             
  nop                              #  68    0xdd016  1      OPC=nop             
  nop                              #  69    0xdd017  1      OPC=nop             
  nop                              #  70    0xdd018  1      OPC=nop             
  nop                              #  71    0xdd019  1      OPC=nop             
  nop                              #  72    0xdd01a  1      OPC=nop             
  nop                              #  73    0xdd01b  1      OPC=nop             
  nop                              #  74    0xdd01c  1      OPC=nop             
  nop                              #  75    0xdd01d  1      OPC=nop             
  nop                              #  76    0xdd01e  1      OPC=nop             
  nop                              #  77    0xdd01f  1      OPC=nop             
  nop                              #  78    0xdd020  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdd021  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdd026  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdd02a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdd02c  1      OPC=nop             
  nop                              #  83    0xdd02d  1      OPC=nop             
  nop                              #  84    0xdd02e  1      OPC=nop             
  nop                              #  85    0xdd02f  1      OPC=nop             
  nop                              #  86    0xdd030  1      OPC=nop             
  nop                              #  87    0xdd031  1      OPC=nop             
  nop                              #  88    0xdd032  1      OPC=nop             
  nop                              #  89    0xdd033  1      OPC=nop             
  nop                              #  90    0xdd034  1      OPC=nop             
  nop                              #  91    0xdd035  1      OPC=nop             
  nop                              #  92    0xdd036  1      OPC=nop             
  nop                              #  93    0xdd037  1      OPC=nop             
  nop                              #  94    0xdd038  1      OPC=nop             
  nop                              #  95    0xdd039  1      OPC=nop             
  nop                              #  96    0xdd03a  1      OPC=nop             
  nop                              #  97    0xdd03b  1      OPC=nop             
  nop                              #  98    0xdd03c  1      OPC=nop             
  nop                              #  99    0xdd03d  1      OPC=nop             
  nop                              #  100   0xdd03e  1      OPC=nop             
  nop                              #  101   0xdd03f  1      OPC=nop             
  nop                              #  102   0xdd040  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdd041  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED1Ev, .-_ZNSt8numpunctIcED1Ev

