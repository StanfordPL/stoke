  .text
  .globl ungetwc
  .type ungetwc, @function

#! file-offset 0x177300
#! rip-offset  0x137300
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.ungetwc:                       #        0x137300  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x137300  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x137305  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x13730a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x13730c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x137311  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x137314  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x137317  3      OPC=movl_r32_r32   
  nop                           #  8     0x13731a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x13731b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x137320  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x137327  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x137329  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x13732d  3      OPC=testq_r64_r64  
  je .L_137360                  #  14    0x137330  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x137332  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x137335  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x13733a  2      OPC=testl_r32_r32  
  nop                           #  18    0x13733c  1      OPC=nop            
  nop                           #  19    0x13733d  1      OPC=nop            
  nop                           #  20    0x13733e  1      OPC=nop            
  nop                           #  21    0x13733f  1      OPC=nop            
  jne .L_137360                 #  22    0x137340  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x137342  3      OPC=movl_r32_r32   
  nop                           #  24    0x137345  1      OPC=nop            
  nop                           #  25    0x137346  1      OPC=nop            
  nop                           #  26    0x137347  1      OPC=nop            
  nop                           #  27    0x137348  1      OPC=nop            
  nop                           #  28    0x137349  1      OPC=nop            
  nop                           #  29    0x13734a  1      OPC=nop            
  nop                           #  30    0x13734b  1      OPC=nop            
  nop                           #  31    0x13734c  1      OPC=nop            
  nop                           #  32    0x13734d  1      OPC=nop            
  nop                           #  33    0x13734e  1      OPC=nop            
  nop                           #  34    0x13734f  1      OPC=nop            
  nop                           #  35    0x137350  1      OPC=nop            
  nop                           #  36    0x137351  1      OPC=nop            
  nop                           #  37    0x137352  1      OPC=nop            
  nop                           #  38    0x137353  1      OPC=nop            
  nop                           #  39    0x137354  1      OPC=nop            
  nop                           #  40    0x137355  1      OPC=nop            
  nop                           #  41    0x137356  1      OPC=nop            
  nop                           #  42    0x137357  1      OPC=nop            
  nop                           #  43    0x137358  1      OPC=nop            
  nop                           #  44    0x137359  1      OPC=nop            
  nop                           #  45    0x13735a  1      OPC=nop            
  callq .__sinit                #  46    0x13735b  5      OPC=callq_label    
.L_137360:                      #        0x137360  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x137360  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x137363  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x137365  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x137368  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x13736c  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x137371  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x137376  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x137379  3      OPC=addq_r64_r64   
  nop                           #  55    0x13737c  1      OPC=nop            
  nop                           #  56    0x13737d  1      OPC=nop            
  nop                           #  57    0x13737e  1      OPC=nop            
  nop                           #  58    0x13737f  1      OPC=nop            
  jmpq ._ungetwc_r              #  59    0x137380  5      OPC=jmpq_label_1   
  nop                           #  60    0x137385  1      OPC=nop            
  nop                           #  61    0x137386  1      OPC=nop            
  nop                           #  62    0x137387  1      OPC=nop            
  nop                           #  63    0x137388  1      OPC=nop            
  nop                           #  64    0x137389  1      OPC=nop            
  nop                           #  65    0x13738a  1      OPC=nop            
  nop                           #  66    0x13738b  1      OPC=nop            
  nop                           #  67    0x13738c  1      OPC=nop            
  nop                           #  68    0x13738d  1      OPC=nop            
  nop                           #  69    0x13738e  1      OPC=nop            
  nop                           #  70    0x13738f  1      OPC=nop            
  nop                           #  71    0x137390  1      OPC=nop            
  nop                           #  72    0x137391  1      OPC=nop            
  nop                           #  73    0x137392  1      OPC=nop            
  nop                           #  74    0x137393  1      OPC=nop            
  nop                           #  75    0x137394  1      OPC=nop            
  nop                           #  76    0x137395  1      OPC=nop            
  nop                           #  77    0x137396  1      OPC=nop            
  nop                           #  78    0x137397  1      OPC=nop            
  nop                           #  79    0x137398  1      OPC=nop            
  nop                           #  80    0x137399  1      OPC=nop            
  nop                           #  81    0x13739a  1      OPC=nop            
  nop                           #  82    0x13739b  1      OPC=nop            
  nop                           #  83    0x13739c  1      OPC=nop            
  nop                           #  84    0x13739d  1      OPC=nop            
  nop                           #  85    0x13739e  1      OPC=nop            
  nop                           #  86    0x13739f  1      OPC=nop            
                                                                             
.size ungetwc, .-ungetwc

