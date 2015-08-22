  .text
  .globl strtof
  .type strtof, @function

#! file-offset 0x16c320
#! rip-offset  0x12c320
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.strtof:                    #        0x12c320  0      OPC=<label>           
  movq %rbx, -0x10(%rsp)    #  1     0x12c320  5      OPC=movq_m64_r64      
  movq %r12, -0x8(%rsp)     #  2     0x12c325  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  3     0x12c32a  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  4     0x12c32d  3      OPC=addq_r64_r64      
  movl %edi, %ebx           #  5     0x12c330  2      OPC=movl_r32_r32      
  movl %esi, %r12d          #  6     0x12c332  3      OPC=movl_r32_r32      
  nop                       #  7     0x12c335  1      OPC=nop               
  nop                       #  8     0x12c336  1      OPC=nop               
  nop                       #  9     0x12c337  1      OPC=nop               
  nop                       #  10    0x12c338  1      OPC=nop               
  nop                       #  11    0x12c339  1      OPC=nop               
  nop                       #  12    0x12c33a  1      OPC=nop               
  callq .__nacl_read_tp     #  13    0x12c33b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  14    0x12c340  7      OPC=leaq_r64_m16      
  movl %r12d, %edx          #  15    0x12c347  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  16    0x12c34a  2      OPC=movl_r32_r32      
  movl %eax, %eax           #  17    0x12c34c  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  18    0x12c34e  4      OPC=movl_r32_m32      
  nop                       #  19    0x12c352  1      OPC=nop               
  nop                       #  20    0x12c353  1      OPC=nop               
  nop                       #  21    0x12c354  1      OPC=nop               
  nop                       #  22    0x12c355  1      OPC=nop               
  nop                       #  23    0x12c356  1      OPC=nop               
  nop                       #  24    0x12c357  1      OPC=nop               
  nop                       #  25    0x12c358  1      OPC=nop               
  nop                       #  26    0x12c359  1      OPC=nop               
  nop                       #  27    0x12c35a  1      OPC=nop               
  callq ._strtod_r          #  28    0x12c35b  5      OPC=callq_label       
  movapd %xmm0, %xmm1       #  29    0x12c360  4      OPC=movapd_xmm_xmm    
  movsd %xmm1, (%rsp)       #  30    0x12c364  5      OPC=movsd_m64_xmm     
  nop                       #  31    0x12c369  1      OPC=nop               
  nop                       #  32    0x12c36a  1      OPC=nop               
  nop                       #  33    0x12c36b  1      OPC=nop               
  nop                       #  34    0x12c36c  1      OPC=nop               
  nop                       #  35    0x12c36d  1      OPC=nop               
  nop                       #  36    0x12c36e  1      OPC=nop               
  nop                       #  37    0x12c36f  1      OPC=nop               
  nop                       #  38    0x12c370  1      OPC=nop               
  nop                       #  39    0x12c371  1      OPC=nop               
  nop                       #  40    0x12c372  1      OPC=nop               
  nop                       #  41    0x12c373  1      OPC=nop               
  nop                       #  42    0x12c374  1      OPC=nop               
  nop                       #  43    0x12c375  1      OPC=nop               
  nop                       #  44    0x12c376  1      OPC=nop               
  nop                       #  45    0x12c377  1      OPC=nop               
  nop                       #  46    0x12c378  1      OPC=nop               
  nop                       #  47    0x12c379  1      OPC=nop               
  nop                       #  48    0x12c37a  1      OPC=nop               
  callq .__fpclassifyd      #  49    0x12c37b  5      OPC=callq_label       
  testl %eax, %eax          #  50    0x12c380  2      OPC=testl_r32_r32     
  movsd (%rsp), %xmm1       #  51    0x12c382  5      OPC=movsd_xmm_m64     
  je .L_12c3c0              #  52    0x12c387  2      OPC=je_label          
  movq 0x18(%rsp), %rbx     #  53    0x12c389  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  54    0x12c38e  5      OPC=movq_r64_m64      
  addl $0x28, %esp          #  55    0x12c393  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  56    0x12c396  3      OPC=addq_r64_r64      
  popq %r11                 #  57    0x12c399  2      OPC=popq_r64_1        
  unpcklpd %xmm1, %xmm1     #  58    0x12c39b  4      OPC=unpcklpd_xmm_xmm  
  nop                       #  59    0x12c39f  1      OPC=nop               
  cvtpd2ps %xmm1, %xmm0     #  60    0x12c3a0  4      OPC=cvtpd2ps_xmm_xmm  
  andl $0xffffffe0, %r11d   #  61    0x12c3a4  7      OPC=andl_r32_imm32    
  nop                       #  62    0x12c3ab  1      OPC=nop               
  nop                       #  63    0x12c3ac  1      OPC=nop               
  nop                       #  64    0x12c3ad  1      OPC=nop               
  nop                       #  65    0x12c3ae  1      OPC=nop               
  addq %r15, %r11           #  66    0x12c3af  3      OPC=addq_r64_r64      
  jmpq %r11                 #  67    0x12c3b2  3      OPC=jmpq_r64          
  nop                       #  68    0x12c3b5  1      OPC=nop               
  nop                       #  69    0x12c3b6  1      OPC=nop               
  nop                       #  70    0x12c3b7  1      OPC=nop               
  nop                       #  71    0x12c3b8  1      OPC=nop               
  nop                       #  72    0x12c3b9  1      OPC=nop               
  nop                       #  73    0x12c3ba  1      OPC=nop               
  nop                       #  74    0x12c3bb  1      OPC=nop               
  nop                       #  75    0x12c3bc  1      OPC=nop               
  nop                       #  76    0x12c3bd  1      OPC=nop               
  nop                       #  77    0x12c3be  1      OPC=nop               
  nop                       #  78    0x12c3bf  1      OPC=nop               
  nop                       #  79    0x12c3c0  1      OPC=nop               
  nop                       #  80    0x12c3c1  1      OPC=nop               
  nop                       #  81    0x12c3c2  1      OPC=nop               
  nop                       #  82    0x12c3c3  1      OPC=nop               
  nop                       #  83    0x12c3c4  1      OPC=nop               
  nop                       #  84    0x12c3c5  1      OPC=nop               
  nop                       #  85    0x12c3c6  1      OPC=nop               
.L_12c3c0:                  #        0x12c3c7  0      OPC=<label>           
  movq 0x18(%rsp), %rbx     #  86    0x12c3c7  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  87    0x12c3cc  5      OPC=movq_r64_m64      
  xorl %edi, %edi           #  88    0x12c3d1  2      OPC=xorl_r32_r32      
  addl $0x28, %esp          #  89    0x12c3d3  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  90    0x12c3d6  3      OPC=addq_r64_r64      
  jmpq .nanf                #  91    0x12c3d9  5      OPC=jmpq_label_1      
  nop                       #  92    0x12c3de  1      OPC=nop               
  nop                       #  93    0x12c3df  1      OPC=nop               
  nop                       #  94    0x12c3e0  1      OPC=nop               
  nop                       #  95    0x12c3e1  1      OPC=nop               
  nop                       #  96    0x12c3e2  1      OPC=nop               
  nop                       #  97    0x12c3e3  1      OPC=nop               
  nop                       #  98    0x12c3e4  1      OPC=nop               
  nop                       #  99    0x12c3e5  1      OPC=nop               
  nop                       #  100   0x12c3e6  1      OPC=nop               
                                                                            
.size strtof, .-strtof

