  .text
  .globl _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj
  .type _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj, @function

#! file-offset 0xbdb60
#! rip-offset  0x7db60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj:        #        0x7db60  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7db60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7db61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7db63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7db65  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7db67  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7db6a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0x7db6d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7db6f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0x7db71  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0x7db76  3      OPC=setne_r8        
  nop                                                  #  11    0x7db79  1      OPC=nop             
  nop                                                  #  12    0x7db7a  1      OPC=nop             
  nop                                                  #  13    0x7db7b  1      OPC=nop             
  nop                                                  #  14    0x7db7c  1      OPC=nop             
  nop                                                  #  15    0x7db7d  1      OPC=nop             
  nop                                                  #  16    0x7db7e  1      OPC=nop             
  nop                                                  #  17    0x7db7f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0x7db80  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  19    0x7db82  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0x7db8a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0x7db8c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0x7db8e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0x7db93  1      OPC=nop             
  nop                                                  #  24    0x7db94  1      OPC=nop             
  nop                                                  #  25    0x7db95  1      OPC=nop             
  nop                                                  #  26    0x7db96  1      OPC=nop             
  nop                                                  #  27    0x7db97  1      OPC=nop             
  nop                                                  #  28    0x7db98  1      OPC=nop             
  nop                                                  #  29    0x7db99  1      OPC=nop             
  nop                                                  #  30    0x7db9a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  31    0x7db9b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0x7dba0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0x7dba3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0x7dba6  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0x7dba7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0x7dba9  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0x7dbb0  1      OPC=nop             
  nop                                                  #  38    0x7dbb1  1      OPC=nop             
  nop                                                  #  39    0x7dbb2  1      OPC=nop             
  nop                                                  #  40    0x7dbb3  1      OPC=nop             
  addq %r15, %r11                                      #  41    0x7dbb4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0x7dbb7  3      OPC=jmpq_r64        
  nop                                                  #  43    0x7dbba  1      OPC=nop             
  nop                                                  #  44    0x7dbbb  1      OPC=nop             
  nop                                                  #  45    0x7dbbc  1      OPC=nop             
  nop                                                  #  46    0x7dbbd  1      OPC=nop             
  nop                                                  #  47    0x7dbbe  1      OPC=nop             
  nop                                                  #  48    0x7dbbf  1      OPC=nop             
  nop                                                  #  49    0x7dbc0  1      OPC=nop             
  nop                                                  #  50    0x7dbc1  1      OPC=nop             
  nop                                                  #  51    0x7dbc2  1      OPC=nop             
  nop                                                  #  52    0x7dbc3  1      OPC=nop             
  nop                                                  #  53    0x7dbc4  1      OPC=nop             
  nop                                                  #  54    0x7dbc5  1      OPC=nop             
  nop                                                  #  55    0x7dbc6  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0x7dbc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0x7dbc9  4      OPC=movl_m32_r32    
  nop                                                  #  58    0x7dbcd  1      OPC=nop             
  nop                                                  #  59    0x7dbce  1      OPC=nop             
  nop                                                  #  60    0x7dbcf  1      OPC=nop             
  nop                                                  #  61    0x7dbd0  1      OPC=nop             
  nop                                                  #  62    0x7dbd1  1      OPC=nop             
  nop                                                  #  63    0x7dbd2  1      OPC=nop             
  nop                                                  #  64    0x7dbd3  1      OPC=nop             
  nop                                                  #  65    0x7dbd4  1      OPC=nop             
  nop                                                  #  66    0x7dbd5  1      OPC=nop             
  nop                                                  #  67    0x7dbd6  1      OPC=nop             
  nop                                                  #  68    0x7dbd7  1      OPC=nop             
  nop                                                  #  69    0x7dbd8  1      OPC=nop             
  nop                                                  #  70    0x7dbd9  1      OPC=nop             
  nop                                                  #  71    0x7dbda  1      OPC=nop             
  nop                                                  #  72    0x7dbdb  1      OPC=nop             
  nop                                                  #  73    0x7dbdc  1      OPC=nop             
  nop                                                  #  74    0x7dbdd  1      OPC=nop             
  nop                                                  #  75    0x7dbde  1      OPC=nop             
  nop                                                  #  76    0x7dbdf  1      OPC=nop             
  nop                                                  #  77    0x7dbe0  1      OPC=nop             
  nop                                                  #  78    0x7dbe1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0x7dbe2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0x7dbe7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0x7dbeb  2      OPC=movl_r32_r32    
  nop                                                  #  82    0x7dbed  1      OPC=nop             
  nop                                                  #  83    0x7dbee  1      OPC=nop             
  nop                                                  #  84    0x7dbef  1      OPC=nop             
  nop                                                  #  85    0x7dbf0  1      OPC=nop             
  nop                                                  #  86    0x7dbf1  1      OPC=nop             
  nop                                                  #  87    0x7dbf2  1      OPC=nop             
  nop                                                  #  88    0x7dbf3  1      OPC=nop             
  nop                                                  #  89    0x7dbf4  1      OPC=nop             
  nop                                                  #  90    0x7dbf5  1      OPC=nop             
  nop                                                  #  91    0x7dbf6  1      OPC=nop             
  nop                                                  #  92    0x7dbf7  1      OPC=nop             
  nop                                                  #  93    0x7dbf8  1      OPC=nop             
  nop                                                  #  94    0x7dbf9  1      OPC=nop             
  nop                                                  #  95    0x7dbfa  1      OPC=nop             
  nop                                                  #  96    0x7dbfb  1      OPC=nop             
  nop                                                  #  97    0x7dbfc  1      OPC=nop             
  nop                                                  #  98    0x7dbfd  1      OPC=nop             
  nop                                                  #  99    0x7dbfe  1      OPC=nop             
  nop                                                  #  100   0x7dbff  1      OPC=nop             
  nop                                                  #  101   0x7dc00  1      OPC=nop             
  nop                                                  #  102   0x7dc01  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0x7dc02  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj, .-_ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj

