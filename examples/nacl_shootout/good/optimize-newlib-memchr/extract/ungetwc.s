  .text
  .globl ungetwc
  .type ungetwc, @function

#! file-offset 0x177d20
#! rip-offset  0x137d20
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.ungetwc:                       #        0x137d20  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x137d20  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x137d25  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x137d2a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x137d2c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x137d31  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x137d34  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x137d37  3      OPC=movl_r32_r32   
  nop                           #  8     0x137d3a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x137d3b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x137d40  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x137d47  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x137d49  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x137d4d  3      OPC=testq_r64_r64  
  je .L_137d80                  #  14    0x137d50  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x137d52  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x137d55  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x137d5a  2      OPC=testl_r32_r32  
  nop                           #  18    0x137d5c  1      OPC=nop            
  nop                           #  19    0x137d5d  1      OPC=nop            
  nop                           #  20    0x137d5e  1      OPC=nop            
  nop                           #  21    0x137d5f  1      OPC=nop            
  jne .L_137d80                 #  22    0x137d60  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x137d62  3      OPC=movl_r32_r32   
  nop                           #  24    0x137d65  1      OPC=nop            
  nop                           #  25    0x137d66  1      OPC=nop            
  nop                           #  26    0x137d67  1      OPC=nop            
  nop                           #  27    0x137d68  1      OPC=nop            
  nop                           #  28    0x137d69  1      OPC=nop            
  nop                           #  29    0x137d6a  1      OPC=nop            
  nop                           #  30    0x137d6b  1      OPC=nop            
  nop                           #  31    0x137d6c  1      OPC=nop            
  nop                           #  32    0x137d6d  1      OPC=nop            
  nop                           #  33    0x137d6e  1      OPC=nop            
  nop                           #  34    0x137d6f  1      OPC=nop            
  nop                           #  35    0x137d70  1      OPC=nop            
  nop                           #  36    0x137d71  1      OPC=nop            
  nop                           #  37    0x137d72  1      OPC=nop            
  nop                           #  38    0x137d73  1      OPC=nop            
  nop                           #  39    0x137d74  1      OPC=nop            
  nop                           #  40    0x137d75  1      OPC=nop            
  nop                           #  41    0x137d76  1      OPC=nop            
  nop                           #  42    0x137d77  1      OPC=nop            
  nop                           #  43    0x137d78  1      OPC=nop            
  nop                           #  44    0x137d79  1      OPC=nop            
  nop                           #  45    0x137d7a  1      OPC=nop            
  callq .__sinit                #  46    0x137d7b  5      OPC=callq_label    
.L_137d80:                      #        0x137d80  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x137d80  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x137d83  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x137d85  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x137d88  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x137d8c  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x137d91  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x137d96  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x137d99  3      OPC=addq_r64_r64   
  nop                           #  55    0x137d9c  1      OPC=nop            
  nop                           #  56    0x137d9d  1      OPC=nop            
  nop                           #  57    0x137d9e  1      OPC=nop            
  nop                           #  58    0x137d9f  1      OPC=nop            
  jmpq ._ungetwc_r              #  59    0x137da0  5      OPC=jmpq_label_1   
  nop                           #  60    0x137da5  1      OPC=nop            
  nop                           #  61    0x137da6  1      OPC=nop            
  nop                           #  62    0x137da7  1      OPC=nop            
  nop                           #  63    0x137da8  1      OPC=nop            
  nop                           #  64    0x137da9  1      OPC=nop            
  nop                           #  65    0x137daa  1      OPC=nop            
  nop                           #  66    0x137dab  1      OPC=nop            
  nop                           #  67    0x137dac  1      OPC=nop            
  nop                           #  68    0x137dad  1      OPC=nop            
  nop                           #  69    0x137dae  1      OPC=nop            
  nop                           #  70    0x137daf  1      OPC=nop            
  nop                           #  71    0x137db0  1      OPC=nop            
  nop                           #  72    0x137db1  1      OPC=nop            
  nop                           #  73    0x137db2  1      OPC=nop            
  nop                           #  74    0x137db3  1      OPC=nop            
  nop                           #  75    0x137db4  1      OPC=nop            
  nop                           #  76    0x137db5  1      OPC=nop            
  nop                           #  77    0x137db6  1      OPC=nop            
  nop                           #  78    0x137db7  1      OPC=nop            
  nop                           #  79    0x137db8  1      OPC=nop            
  nop                           #  80    0x137db9  1      OPC=nop            
  nop                           #  81    0x137dba  1      OPC=nop            
  nop                           #  82    0x137dbb  1      OPC=nop            
  nop                           #  83    0x137dbc  1      OPC=nop            
  nop                           #  84    0x137dbd  1      OPC=nop            
  nop                           #  85    0x137dbe  1      OPC=nop            
  nop                           #  86    0x137dbf  1      OPC=nop            
                                                                             
.size ungetwc, .-ungetwc

