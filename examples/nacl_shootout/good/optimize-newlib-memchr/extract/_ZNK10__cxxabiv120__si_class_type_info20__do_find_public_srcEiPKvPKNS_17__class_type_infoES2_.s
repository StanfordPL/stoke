  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_
  .type _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, @function

#! file-offset 0x122a60
#! rip-offset  0xe2a60
#! capacity    128 bytes

# Text                                                                                           #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_:  #        0xe2a60  0      OPC=<label>         
  movl %edx, %edx                                                                                #  1     0xe2a60  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                #  2     0xe2a62  3      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                #  3     0xe2a65  2      OPC=movl_r32_r32    
  cmpl %edx, %r8d                                                                                #  4     0xe2a67  3      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                                                                                #  5     0xe2a6a  2      OPC=movl_r32_r32    
  je .L_e2aa0                                                                                    #  6     0xe2a6c  2      OPC=je_label        
  nop                                                                                            #  7     0xe2a6e  1      OPC=nop             
  nop                                                                                            #  8     0xe2a6f  1      OPC=nop             
  nop                                                                                            #  9     0xe2a70  1      OPC=nop             
  nop                                                                                            #  10    0xe2a71  1      OPC=nop             
  nop                                                                                            #  11    0xe2a72  1      OPC=nop             
  nop                                                                                            #  12    0xe2a73  1      OPC=nop             
  nop                                                                                            #  13    0xe2a74  1      OPC=nop             
  nop                                                                                            #  14    0xe2a75  1      OPC=nop             
  nop                                                                                            #  15    0xe2a76  1      OPC=nop             
  nop                                                                                            #  16    0xe2a77  1      OPC=nop             
  nop                                                                                            #  17    0xe2a78  1      OPC=nop             
  nop                                                                                            #  18    0xe2a79  1      OPC=nop             
  nop                                                                                            #  19    0xe2a7a  1      OPC=nop             
  nop                                                                                            #  20    0xe2a7b  1      OPC=nop             
  nop                                                                                            #  21    0xe2a7c  1      OPC=nop             
  nop                                                                                            #  22    0xe2a7d  1      OPC=nop             
  nop                                                                                            #  23    0xe2a7e  1      OPC=nop             
  nop                                                                                            #  24    0xe2a7f  1      OPC=nop             
.L_e2a80:                                                                                        #        0xe2a80  0      OPC=<label>         
  movl %edi, %edi                                                                                #  25    0xe2a80  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edi                                                                    #  26    0xe2a82  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                #  27    0xe2a87  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                       #  28    0xe2a89  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                #  29    0xe2a8d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                                   #  30    0xe2a8f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                                         #  31    0xe2a94  6      OPC=andl_r32_imm32  
  nop                                                                                            #  32    0xe2a9a  1      OPC=nop             
  nop                                                                                            #  33    0xe2a9b  1      OPC=nop             
  nop                                                                                            #  34    0xe2a9c  1      OPC=nop             
  addq %r15, %rax                                                                                #  35    0xe2a9d  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                      #  36    0xe2aa0  2      OPC=jmpq_r64        
  nop                                                                                            #  37    0xe2aa2  1      OPC=nop             
  nop                                                                                            #  38    0xe2aa3  1      OPC=nop             
  nop                                                                                            #  39    0xe2aa4  1      OPC=nop             
  nop                                                                                            #  40    0xe2aa5  1      OPC=nop             
.L_e2aa0:                                                                                        #        0xe2aa6  0      OPC=<label>         
  movl %edi, %edi                                                                                #  41    0xe2aa6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax                                                                    #  42    0xe2aa8  5      OPC=movl_r32_m32    
  movl %ecx, %ecx                                                                                #  43    0xe2aad  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rcx,1), %eax                                                                    #  44    0xe2aaf  5      OPC=cmpl_r32_m32    
  jne .L_e2a80                                                                                   #  45    0xe2ab4  2      OPC=jne_label       
  popq %r11                                                                                      #  46    0xe2ab6  2      OPC=popq_r64_1      
  movl $0x6, %eax                                                                                #  47    0xe2ab8  5      OPC=movl_r32_imm32  
  nop                                                                                            #  48    0xe2abd  1      OPC=nop             
  nop                                                                                            #  49    0xe2abe  1      OPC=nop             
  nop                                                                                            #  50    0xe2abf  1      OPC=nop             
  nop                                                                                            #  51    0xe2ac0  1      OPC=nop             
  nop                                                                                            #  52    0xe2ac1  1      OPC=nop             
  nop                                                                                            #  53    0xe2ac2  1      OPC=nop             
  nop                                                                                            #  54    0xe2ac3  1      OPC=nop             
  nop                                                                                            #  55    0xe2ac4  1      OPC=nop             
  nop                                                                                            #  56    0xe2ac5  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                        #  57    0xe2ac6  7      OPC=andl_r32_imm32  
  nop                                                                                            #  58    0xe2acd  1      OPC=nop             
  nop                                                                                            #  59    0xe2ace  1      OPC=nop             
  nop                                                                                            #  60    0xe2acf  1      OPC=nop             
  nop                                                                                            #  61    0xe2ad0  1      OPC=nop             
  addq %r15, %r11                                                                                #  62    0xe2ad1  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                      #  63    0xe2ad4  3      OPC=jmpq_r64        
  nop                                                                                            #  64    0xe2ad7  1      OPC=nop             
  nop                                                                                            #  65    0xe2ad8  1      OPC=nop             
  nop                                                                                            #  66    0xe2ad9  1      OPC=nop             
  nop                                                                                            #  67    0xe2ada  1      OPC=nop             
  nop                                                                                            #  68    0xe2adb  1      OPC=nop             
  nop                                                                                            #  69    0xe2adc  1      OPC=nop             
  nop                                                                                            #  70    0xe2add  1      OPC=nop             
  nop                                                                                            #  71    0xe2ade  1      OPC=nop             
  nop                                                                                            #  72    0xe2adf  1      OPC=nop             
  nop                                                                                            #  73    0xe2ae0  1      OPC=nop             
  nop                                                                                            #  74    0xe2ae1  1      OPC=nop             
  nop                                                                                            #  75    0xe2ae2  1      OPC=nop             
  nop                                                                                            #  76    0xe2ae3  1      OPC=nop             
  nop                                                                                            #  77    0xe2ae4  1      OPC=nop             
  nop                                                                                            #  78    0xe2ae5  1      OPC=nop             
  nop                                                                                            #  79    0xe2ae6  1      OPC=nop             
  nop                                                                                            #  80    0xe2ae7  1      OPC=nop             
  nop                                                                                            #  81    0xe2ae8  1      OPC=nop             
  nop                                                                                            #  82    0xe2ae9  1      OPC=nop             
  nop                                                                                            #  83    0xe2aea  1      OPC=nop             
  nop                                                                                            #  84    0xe2aeb  1      OPC=nop             
  nop                                                                                            #  85    0xe2aec  1      OPC=nop             
                                                                                                                                              
.size _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, .-_ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_

