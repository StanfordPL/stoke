  .text
  .globl _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj
  .type _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj, @function

#! file-offset 0xbdc00
#! rip-offset  0x7dc00
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj:        #        0x7dc00  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7dc00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7dc01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7dc03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7dc05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7dc07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7dc0a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0x7dc0d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7dc0f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0x7dc11  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0x7dc16  3      OPC=setne_r8        
  nop                                                  #  11    0x7dc19  1      OPC=nop             
  nop                                                  #  12    0x7dc1a  1      OPC=nop             
  nop                                                  #  13    0x7dc1b  1      OPC=nop             
  nop                                                  #  14    0x7dc1c  1      OPC=nop             
  nop                                                  #  15    0x7dc1d  1      OPC=nop             
  nop                                                  #  16    0x7dc1e  1      OPC=nop             
  nop                                                  #  17    0x7dc1f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0x7dc20  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  19    0x7dc22  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0x7dc2a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0x7dc2c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0x7dc2e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0x7dc33  1      OPC=nop             
  nop                                                  #  24    0x7dc34  1      OPC=nop             
  nop                                                  #  25    0x7dc35  1      OPC=nop             
  nop                                                  #  26    0x7dc36  1      OPC=nop             
  nop                                                  #  27    0x7dc37  1      OPC=nop             
  nop                                                  #  28    0x7dc38  1      OPC=nop             
  nop                                                  #  29    0x7dc39  1      OPC=nop             
  nop                                                  #  30    0x7dc3a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  31    0x7dc3b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0x7dc40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0x7dc43  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0x7dc46  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0x7dc47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0x7dc49  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0x7dc50  1      OPC=nop             
  nop                                                  #  38    0x7dc51  1      OPC=nop             
  nop                                                  #  39    0x7dc52  1      OPC=nop             
  nop                                                  #  40    0x7dc53  1      OPC=nop             
  addq %r15, %r11                                      #  41    0x7dc54  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0x7dc57  3      OPC=jmpq_r64        
  nop                                                  #  43    0x7dc5a  1      OPC=nop             
  nop                                                  #  44    0x7dc5b  1      OPC=nop             
  nop                                                  #  45    0x7dc5c  1      OPC=nop             
  nop                                                  #  46    0x7dc5d  1      OPC=nop             
  nop                                                  #  47    0x7dc5e  1      OPC=nop             
  nop                                                  #  48    0x7dc5f  1      OPC=nop             
  nop                                                  #  49    0x7dc60  1      OPC=nop             
  nop                                                  #  50    0x7dc61  1      OPC=nop             
  nop                                                  #  51    0x7dc62  1      OPC=nop             
  nop                                                  #  52    0x7dc63  1      OPC=nop             
  nop                                                  #  53    0x7dc64  1      OPC=nop             
  nop                                                  #  54    0x7dc65  1      OPC=nop             
  nop                                                  #  55    0x7dc66  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0x7dc67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0x7dc69  4      OPC=movl_m32_r32    
  nop                                                  #  58    0x7dc6d  1      OPC=nop             
  nop                                                  #  59    0x7dc6e  1      OPC=nop             
  nop                                                  #  60    0x7dc6f  1      OPC=nop             
  nop                                                  #  61    0x7dc70  1      OPC=nop             
  nop                                                  #  62    0x7dc71  1      OPC=nop             
  nop                                                  #  63    0x7dc72  1      OPC=nop             
  nop                                                  #  64    0x7dc73  1      OPC=nop             
  nop                                                  #  65    0x7dc74  1      OPC=nop             
  nop                                                  #  66    0x7dc75  1      OPC=nop             
  nop                                                  #  67    0x7dc76  1      OPC=nop             
  nop                                                  #  68    0x7dc77  1      OPC=nop             
  nop                                                  #  69    0x7dc78  1      OPC=nop             
  nop                                                  #  70    0x7dc79  1      OPC=nop             
  nop                                                  #  71    0x7dc7a  1      OPC=nop             
  nop                                                  #  72    0x7dc7b  1      OPC=nop             
  nop                                                  #  73    0x7dc7c  1      OPC=nop             
  nop                                                  #  74    0x7dc7d  1      OPC=nop             
  nop                                                  #  75    0x7dc7e  1      OPC=nop             
  nop                                                  #  76    0x7dc7f  1      OPC=nop             
  nop                                                  #  77    0x7dc80  1      OPC=nop             
  nop                                                  #  78    0x7dc81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0x7dc82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0x7dc87  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0x7dc8b  2      OPC=movl_r32_r32    
  nop                                                  #  82    0x7dc8d  1      OPC=nop             
  nop                                                  #  83    0x7dc8e  1      OPC=nop             
  nop                                                  #  84    0x7dc8f  1      OPC=nop             
  nop                                                  #  85    0x7dc90  1      OPC=nop             
  nop                                                  #  86    0x7dc91  1      OPC=nop             
  nop                                                  #  87    0x7dc92  1      OPC=nop             
  nop                                                  #  88    0x7dc93  1      OPC=nop             
  nop                                                  #  89    0x7dc94  1      OPC=nop             
  nop                                                  #  90    0x7dc95  1      OPC=nop             
  nop                                                  #  91    0x7dc96  1      OPC=nop             
  nop                                                  #  92    0x7dc97  1      OPC=nop             
  nop                                                  #  93    0x7dc98  1      OPC=nop             
  nop                                                  #  94    0x7dc99  1      OPC=nop             
  nop                                                  #  95    0x7dc9a  1      OPC=nop             
  nop                                                  #  96    0x7dc9b  1      OPC=nop             
  nop                                                  #  97    0x7dc9c  1      OPC=nop             
  nop                                                  #  98    0x7dc9d  1      OPC=nop             
  nop                                                  #  99    0x7dc9e  1      OPC=nop             
  nop                                                  #  100   0x7dc9f  1      OPC=nop             
  nop                                                  #  101   0x7dca0  1      OPC=nop             
  nop                                                  #  102   0x7dca1  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0x7dca2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj, .-_ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj

