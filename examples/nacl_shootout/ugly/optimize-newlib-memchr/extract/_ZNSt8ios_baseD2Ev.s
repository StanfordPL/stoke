  .text
  .globl _ZNSt8ios_baseD2Ev
  .type _ZNSt8ios_baseD2Ev, @function

#! file-offset 0x128dc0
#! rip-offset  0xe8dc0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_baseD2Ev:                                   #        0xe8dc0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xe8dc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xe8dc1  2      OPC=movl_r32_r32    
  xorl %esi, %esi                                      #  3     0xe8dc3  2      OPC=xorl_r32_r32    
  movl %ebx, %edi                                      #  4     0xe8dc5  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  5     0xe8dc7  2      OPC=movl_r32_r32    
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe8dc9  8      OPC=movl_m32_imm32  
  nop                                                  #  7     0xe8dd1  1      OPC=nop             
  nop                                                  #  8     0xe8dd2  1      OPC=nop             
  nop                                                  #  9     0xe8dd3  1      OPC=nop             
  nop                                                  #  10    0xe8dd4  1      OPC=nop             
  nop                                                  #  11    0xe8dd5  1      OPC=nop             
  nop                                                  #  12    0xe8dd6  1      OPC=nop             
  nop                                                  #  13    0xe8dd7  1      OPC=nop             
  nop                                                  #  14    0xe8dd8  1      OPC=nop             
  nop                                                  #  15    0xe8dd9  1      OPC=nop             
  nop                                                  #  16    0xe8dda  1      OPC=nop             
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe8ddb  5      OPC=callq_label     
  movl %ebx, %edi                                      #  18    0xe8de0  2      OPC=movl_r32_r32    
  nop                                                  #  19    0xe8de2  1      OPC=nop             
  nop                                                  #  20    0xe8de3  1      OPC=nop             
  nop                                                  #  21    0xe8de4  1      OPC=nop             
  nop                                                  #  22    0xe8de5  1      OPC=nop             
  nop                                                  #  23    0xe8de6  1      OPC=nop             
  nop                                                  #  24    0xe8de7  1      OPC=nop             
  nop                                                  #  25    0xe8de8  1      OPC=nop             
  nop                                                  #  26    0xe8de9  1      OPC=nop             
  nop                                                  #  27    0xe8dea  1      OPC=nop             
  nop                                                  #  28    0xe8deb  1      OPC=nop             
  nop                                                  #  29    0xe8dec  1      OPC=nop             
  nop                                                  #  30    0xe8ded  1      OPC=nop             
  nop                                                  #  31    0xe8dee  1      OPC=nop             
  nop                                                  #  32    0xe8def  1      OPC=nop             
  nop                                                  #  33    0xe8df0  1      OPC=nop             
  nop                                                  #  34    0xe8df1  1      OPC=nop             
  nop                                                  #  35    0xe8df2  1      OPC=nop             
  nop                                                  #  36    0xe8df3  1      OPC=nop             
  nop                                                  #  37    0xe8df4  1      OPC=nop             
  nop                                                  #  38    0xe8df5  1      OPC=nop             
  nop                                                  #  39    0xe8df6  1      OPC=nop             
  nop                                                  #  40    0xe8df7  1      OPC=nop             
  nop                                                  #  41    0xe8df8  1      OPC=nop             
  nop                                                  #  42    0xe8df9  1      OPC=nop             
  nop                                                  #  43    0xe8dfa  1      OPC=nop             
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe8dfb  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  45    0xe8e00  2      OPC=movl_r32_r32    
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe8e02  5      OPC=movl_r32_m32    
  leal 0x24(%rbx), %eax                                #  47    0xe8e07  3      OPC=leal_r32_m16    
  cmpl %edi, %eax                                      #  48    0xe8e0a  2      OPC=cmpl_r32_r32    
  je .L_e8e40                                          #  49    0xe8e0c  2      OPC=je_label        
  testq %rdi, %rdi                                     #  50    0xe8e0e  3      OPC=testq_r64_r64   
  je .L_e8e20                                          #  51    0xe8e11  2      OPC=je_label        
  nop                                                  #  52    0xe8e13  1      OPC=nop             
  nop                                                  #  53    0xe8e14  1      OPC=nop             
  nop                                                  #  54    0xe8e15  1      OPC=nop             
  nop                                                  #  55    0xe8e16  1      OPC=nop             
  nop                                                  #  56    0xe8e17  1      OPC=nop             
  nop                                                  #  57    0xe8e18  1      OPC=nop             
  nop                                                  #  58    0xe8e19  1      OPC=nop             
  nop                                                  #  59    0xe8e1a  1      OPC=nop             
  callq ._ZdaPv                                        #  60    0xe8e1b  5      OPC=callq_label     
