  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x187f20
#! rip-offset  0x147f20
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fputwc:                        #        0x147f20  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x147f20  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x147f25  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x147f2a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x147f2c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x147f31  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x147f34  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x147f37  3      OPC=movl_r32_r32   
  nop                           #  8     0x147f3a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x147f3b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x147f40  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x147f47  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x147f49  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x147f4d  3      OPC=testq_r64_r64  
  je .L_147f80                  #  14    0x147f50  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x147f52  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x147f55  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x147f5a  2      OPC=testl_r32_r32  
  nop                           #  18    0x147f5c  1      OPC=nop            
  nop                           #  19    0x147f5d  1      OPC=nop            
  nop                           #  20    0x147f5e  1      OPC=nop            
  nop                           #  21    0x147f5f  1      OPC=nop            
  jne .L_147f80                 #  22    0x147f60  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x147f62  3      OPC=movl_r32_r32   
  nop                           #  24    0x147f65  1      OPC=nop            
  nop                           #  25    0x147f66  1      OPC=nop            
  nop                           #  26    0x147f67  1      OPC=nop            
  nop                           #  27    0x147f68  1      OPC=nop            
  nop                           #  28    0x147f69  1      OPC=nop            
  nop                           #  29    0x147f6a  1      OPC=nop            
  nop                           #  30    0x147f6b  1      OPC=nop            
  nop                           #  31    0x147f6c  1      OPC=nop            
  nop                           #  32    0x147f6d  1      OPC=nop            
  nop                           #  33    0x147f6e  1      OPC=nop            
  nop                           #  34    0x147f6f  1      OPC=nop            
  nop                           #  35    0x147f70  1      OPC=nop            
  nop                           #  36    0x147f71  1      OPC=nop            
  nop                           #  37    0x147f72  1      OPC=nop            
  nop                           #  38    0x147f73  1      OPC=nop            
  nop                           #  39    0x147f74  1      OPC=nop            
  nop                           #  40    0x147f75  1      OPC=nop            
  nop                           #  41    0x147f76  1      OPC=nop            
  nop                           #  42    0x147f77  1      OPC=nop            
  nop                           #  43    0x147f78  1      OPC=nop            
  nop                           #  44    0x147f79  1      OPC=nop            
  nop                           #  45    0x147f7a  1      OPC=nop            
  callq .__sinit                #  46    0x147f7b  5      OPC=callq_label    
.L_147f80:                      #        0x147f80  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x147f80  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x147f83  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x147f85  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x147f88  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x147f8c  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x147f91  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x147f96  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x147f99  3      OPC=addq_r64_r64   
  nop                           #  55    0x147f9c  1      OPC=nop            
  nop                           #  56    0x147f9d  1      OPC=nop            
  nop                           #  57    0x147f9e  1      OPC=nop            
  nop                           #  58    0x147f9f  1      OPC=nop            
  jmpq ._fputwc_r               #  59    0x147fa0  5      OPC=jmpq_label_1   
  nop                           #  60    0x147fa5  1      OPC=nop            
  nop                           #  61    0x147fa6  1      OPC=nop            
  nop                           #  62    0x147fa7  1      OPC=nop            
  nop                           #  63    0x147fa8  1      OPC=nop            
  nop                           #  64    0x147fa9  1      OPC=nop            
  nop                           #  65    0x147faa  1      OPC=nop            
  nop                           #  66    0x147fab  1      OPC=nop            
  nop                           #  67    0x147fac  1      OPC=nop            
  nop                           #  68    0x147fad  1      OPC=nop            
  nop                           #  69    0x147fae  1      OPC=nop            
  nop                           #  70    0x147faf  1      OPC=nop            
  nop                           #  71    0x147fb0  1      OPC=nop            
  nop                           #  72    0x147fb1  1      OPC=nop            
  nop                           #  73    0x147fb2  1      OPC=nop            
  nop                           #  74    0x147fb3  1      OPC=nop            
  nop                           #  75    0x147fb4  1      OPC=nop            
  nop                           #  76    0x147fb5  1      OPC=nop            
  nop                           #  77    0x147fb6  1      OPC=nop            
  nop                           #  78    0x147fb7  1      OPC=nop            
  nop                           #  79    0x147fb8  1      OPC=nop            
  nop                           #  80    0x147fb9  1      OPC=nop            
  nop                           #  81    0x147fba  1      OPC=nop            
  nop                           #  82    0x147fbb  1      OPC=nop            
  nop                           #  83    0x147fbc  1      OPC=nop            
  nop                           #  84    0x147fbd  1      OPC=nop            
  nop                           #  85    0x147fbe  1      OPC=nop            
  nop                           #  86    0x147fbf  1      OPC=nop            
                                                                             
.size fputwc, .-fputwc

