  .text
  .globl fputwc
  .type fputwc, @function

#! file-offset 0x187460
#! rip-offset  0x147460
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fputwc:                        #        0x147460  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x147460  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x147465  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x14746a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x14746c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x147471  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x147474  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x147477  3      OPC=movl_r32_r32   
  nop                           #  8     0x14747a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x14747b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x147480  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x147487  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x147489  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x14748d  3      OPC=testq_r64_r64  
  je .L_1474c0                  #  14    0x147490  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x147492  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x147495  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x14749a  2      OPC=testl_r32_r32  
  nop                           #  18    0x14749c  1      OPC=nop            
  nop                           #  19    0x14749d  1      OPC=nop            
  nop                           #  20    0x14749e  1      OPC=nop            
  nop                           #  21    0x14749f  1      OPC=nop            
  jne .L_1474c0                 #  22    0x1474a0  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x1474a2  3      OPC=movl_r32_r32   
  nop                           #  24    0x1474a5  1      OPC=nop            
  nop                           #  25    0x1474a6  1      OPC=nop            
  nop                           #  26    0x1474a7  1      OPC=nop            
  nop                           #  27    0x1474a8  1      OPC=nop            
  nop                           #  28    0x1474a9  1      OPC=nop            
  nop                           #  29    0x1474aa  1      OPC=nop            
  nop                           #  30    0x1474ab  1      OPC=nop            
  nop                           #  31    0x1474ac  1      OPC=nop            
  nop                           #  32    0x1474ad  1      OPC=nop            
  nop                           #  33    0x1474ae  1      OPC=nop            
  nop                           #  34    0x1474af  1      OPC=nop            
  nop                           #  35    0x1474b0  1      OPC=nop            
  nop                           #  36    0x1474b1  1      OPC=nop            
  nop                           #  37    0x1474b2  1      OPC=nop            
  nop                           #  38    0x1474b3  1      OPC=nop            
  nop                           #  39    0x1474b4  1      OPC=nop            
  nop                           #  40    0x1474b5  1      OPC=nop            
  nop                           #  41    0x1474b6  1      OPC=nop            
  nop                           #  42    0x1474b7  1      OPC=nop            
  nop                           #  43    0x1474b8  1      OPC=nop            
  nop                           #  44    0x1474b9  1      OPC=nop            
  nop                           #  45    0x1474ba  1      OPC=nop            
  callq .__sinit                #  46    0x1474bb  5      OPC=callq_label    
.L_1474c0:                      #        0x1474c0  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x1474c0  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x1474c3  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x1474c5  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x1474c8  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x1474cc  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x1474d1  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x1474d6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x1474d9  3      OPC=addq_r64_r64   
  nop                           #  55    0x1474dc  1      OPC=nop            
  nop                           #  56    0x1474dd  1      OPC=nop            
  nop                           #  57    0x1474de  1      OPC=nop            
  nop                           #  58    0x1474df  1      OPC=nop            
  jmpq ._fputwc_r               #  59    0x1474e0  5      OPC=jmpq_label_1   
  nop                           #  60    0x1474e5  1      OPC=nop            
  nop                           #  61    0x1474e6  1      OPC=nop            
  nop                           #  62    0x1474e7  1      OPC=nop            
  nop                           #  63    0x1474e8  1      OPC=nop            
  nop                           #  64    0x1474e9  1      OPC=nop            
  nop                           #  65    0x1474ea  1      OPC=nop            
  nop                           #  66    0x1474eb  1      OPC=nop            
  nop                           #  67    0x1474ec  1      OPC=nop            
  nop                           #  68    0x1474ed  1      OPC=nop            
  nop                           #  69    0x1474ee  1      OPC=nop            
  nop                           #  70    0x1474ef  1      OPC=nop            
  nop                           #  71    0x1474f0  1      OPC=nop            
  nop                           #  72    0x1474f1  1      OPC=nop            
  nop                           #  73    0x1474f2  1      OPC=nop            
  nop                           #  74    0x1474f3  1      OPC=nop            
  nop                           #  75    0x1474f4  1      OPC=nop            
  nop                           #  76    0x1474f5  1      OPC=nop            
  nop                           #  77    0x1474f6  1      OPC=nop            
  nop                           #  78    0x1474f7  1      OPC=nop            
  nop                           #  79    0x1474f8  1      OPC=nop            
  nop                           #  80    0x1474f9  1      OPC=nop            
  nop                           #  81    0x1474fa  1      OPC=nop            
  nop                           #  82    0x1474fb  1      OPC=nop            
  nop                           #  83    0x1474fc  1      OPC=nop            
  nop                           #  84    0x1474fd  1      OPC=nop            
  nop                           #  85    0x1474fe  1      OPC=nop            
  nop                           #  86    0x1474ff  1      OPC=nop            
                                                                             
.size fputwc, .-fputwc

