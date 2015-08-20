  .text
  .globl strtof
  .type strtof, @function

#! file-offset 0x16bc00
#! rip-offset  0x12bc00
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.strtof:                    #        0x12bc00  0      OPC=<label>           
  movq %rbx, -0x10(%rsp)    #  1     0x12bc00  5      OPC=movq_m64_r64      
  movq %r12, -0x8(%rsp)     #  2     0x12bc05  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  3     0x12bc0a  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  4     0x12bc0d  3      OPC=addq_r64_r64      
  movl %edi, %ebx           #  5     0x12bc10  2      OPC=movl_r32_r32      
  movl %esi, %r12d          #  6     0x12bc12  3      OPC=movl_r32_r32      
  nop                       #  7     0x12bc15  1      OPC=nop               
  nop                       #  8     0x12bc16  1      OPC=nop               
  nop                       #  9     0x12bc17  1      OPC=nop               
  nop                       #  10    0x12bc18  1      OPC=nop               
  nop                       #  11    0x12bc19  1      OPC=nop               
  nop                       #  12    0x12bc1a  1      OPC=nop               
  callq .__nacl_read_tp     #  13    0x12bc1b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  14    0x12bc20  7      OPC=leaq_r64_m16      
  movl %r12d, %edx          #  15    0x12bc27  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  16    0x12bc2a  2      OPC=movl_r32_r32      
  movl %eax, %eax           #  17    0x12bc2c  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  18    0x12bc2e  4      OPC=movl_r32_m32      
  nop                       #  19    0x12bc32  1      OPC=nop               
  nop                       #  20    0x12bc33  1      OPC=nop               
  nop                       #  21    0x12bc34  1      OPC=nop               
  nop                       #  22    0x12bc35  1      OPC=nop               
  nop                       #  23    0x12bc36  1      OPC=nop               
  nop                       #  24    0x12bc37  1      OPC=nop               
  nop                       #  25    0x12bc38  1      OPC=nop               
  nop                       #  26    0x12bc39  1      OPC=nop               
  nop                       #  27    0x12bc3a  1      OPC=nop               
  callq ._strtod_r          #  28    0x12bc3b  5      OPC=callq_label       
  movapd %xmm0, %xmm1       #  29    0x12bc40  4      OPC=movapd_xmm_xmm    
  movsd %xmm1, (%rsp)       #  30    0x12bc44  5      OPC=movsd_m64_xmm     
  nop                       #  31    0x12bc49  1      OPC=nop               
  nop                       #  32    0x12bc4a  1      OPC=nop               
  nop                       #  33    0x12bc4b  1      OPC=nop               
  nop                       #  34    0x12bc4c  1      OPC=nop               
  nop                       #  35    0x12bc4d  1      OPC=nop               
  nop                       #  36    0x12bc4e  1      OPC=nop               
  nop                       #  37    0x12bc4f  1      OPC=nop               
  nop                       #  38    0x12bc50  1      OPC=nop               
  nop                       #  39    0x12bc51  1      OPC=nop               
  nop                       #  40    0x12bc52  1      OPC=nop               
  nop                       #  41    0x12bc53  1      OPC=nop               
  nop                       #  42    0x12bc54  1      OPC=nop               
  nop                       #  43    0x12bc55  1      OPC=nop               
  nop                       #  44    0x12bc56  1      OPC=nop               
  nop                       #  45    0x12bc57  1      OPC=nop               
  nop                       #  46    0x12bc58  1      OPC=nop               
  nop                       #  47    0x12bc59  1      OPC=nop               
  nop                       #  48    0x12bc5a  1      OPC=nop               
  callq .__fpclassifyd      #  49    0x12bc5b  5      OPC=callq_label       
  testl %eax, %eax          #  50    0x12bc60  2      OPC=testl_r32_r32     
  movsd (%rsp), %xmm1       #  51    0x12bc62  5      OPC=movsd_xmm_m64     
  je .L_12bca0              #  52    0x12bc67  2      OPC=je_label          
  movq 0x18(%rsp), %rbx     #  53    0x12bc69  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  54    0x12bc6e  5      OPC=movq_r64_m64      
  addl $0x28, %esp          #  55    0x12bc73  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  56    0x12bc76  3      OPC=addq_r64_r64      
  popq %r11                 #  57    0x12bc79  2      OPC=popq_r64_1        
  unpcklpd %xmm1, %xmm1     #  58    0x12bc7b  4      OPC=unpcklpd_xmm_xmm  
  nop                       #  59    0x12bc7f  1      OPC=nop               
  cvtpd2ps %xmm1, %xmm0     #  60    0x12bc80  4      OPC=cvtpd2ps_xmm_xmm  
  andl $0xffffffe0, %r11d   #  61    0x12bc84  7      OPC=andl_r32_imm32    
  nop                       #  62    0x12bc8b  1      OPC=nop               
  nop                       #  63    0x12bc8c  1      OPC=nop               
  nop                       #  64    0x12bc8d  1      OPC=nop               
  nop                       #  65    0x12bc8e  1      OPC=nop               
  addq %r15, %r11           #  66    0x12bc8f  3      OPC=addq_r64_r64      
  jmpq %r11                 #  67    0x12bc92  3      OPC=jmpq_r64          
  nop                       #  68    0x12bc95  1      OPC=nop               
  nop                       #  69    0x12bc96  1      OPC=nop               
  nop                       #  70    0x12bc97  1      OPC=nop               
  nop                       #  71    0x12bc98  1      OPC=nop               
  nop                       #  72    0x12bc99  1      OPC=nop               
  nop                       #  73    0x12bc9a  1      OPC=nop               
  nop                       #  74    0x12bc9b  1      OPC=nop               
  nop                       #  75    0x12bc9c  1      OPC=nop               
  nop                       #  76    0x12bc9d  1      OPC=nop               
  nop                       #  77    0x12bc9e  1      OPC=nop               
  nop                       #  78    0x12bc9f  1      OPC=nop               
  nop                       #  79    0x12bca0  1      OPC=nop               
  nop                       #  80    0x12bca1  1      OPC=nop               
  nop                       #  81    0x12bca2  1      OPC=nop               
  nop                       #  82    0x12bca3  1      OPC=nop               
  nop                       #  83    0x12bca4  1      OPC=nop               
  nop                       #  84    0x12bca5  1      OPC=nop               
  nop                       #  85    0x12bca6  1      OPC=nop               
.L_12bca0:                  #        0x12bca7  0      OPC=<label>           
  movq 0x18(%rsp), %rbx     #  86    0x12bca7  5      OPC=movq_r64_m64      
  movq 0x20(%rsp), %r12     #  87    0x12bcac  5      OPC=movq_r64_m64      
  xorl %edi, %edi           #  88    0x12bcb1  2      OPC=xorl_r32_r32      
  addl $0x28, %esp          #  89    0x12bcb3  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  90    0x12bcb6  3      OPC=addq_r64_r64      
  jmpq .nanf                #  91    0x12bcb9  5      OPC=jmpq_label_1      
  nop                       #  92    0x12bcbe  1      OPC=nop               
  nop                       #  93    0x12bcbf  1      OPC=nop               
  nop                       #  94    0x12bcc0  1      OPC=nop               
  nop                       #  95    0x12bcc1  1      OPC=nop               
  nop                       #  96    0x12bcc2  1      OPC=nop               
  nop                       #  97    0x12bcc3  1      OPC=nop               
  nop                       #  98    0x12bcc4  1      OPC=nop               
  nop                       #  99    0x12bcc5  1      OPC=nop               
  nop                       #  100   0x12bcc6  1      OPC=nop               
                                                                            
.size strtof, .-strtof

