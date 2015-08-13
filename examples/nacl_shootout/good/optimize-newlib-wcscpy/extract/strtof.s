  .text
  .globl strtof
  .type strtof, @function

#! file-offset 0x16b900
#! rip-offset  0x12b900
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.strtof:                    #        0x12b900  0      OPC=<label>           
  movq %rbx, -0x10(%rsp)    #  1     0x12b900  5      OPC=movq_m64_r64      
  movq %r12, -0x8(%rsp)     #  2     0x12b905  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  3     0x12b90a  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  4     0x12b90d  3      OPC=addq_r64_r64      
  movl %edi, %ebx           #  5     0x12b910  2      OPC=movl_r32_r32      
  movl %esi, %r12d          #  6     0x12b912  3      OPC=movl_r32_r32      
  nop                       #  7     0x12b915  1      OPC=nop               
  nop                       #  8     0x12b916  1      OPC=nop               
  nop                       #  9     0x12b917  1      OPC=nop               
  nop                       #  10    0x12b918  1      OPC=nop               
  nop                       #  11    0x12b919  1      OPC=nop               
  nop                       #  12    0x12b91a  1      OPC=nop               
  callq .__nacl_read_tp     #  13    0x12b91b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  14    0x12b920  7      OPC=leaq_r64_m16      
  movl %r12d, %edx          #  15    0x12b927  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  16    0x12b92a  2      OPC=movl_r32_r32      
  movl %eax, %eax           #  17    0x12b92c  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  18    0x12b92e  4      OPC=movl_r32_m32      
  nop                       #  19    0x12b932  1      OPC=nop               
  nop                       #  20    0x12b933  1      OPC=nop               
  nop                       #  21    0x12b934  1      OPC=nop               
  nop                       #  22    0x12b935  1      OPC=nop               
  nop                       #  23    0x12b936  1      OPC=nop               
  nop                       #  24    0x12b937  1      OPC=nop               
  nop                       #  25    0x12b938  1      OPC=nop               
  nop                       #  26    0x12b939  1      OPC=nop               
  nop                       #  27    0x12b93a  1      OPC=nop               
  callq ._strtod_r          #  28    0x12b93b  5      OPC=callq_label       
  movapd %xmm0, %xmm1       #  29    0x12b940  4      OPC=movapd_xmm_xmm    
  movsd %xmm1, (%rsp)       #  30    0x12b944  5      OPC=movsd_m64_xmm     
  nop                       #  31    0x12b949  1      OPC=nop               
  nop                       #  32    0x12b94a  1      OPC=nop               
  nop                       #  33    0x12b94b  1      OPC=nop               
  nop                       #  34    0x12b94c  1      OPC=nop               
  nop                       #  35    0x12b94d  1      OPC=nop               
  nop                       #  36    0x12b94e  1      OPC=nop               
  nop                       #  37    0x12b94f  1      OPC=nop               
  nop                       #  38    0x12b950  1      OPC=nop               
  nop                       #  39    0x12b951  1      OPC=nop               
  nop                       #  40    0x12b952  1      OPC=nop               
  nop                       #  41    0x12b953  1      OPC=nop               
  nop                       #  42    0x12b954  1      OPC=nop               
  nop                       #  43    0x12b955  1      OPC=nop               
  nop                       #  44    0x12b956  1      OPC=nop               
  nop                       #  45    0x12b957  1      OPC=nop               
  nop                       #  46    0x12b958  1      OPC=nop               
  nop                       #  47    0x12b959  1      OPC=nop               
  nop                       #  48    0x12b95a  1      OPC=nop               
  callq .__fpclassifyd      #  49    0x12b95b  5      OPC=callq_label       
  testl %eax, %eax          #  50    0x12b960  2      OPC=testl_r32_r32     
  movsd (%rsp), %xmm1       #  51    0x12b962  5      OPC=movsd_xmm_m64     
  je .L_12b9a0              #  52    0x12b967  2      OPC=je_label          
  movq 0x18(%rsp), %rbx     #  53    0x12b969  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  54    0x12b96e  5      OPC=movq_r64_m64      
  addl $0x28, %esp          #  55    0x12b973  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  56    0x12b976  3      OPC=addq_r64_r64      
  popq %r11                 #  57    0x12b979  2      OPC=popq_r64_1        
  unpcklpd %xmm1, %xmm1     #  58    0x12b97b  4      OPC=unpcklpd_xmm_xmm  
  nop                       #  59    0x12b97f  1      OPC=nop               
  cvtpd2ps %xmm1, %xmm0     #  60    0x12b980  4      OPC=cvtpd2ps_xmm_xmm  
  andl $0xffffffe0, %r11d   #  61    0x12b984  7      OPC=andl_r32_imm32    
  nop                       #  62    0x12b98b  1      OPC=nop               
  nop                       #  63    0x12b98c  1      OPC=nop               
  nop                       #  64    0x12b98d  1      OPC=nop               
  nop                       #  65    0x12b98e  1      OPC=nop               
  addq %r15, %r11           #  66    0x12b98f  3      OPC=addq_r64_r64      
  jmpq %r11                 #  67    0x12b992  3      OPC=jmpq_r64          
  nop                       #  68    0x12b995  1      OPC=nop               
  nop                       #  69    0x12b996  1      OPC=nop               
  nop                       #  70    0x12b997  1      OPC=nop               
  nop                       #  71    0x12b998  1      OPC=nop               
  nop                       #  72    0x12b999  1      OPC=nop               
  nop                       #  73    0x12b99a  1      OPC=nop               
  nop                       #  74    0x12b99b  1      OPC=nop               
  nop                       #  75    0x12b99c  1      OPC=nop               
  nop                       #  76    0x12b99d  1      OPC=nop               
  nop                       #  77    0x12b99e  1      OPC=nop               
  nop                       #  78    0x12b99f  1      OPC=nop               
  nop                       #  79    0x12b9a0  1      OPC=nop               
  nop                       #  80    0x12b9a1  1      OPC=nop               
  nop                       #  81    0x12b9a2  1      OPC=nop               
  nop                       #  82    0x12b9a3  1      OPC=nop               
  nop                       #  83    0x12b9a4  1      OPC=nop               
  nop                       #  84    0x12b9a5  1      OPC=nop               
  nop                       #  85    0x12b9a6  1      OPC=nop               
.L_12b9a0:                  #        0x12b9a7  0      OPC=<label>           
  movq 0x18(%rsp), %rbx     #  86    0x12b9a7  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  87    0x12b9ac  5      OPC=movq_r64_m64      
  xorl %edi, %edi           #  88    0x12b9b1  2      OPC=xorl_r32_r32      
  addl $0x28, %esp          #  89    0x12b9b3  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  90    0x12b9b6  3      OPC=addq_r64_r64      
  jmpq .nanf                #  91    0x12b9b9  5      OPC=jmpq_label_1      
  nop                       #  92    0x12b9be  1      OPC=nop               
  nop                       #  93    0x12b9bf  1      OPC=nop               
  nop                       #  94    0x12b9c0  1      OPC=nop               
  nop                       #  95    0x12b9c1  1      OPC=nop               
  nop                       #  96    0x12b9c2  1      OPC=nop               
  nop                       #  97    0x12b9c3  1      OPC=nop               
  nop                       #  98    0x12b9c4  1      OPC=nop               
  nop                       #  99    0x12b9c5  1      OPC=nop               
  nop                       #  100   0x12b9c6  1      OPC=nop               
                                                                            
.size strtof, .-strtof

