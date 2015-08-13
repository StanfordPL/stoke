  .text
  .globl _ZNSt8ios_baseD1Ev
  .type _ZNSt8ios_baseD1Ev, @function

#! file-offset 0x128300
#! rip-offset  0xe8300
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD1Ev:                                   #        0xe8300  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe8300  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe8301  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe8303  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe8305  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe8307  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe8309  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe8311  1      OPC=nop             
  nop                                                  #  8     0xe8312  1      OPC=nop             
  nop                                                  #  9     0xe8313  1      OPC=nop             
  nop                                                  #  10    0xe8314  1      OPC=nop             
  nop                                                  #  11    0xe8315  1      OPC=nop             
  nop                                                  #  12    0xe8316  1      OPC=nop             
  nop                                                  #  13    0xe8317  1      OPC=nop             
  nop                                                  #  14    0xe8318  1      OPC=nop             
  nop                                                  #  15    0xe8319  1      OPC=nop             
  nop                                                  #  16    0xe831a  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe831b  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe8320  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe8322  1      OPC=nop             
  nop                                                  #  20    0xe8323  1      OPC=nop             
  nop                                                  #  21    0xe8324  1      OPC=nop             
  nop                                                  #  22    0xe8325  1      OPC=nop             
  nop                                                  #  23    0xe8326  1      OPC=nop             
  nop                                                  #  24    0xe8327  1      OPC=nop             
  nop                                                  #  25    0xe8328  1      OPC=nop             
  nop                                                  #  26    0xe8329  1      OPC=nop             
  nop                                                  #  27    0xe832a  1      OPC=nop             
  nop                                                  #  28    0xe832b  1      OPC=nop             
  nop                                                  #  29    0xe832c  1      OPC=nop             
  nop                                                  #  30    0xe832d  1      OPC=nop             
  nop                                                  #  31    0xe832e  1      OPC=nop             
  nop                                                  #  32    0xe832f  1      OPC=nop             
  nop                                                  #  33    0xe8330  1      OPC=nop             
  nop                                                  #  34    0xe8331  1      OPC=nop             
  nop                                                  #  35    0xe8332  1      OPC=nop             
  nop                                                  #  36    0xe8333  1      OPC=nop             
  nop                                                  #  37    0xe8334  1      OPC=nop             
  nop                                                  #  38    0xe8335  1      OPC=nop             
  nop                                                  #  39    0xe8336  1      OPC=nop             
  nop                                                  #  40    0xe8337  1      OPC=nop             
  nop                                                  #  41    0xe8338  1      OPC=nop             
  nop                                                  #  42    0xe8339  1      OPC=nop             
  nop                                                  #  43    0xe833a  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe833b  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe8340  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe8342  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe8347  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe834a  2      OPC=cmpl_r32_r32    
  je .L_e8380                                          #  49    0xe834c  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe834e  3      OPC=testq_r64_r64   
  je .L_e8360                                          #  51    0xe8351  2      OPC=je_label        
  nop                                                  #  52    0xe8353  1      OPC=nop             
  nop                                                  #  53    0xe8354  1      OPC=nop             
  nop                                                  #  54    0xe8355  1      OPC=nop             
  nop                                                  #  55    0xe8356  1      OPC=nop             
  nop                                                  #  56    0xe8357  1      OPC=nop             
  nop                                                  #  57    0xe8358  1      OPC=nop             
  nop                                                  #  58    0xe8359  1      OPC=nop             
  nop                                                  #  59    0xe835a  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe835b  5      OPC=callq_label     
.L_e8360:                                              #        0xe8360  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8360  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8362  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe836b  1      OPC=nop             
  nop                                                  #  64    0xe836c  1      OPC=nop             
  nop                                                  #  65    0xe836d  1      OPC=nop             
  nop                                                  #  66    0xe836e  1      OPC=nop             
  nop                                                  #  67    0xe836f  1      OPC=nop             
  nop                                                  #  68    0xe8370  1      OPC=nop             
  nop                                                  #  69    0xe8371  1      OPC=nop             
  nop                                                  #  70    0xe8372  1      OPC=nop             
  nop                                                  #  71    0xe8373  1      OPC=nop             
  nop                                                  #  72    0xe8374  1      OPC=nop             
  nop                                                  #  73    0xe8375  1      OPC=nop             
  nop                                                  #  74    0xe8376  1      OPC=nop             
  nop                                                  #  75    0xe8377  1      OPC=nop             
  nop                                                  #  76    0xe8378  1      OPC=nop             
  nop                                                  #  77    0xe8379  1      OPC=nop             
  nop                                                  #  78    0xe837a  1      OPC=nop             
  nop                                                  #  79    0xe837b  1      OPC=nop             
  nop                                                  #  80    0xe837c  1      OPC=nop             
  nop                                                  #  81    0xe837d  1      OPC=nop             
  nop                                                  #  82    0xe837e  1      OPC=nop             
  nop                                                  #  83    0xe837f  1      OPC=nop             
.L_e8380:                                              #        0xe8380  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8380  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8383  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8384  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8389  1      OPC=nop             
  nop                                                  #  88    0xe838a  1      OPC=nop             
  nop                                                  #  89    0xe838b  1      OPC=nop             
  nop                                                  #  90    0xe838c  1      OPC=nop             
  nop                                                  #  91    0xe838d  1      OPC=nop             
  nop                                                  #  92    0xe838e  1      OPC=nop             
  nop                                                  #  93    0xe838f  1      OPC=nop             
  nop                                                  #  94    0xe8390  1      OPC=nop             
  nop                                                  #  95    0xe8391  1      OPC=nop             
  nop                                                  #  96    0xe8392  1      OPC=nop             
  nop                                                  #  97    0xe8393  1      OPC=nop             
  nop                                                  #  98    0xe8394  1      OPC=nop             
  nop                                                  #  99    0xe8395  1      OPC=nop             
  nop                                                  #  100   0xe8396  1      OPC=nop             
  nop                                                  #  101   0xe8397  1      OPC=nop             
  nop                                                  #  102   0xe8398  1      OPC=nop             
  nop                                                  #  103   0xe8399  1      OPC=nop             
  nop                                                  #  104   0xe839a  1      OPC=nop             
  nop                                                  #  105   0xe839b  1      OPC=nop             
  nop                                                  #  106   0xe839c  1      OPC=nop             
  nop                                                  #  107   0xe839d  1      OPC=nop             
  nop                                                  #  108   0xe839e  1      OPC=nop             
  nop                                                  #  109   0xe839f  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD1Ev, .-_ZNSt8ios_baseD1Ev