.L_e8e20:                                              #        0xe8e20  0      OPC=<label>         
  movl %ebx, %ebx                                      #  61    0xe8e20  2      OPC=movl_r32_r32    
  movl $0x0, 0x68(%r15,%rbx,1)                         #  62    0xe8e22  9      OPC=movl_m32_imm32  
  nop                                                  #  63    0xe8e2b  1      OPC=nop             
  nop                                                  #  64    0xe8e2c  1      OPC=nop             
  nop                                                  #  65    0xe8e2d  1      OPC=nop             
  nop                                                  #  66    0xe8e2e  1      OPC=nop             
  nop                                                  #  67    0xe8e2f  1      OPC=nop             
  nop                                                  #  68    0xe8e30  1      OPC=nop             
  nop                                                  #  69    0xe8e31  1      OPC=nop             
  nop                                                  #  70    0xe8e32  1      OPC=nop             
  nop                                                  #  71    0xe8e33  1      OPC=nop             
  nop                                                  #  72    0xe8e34  1      OPC=nop             
  nop                                                  #  73    0xe8e35  1      OPC=nop             
  nop                                                  #  74    0xe8e36  1      OPC=nop             
  nop                                                  #  75    0xe8e37  1      OPC=nop             
  nop                                                  #  76    0xe8e38  1      OPC=nop             
  nop                                                  #  77    0xe8e39  1      OPC=nop             
  nop                                                  #  78    0xe8e3a  1      OPC=nop             
  nop                                                  #  79    0xe8e3b  1      OPC=nop             
  nop                                                  #  80    0xe8e3c  1      OPC=nop             
  nop                                                  #  81    0xe8e3d  1      OPC=nop             
  nop                                                  #  82    0xe8e3e  1      OPC=nop             
  nop                                                  #  83    0xe8e3f  1      OPC=nop             
.L_e8e40:                                              #        0xe8e40  0      OPC=<label>         
  leal 0x6c(%rbx), %edi                                #  84    0xe8e40  3      OPC=leal_r32_m16    
  popq %rbx                                            #  85    0xe8e43  1      OPC=popq_r64_1      
  jmpq ._ZNSt6localeD1Ev                               #  86    0xe8e44  5      OPC=jmpq_label_1    
  nop                                                  #  87    0xe8e49  1      OPC=nop             
  nop                                                  #  88    0xe8e4a  1      OPC=nop             
  nop                                                  #  89    0xe8e4b  1      OPC=nop             
  nop                                                  #  90    0xe8e4c  1      OPC=nop             
  nop                                                  #  91    0xe8e4d  1      OPC=nop             
  nop                                                  #  92    0xe8e4e  1      OPC=nop             
  nop                                                  #  93    0xe8e4f  1      OPC=nop             
  nop                                                  #  94    0xe8e50  1      OPC=nop             
  nop                                                  #  95    0xe8e51  1      OPC=nop             
  nop                                                  #  96    0xe8e52  1      OPC=nop             
  nop                                                  #  97    0xe8e53  1      OPC=nop             
  nop                                                  #  98    0xe8e54  1      OPC=nop             
  nop                                                  #  99    0xe8e55  1      OPC=nop             
  nop                                                  #  100   0xe8e56  1      OPC=nop             
  nop                                                  #  101   0xe8e57  1      OPC=nop             
  nop                                                  #  102   0xe8e58  1      OPC=nop             
  nop                                                  #  103   0xe8e59  1      OPC=nop             
  nop                                                  #  104   0xe8e5a  1      OPC=nop             
  nop                                                  #  105   0xe8e5b  1      OPC=nop             
  nop                                                  #  106   0xe8e5c  1      OPC=nop             
  nop                                                  #  107   0xe8e5d  1      OPC=nop             
  nop                                                  #  108   0xe8e5e  1      OPC=nop             
  nop                                                  #  109   0xe8e5f  1      OPC=nop             
                                                                                                    
.size _ZNSt8ios_baseD2Ev, .-_ZNSt8ios_baseD2Ev

