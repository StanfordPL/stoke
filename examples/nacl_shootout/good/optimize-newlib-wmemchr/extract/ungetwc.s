  .text
  .globl ungetwc
  .type ungetwc, @function

#! file-offset 0x177600
#! rip-offset  0x137600
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.ungetwc:                       #        0x137600  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)        #  1     0x137600  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)        #  2     0x137605  5      OPC=movq_m64_r64   
  movl %edi, %ebx               #  3     0x13760a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)         #  4     0x13760c  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  5     0x137611  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  6     0x137614  3      OPC=addq_r64_r64   
  movl %esi, %r13d              #  7     0x137617  3      OPC=movl_r32_r32   
  nop                           #  8     0x13761a  1      OPC=nop            
  callq .__nacl_read_tp         #  9     0x13761b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  10    0x137620  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  11    0x137627  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %r12d     #  12    0x137629  4      OPC=movl_r32_m32   
  testq %r12, %r12              #  13    0x13762d  3      OPC=testq_r64_r64  
  je .L_137660                  #  14    0x137630  2      OPC=je_label       
  movl %r12d, %r12d             #  15    0x137632  3      OPC=movl_r32_r32   
  movl 0x38(%r15,%r12,1), %eax  #  16    0x137635  5      OPC=movl_r32_m32   
  testl %eax, %eax              #  17    0x13763a  2      OPC=testl_r32_r32  
  nop                           #  18    0x13763c  1      OPC=nop            
  nop                           #  19    0x13763d  1      OPC=nop            
  nop                           #  20    0x13763e  1      OPC=nop            
  nop                           #  21    0x13763f  1      OPC=nop            
  jne .L_137660                 #  22    0x137640  2      OPC=jne_label      
  movl %r12d, %edi              #  23    0x137642  3      OPC=movl_r32_r32   
  nop                           #  24    0x137645  1      OPC=nop            
  nop                           #  25    0x137646  1      OPC=nop            
  nop                           #  26    0x137647  1      OPC=nop            
  nop                           #  27    0x137648  1      OPC=nop            
  nop                           #  28    0x137649  1      OPC=nop            
  nop                           #  29    0x13764a  1      OPC=nop            
  nop                           #  30    0x13764b  1      OPC=nop            
  nop                           #  31    0x13764c  1      OPC=nop            
  nop                           #  32    0x13764d  1      OPC=nop            
  nop                           #  33    0x13764e  1      OPC=nop            
  nop                           #  34    0x13764f  1      OPC=nop            
  nop                           #  35    0x137650  1      OPC=nop            
  nop                           #  36    0x137651  1      OPC=nop            
  nop                           #  37    0x137652  1      OPC=nop            
  nop                           #  38    0x137653  1      OPC=nop            
  nop                           #  39    0x137654  1      OPC=nop            
  nop                           #  40    0x137655  1      OPC=nop            
  nop                           #  41    0x137656  1      OPC=nop            
  nop                           #  42    0x137657  1      OPC=nop            
  nop                           #  43    0x137658  1      OPC=nop            
  nop                           #  44    0x137659  1      OPC=nop            
  nop                           #  45    0x13765a  1      OPC=nop            
  callq .__sinit                #  46    0x13765b  5      OPC=callq_label    
.L_137660:                      #        0x137660  0      OPC=<label>        
  movl %r13d, %edx              #  47    0x137660  3      OPC=movl_r32_r32   
  movl %ebx, %esi               #  48    0x137663  2      OPC=movl_r32_r32   
  movl %r12d, %edi              #  49    0x137665  3      OPC=movl_r32_r32   
  movq (%rsp), %rbx             #  50    0x137668  4      OPC=movq_r64_m64   
  movq 0x8(%rsp), %r12          #  51    0x13766c  5      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13         #  52    0x137671  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  53    0x137676  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  54    0x137679  3      OPC=addq_r64_r64   
  nop                           #  55    0x13767c  1      OPC=nop            
  nop                           #  56    0x13767d  1      OPC=nop            
  nop                           #  57    0x13767e  1      OPC=nop            
  nop                           #  58    0x13767f  1      OPC=nop            
  jmpq ._ungetwc_r              #  59    0x137680  5      OPC=jmpq_label_1   
  nop                           #  60    0x137685  1      OPC=nop            
  nop                           #  61    0x137686  1      OPC=nop            
  nop                           #  62    0x137687  1      OPC=nop            
  nop                           #  63    0x137688  1      OPC=nop            
  nop                           #  64    0x137689  1      OPC=nop            
  nop                           #  65    0x13768a  1      OPC=nop            
  nop                           #  66    0x13768b  1      OPC=nop            
  nop                           #  67    0x13768c  1      OPC=nop            
  nop                           #  68    0x13768d  1      OPC=nop            
  nop                           #  69    0x13768e  1      OPC=nop            
  nop                           #  70    0x13768f  1      OPC=nop            
  nop                           #  71    0x137690  1      OPC=nop            
  nop                           #  72    0x137691  1      OPC=nop            
  nop                           #  73    0x137692  1      OPC=nop            
  nop                           #  74    0x137693  1      OPC=nop            
  nop                           #  75    0x137694  1      OPC=nop            
  nop                           #  76    0x137695  1      OPC=nop            
  nop                           #  77    0x137696  1      OPC=nop            
  nop                           #  78    0x137697  1      OPC=nop            
  nop                           #  79    0x137698  1      OPC=nop            
  nop                           #  80    0x137699  1      OPC=nop            
  nop                           #  81    0x13769a  1      OPC=nop            
  nop                           #  82    0x13769b  1      OPC=nop            
  nop                           #  83    0x13769c  1      OPC=nop            
  nop                           #  84    0x13769d  1      OPC=nop            
  nop                           #  85    0x13769e  1      OPC=nop            
  nop                           #  86    0x13769f  1      OPC=nop            
                                                                             
.size ungetwc, .-ungetwc

