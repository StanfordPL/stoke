  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_
  .type _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, @function

#! file-offset 0x122040
#! rip-offset  0xe2040
#! capacity    128 bytes

# Text                                                                                           #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_:  #        0xe2040  0      OPC=<label>         
  movl %edx, %edx                                                                                #  1     0xe2040  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                #  2     0xe2042  3      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                #  3     0xe2045  2      OPC=movl_r32_r32    
  cmpl %edx, %r8d                                                                                #  4     0xe2047  3      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                                                                                #  5     0xe204a  2      OPC=movl_r32_r32    
  je .L_e2080                                                                                    #  6     0xe204c  2      OPC=je_label        
  nop                                                                                            #  7     0xe204e  1      OPC=nop             
  nop                                                                                            #  8     0xe204f  1      OPC=nop             
  nop                                                                                            #  9     0xe2050  1      OPC=nop             
  nop                                                                                            #  10    0xe2051  1      OPC=nop             
  nop                                                                                            #  11    0xe2052  1      OPC=nop             
  nop                                                                                            #  12    0xe2053  1      OPC=nop             
  nop                                                                                            #  13    0xe2054  1      OPC=nop             
  nop                                                                                            #  14    0xe2055  1      OPC=nop             
  nop                                                                                            #  15    0xe2056  1      OPC=nop             
  nop                                                                                            #  16    0xe2057  1      OPC=nop             
  nop                                                                                            #  17    0xe2058  1      OPC=nop             
  nop                                                                                            #  18    0xe2059  1      OPC=nop             
  nop                                                                                            #  19    0xe205a  1      OPC=nop             
  nop                                                                                            #  20    0xe205b  1      OPC=nop             
  nop                                                                                            #  21    0xe205c  1      OPC=nop             
  nop                                                                                            #  22    0xe205d  1      OPC=nop             
  nop                                                                                            #  23    0xe205e  1      OPC=nop             
  nop                                                                                            #  24    0xe205f  1      OPC=nop             
.L_e2060:                                                                                        #        0xe2060  0      OPC=<label>         
  movl %edi, %edi                                                                                #  25    0xe2060  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edi                                                                    #  26    0xe2062  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                #  27    0xe2067  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                       #  28    0xe2069  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                #  29    0xe206d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                                   #  30    0xe206f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                                         #  31    0xe2074  6      OPC=andl_r32_imm32  
  nop                                                                                            #  32    0xe207a  1      OPC=nop             
  nop                                                                                            #  33    0xe207b  1      OPC=nop             
  nop                                                                                            #  34    0xe207c  1      OPC=nop             
  addq %r15, %rax                                                                                #  35    0xe207d  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                      #  36    0xe2080  2      OPC=jmpq_r64        
  nop                                                                                            #  37    0xe2082  1      OPC=nop             
  nop                                                                                            #  38    0xe2083  1      OPC=nop             
  nop                                                                                            #  39    0xe2084  1      OPC=nop             
  nop                                                                                            #  40    0xe2085  1      OPC=nop             
.L_e2080:                                                                                        #        0xe2086  0      OPC=<label>         
  movl %edi, %edi                                                                                #  41    0xe2086  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax                                                                    #  42    0xe2088  5      OPC=movl_r32_m32    
  movl %ecx, %ecx                                                                                #  43    0xe208d  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rcx,1), %eax                                                                    #  44    0xe208f  5      OPC=cmpl_r32_m32    
  jne .L_e2060                                                                                   #  45    0xe2094  2      OPC=jne_label       
  popq %r11                                                                                      #  46    0xe2096  2      OPC=popq_r64_1      
  movl $0x6, %eax                                                                                #  47    0xe2098  5      OPC=movl_r32_imm32  
  nop                                                                                            #  48    0xe209d  1      OPC=nop             
  nop                                                                                            #  49    0xe209e  1      OPC=nop             
  nop                                                                                            #  50    0xe209f  1      OPC=nop             
  nop                                                                                            #  51    0xe20a0  1      OPC=nop             
  nop                                                                                            #  52    0xe20a1  1      OPC=nop             
  nop                                                                                            #  53    0xe20a2  1      OPC=nop             
  nop                                                                                            #  54    0xe20a3  1      OPC=nop             
  nop                                                                                            #  55    0xe20a4  1      OPC=nop             
  nop                                                                                            #  56    0xe20a5  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                        #  57    0xe20a6  7      OPC=andl_r32_imm32  
  nop                                                                                            #  58    0xe20ad  1      OPC=nop             
  nop                                                                                            #  59    0xe20ae  1      OPC=nop             
  nop                                                                                            #  60    0xe20af  1      OPC=nop             
  nop                                                                                            #  61    0xe20b0  1      OPC=nop             
  addq %r15, %r11                                                                                #  62    0xe20b1  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                      #  63    0xe20b4  3      OPC=jmpq_r64        
  nop                                                                                            #  64    0xe20b7  1      OPC=nop             
  nop                                                                                            #  65    0xe20b8  1      OPC=nop             
  nop                                                                                            #  66    0xe20b9  1      OPC=nop             
  nop                                                                                            #  67    0xe20ba  1      OPC=nop             
  nop                                                                                            #  68    0xe20bb  1      OPC=nop             
  nop                                                                                            #  69    0xe20bc  1      OPC=nop             
  nop                                                                                            #  70    0xe20bd  1      OPC=nop             
  nop                                                                                            #  71    0xe20be  1      OPC=nop             
  nop                                                                                            #  72    0xe20bf  1      OPC=nop             
  nop                                                                                            #  73    0xe20c0  1      OPC=nop             
  nop                                                                                            #  74    0xe20c1  1      OPC=nop             
  nop                                                                                            #  75    0xe20c2  1      OPC=nop             
  nop                                                                                            #  76    0xe20c3  1      OPC=nop             
  nop                                                                                            #  77    0xe20c4  1      OPC=nop             
  nop                                                                                            #  78    0xe20c5  1      OPC=nop             
  nop                                                                                            #  79    0xe20c6  1      OPC=nop             
  nop                                                                                            #  80    0xe20c7  1      OPC=nop             
  nop                                                                                            #  81    0xe20c8  1      OPC=nop             
  nop                                                                                            #  82    0xe20c9  1      OPC=nop             
  nop                                                                                            #  83    0xe20ca  1      OPC=nop             
  nop                                                                                            #  84    0xe20cb  1      OPC=nop             
  nop                                                                                            #  85    0xe20cc  1      OPC=nop             
                                                                                                                                              
.size _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, .-_ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_

