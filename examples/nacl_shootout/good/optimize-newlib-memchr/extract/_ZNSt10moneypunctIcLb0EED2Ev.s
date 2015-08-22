  .text
  .globl _ZNSt10moneypunctIcLb0EED2Ev
  .type _ZNSt10moneypunctIcLb0EED2Ev, @function

#! file-offset 0x11bf80
#! rip-offset  0xdbf80
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EED2Ev:     #        0xdbf80  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbf80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbf81  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbf83  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbf86  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbf89  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbf8b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbf90  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)  #  8     0xdbf92  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbf9a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbf9d  1      OPC=nop             
  nop                              #  11    0xdbf9e  1      OPC=nop             
  nop                              #  12    0xdbf9f  1      OPC=nop             
  je .L_dbfc0                      #  13    0xdbfa0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbfa2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbfa4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbfa8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbfaa  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbfaf  1      OPC=nop             
  nop                              #  19    0xdbfb0  1      OPC=nop             
  nop                              #  20    0xdbfb1  1      OPC=nop             
  nop                              #  21    0xdbfb2  1      OPC=nop             
  nop                              #  22    0xdbfb3  1      OPC=nop             
  nop                              #  23    0xdbfb4  1      OPC=nop             
  nop                              #  24    0xdbfb5  1      OPC=nop             
  nop                              #  25    0xdbfb6  1      OPC=nop             
  nop                              #  26    0xdbfb7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbfb8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbfbe  1      OPC=nop             
  nop                              #  29    0xdbfbf  1      OPC=nop             
  nop                              #  30    0xdbfc0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbfc1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbfc4  2      OPC=callq_r64       
.L_dbfc0:                          #        0xdbfc6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbfc6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbfc8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbfcb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbfce  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbfcf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbfd4  1      OPC=nop             
  nop                              #  39    0xdbfd5  1      OPC=nop             
  nop                              #  40    0xdbfd6  1      OPC=nop             
  nop                              #  41    0xdbfd7  1      OPC=nop             
  nop                              #  42    0xdbfd8  1      OPC=nop             
  nop                              #  43    0xdbfd9  1      OPC=nop             
  nop                              #  44    0xdbfda  1      OPC=nop             
  nop                              #  45    0xdbfdb  1      OPC=nop             
  nop                              #  46    0xdbfdc  1      OPC=nop             
  nop                              #  47    0xdbfdd  1      OPC=nop             
  nop                              #  48    0xdbfde  1      OPC=nop             
  nop                              #  49    0xdbfdf  1      OPC=nop             
  nop                              #  50    0xdbfe0  1      OPC=nop             
  nop                              #  51    0xdbfe1  1      OPC=nop             
  nop                              #  52    0xdbfe2  1      OPC=nop             
  nop                              #  53    0xdbfe3  1      OPC=nop             
  nop                              #  54    0xdbfe4  1      OPC=nop             
  nop                              #  55    0xdbfe5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbfe6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbfe8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbfec  1      OPC=nop             
  nop                              #  59    0xdbfed  1      OPC=nop             
  nop                              #  60    0xdbfee  1      OPC=nop             
  nop                              #  61    0xdbfef  1      OPC=nop             
  nop                              #  62    0xdbff0  1      OPC=nop             
  nop                              #  63    0xdbff1  1      OPC=nop             
  nop                              #  64    0xdbff2  1      OPC=nop             
  nop                              #  65    0xdbff3  1      OPC=nop             
  nop                              #  66    0xdbff4  1      OPC=nop             
  nop                              #  67    0xdbff5  1      OPC=nop             
  nop                              #  68    0xdbff6  1      OPC=nop             
  nop                              #  69    0xdbff7  1      OPC=nop             
  nop                              #  70    0xdbff8  1      OPC=nop             
  nop                              #  71    0xdbff9  1      OPC=nop             
  nop                              #  72    0xdbffa  1      OPC=nop             
  nop                              #  73    0xdbffb  1      OPC=nop             
  nop                              #  74    0xdbffc  1      OPC=nop             
  nop                              #  75    0xdbffd  1      OPC=nop             
  nop                              #  76    0xdbffe  1      OPC=nop             
  nop                              #  77    0xdbfff  1      OPC=nop             
  nop                              #  78    0xdc000  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc001  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc006  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc00a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc00c  1      OPC=nop             
  nop                              #  83    0xdc00d  1      OPC=nop             
  nop                              #  84    0xdc00e  1      OPC=nop             
  nop                              #  85    0xdc00f  1      OPC=nop             
  nop                              #  86    0xdc010  1      OPC=nop             
  nop                              #  87    0xdc011  1      OPC=nop             
  nop                              #  88    0xdc012  1      OPC=nop             
  nop                              #  89    0xdc013  1      OPC=nop             
  nop                              #  90    0xdc014  1      OPC=nop             
  nop                              #  91    0xdc015  1      OPC=nop             
  nop                              #  92    0xdc016  1      OPC=nop             
  nop                              #  93    0xdc017  1      OPC=nop             
  nop                              #  94    0xdc018  1      OPC=nop             
  nop                              #  95    0xdc019  1      OPC=nop             
  nop                              #  96    0xdc01a  1      OPC=nop             
  nop                              #  97    0xdc01b  1      OPC=nop             
  nop                              #  98    0xdc01c  1      OPC=nop             
  nop                              #  99    0xdc01d  1      OPC=nop             
  nop                              #  100   0xdc01e  1      OPC=nop             
  nop                              #  101   0xdc01f  1      OPC=nop             
  nop                              #  102   0xdc020  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc021  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIcLb0EED2Ev, .-_ZNSt10moneypunctIcLb0EED2Ev

