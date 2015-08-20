  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_
  .type _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, @function

#! file-offset 0x122340
#! rip-offset  0xe2340
#! capacity    128 bytes

# Text                                                                                           #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_:  #        0xe2340  0      OPC=<label>         
  movl %edx, %edx                                                                                #  1     0xe2340  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                #  2     0xe2342  3      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                #  3     0xe2345  2      OPC=movl_r32_r32    
  cmpl %edx, %r8d                                                                                #  4     0xe2347  3      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                                                                                #  5     0xe234a  2      OPC=movl_r32_r32    
  je .L_e2380                                                                                    #  6     0xe234c  2      OPC=je_label        
  nop                                                                                            #  7     0xe234e  1      OPC=nop             
  nop                                                                                            #  8     0xe234f  1      OPC=nop             
  nop                                                                                            #  9     0xe2350  1      OPC=nop             
  nop                                                                                            #  10    0xe2351  1      OPC=nop             
  nop                                                                                            #  11    0xe2352  1      OPC=nop             
  nop                                                                                            #  12    0xe2353  1      OPC=nop             
  nop                                                                                            #  13    0xe2354  1      OPC=nop             
  nop                                                                                            #  14    0xe2355  1      OPC=nop             
  nop                                                                                            #  15    0xe2356  1      OPC=nop             
  nop                                                                                            #  16    0xe2357  1      OPC=nop             
  nop                                                                                            #  17    0xe2358  1      OPC=nop             
  nop                                                                                            #  18    0xe2359  1      OPC=nop             
  nop                                                                                            #  19    0xe235a  1      OPC=nop             
  nop                                                                                            #  20    0xe235b  1      OPC=nop             
  nop                                                                                            #  21    0xe235c  1      OPC=nop             
  nop                                                                                            #  22    0xe235d  1      OPC=nop             
  nop                                                                                            #  23    0xe235e  1      OPC=nop             
  nop                                                                                            #  24    0xe235f  1      OPC=nop             
.L_e2360:                                                                                        #        0xe2360  0      OPC=<label>         
  movl %edi, %edi                                                                                #  25    0xe2360  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edi                                                                    #  26    0xe2362  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                #  27    0xe2367  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                       #  28    0xe2369  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                #  29    0xe236d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                                   #  30    0xe236f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                                         #  31    0xe2374  6      OPC=andl_r32_imm32  
  nop                                                                                            #  32    0xe237a  1      OPC=nop             
  nop                                                                                            #  33    0xe237b  1      OPC=nop             
  nop                                                                                            #  34    0xe237c  1      OPC=nop             
  addq %r15, %rax                                                                                #  35    0xe237d  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                      #  36    0xe2380  2      OPC=jmpq_r64        
  nop                                                                                            #  37    0xe2382  1      OPC=nop             
  nop                                                                                            #  38    0xe2383  1      OPC=nop             
  nop                                                                                            #  39    0xe2384  1      OPC=nop             
  nop                                                                                            #  40    0xe2385  1      OPC=nop             
.L_e2380:                                                                                        #        0xe2386  0      OPC=<label>         
  movl %edi, %edi                                                                                #  41    0xe2386  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax                                                                    #  42    0xe2388  5      OPC=movl_r32_m32    
  movl %ecx, %ecx                                                                                #  43    0xe238d  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rcx,1), %eax                                                                    #  44    0xe238f  5      OPC=cmpl_r32_m32    
  jne .L_e2360                                                                                   #  45    0xe2394  2      OPC=jne_label       
  popq %r11                                                                                      #  46    0xe2396  2      OPC=popq_r64_1      
  movl $0x6, %eax                                                                                #  47    0xe2398  5      OPC=movl_r32_imm32  
  nop                                                                                            #  48    0xe239d  1      OPC=nop             
  nop                                                                                            #  49    0xe239e  1      OPC=nop             
  nop                                                                                            #  50    0xe239f  1      OPC=nop             
  nop                                                                                            #  51    0xe23a0  1      OPC=nop             
  nop                                                                                            #  52    0xe23a1  1      OPC=nop             
  nop                                                                                            #  53    0xe23a2  1      OPC=nop             
  nop                                                                                            #  54    0xe23a3  1      OPC=nop             
  nop                                                                                            #  55    0xe23a4  1      OPC=nop             
  nop                                                                                            #  56    0xe23a5  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                        #  57    0xe23a6  7      OPC=andl_r32_imm32  
  nop                                                                                            #  58    0xe23ad  1      OPC=nop             
  nop                                                                                            #  59    0xe23ae  1      OPC=nop             
  nop                                                                                            #  60    0xe23af  1      OPC=nop             
  nop                                                                                            #  61    0xe23b0  1      OPC=nop             
  addq %r15, %r11                                                                                #  62    0xe23b1  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                      #  63    0xe23b4  3      OPC=jmpq_r64        
  nop                                                                                            #  64    0xe23b7  1      OPC=nop             
  nop                                                                                            #  65    0xe23b8  1      OPC=nop             
  nop                                                                                            #  66    0xe23b9  1      OPC=nop             
  nop                                                                                            #  67    0xe23ba  1      OPC=nop             
  nop                                                                                            #  68    0xe23bb  1      OPC=nop             
  nop                                                                                            #  69    0xe23bc  1      OPC=nop             
  nop                                                                                            #  70    0xe23bd  1      OPC=nop             
  nop                                                                                            #  71    0xe23be  1      OPC=nop             
  nop                                                                                            #  72    0xe23bf  1      OPC=nop             
  nop                                                                                            #  73    0xe23c0  1      OPC=nop             
  nop                                                                                            #  74    0xe23c1  1      OPC=nop             
  nop                                                                                            #  75    0xe23c2  1      OPC=nop             
  nop                                                                                            #  76    0xe23c3  1      OPC=nop             
  nop                                                                                            #  77    0xe23c4  1      OPC=nop             
  nop                                                                                            #  78    0xe23c5  1      OPC=nop             
  nop                                                                                            #  79    0xe23c6  1      OPC=nop             
  nop                                                                                            #  80    0xe23c7  1      OPC=nop             
  nop                                                                                            #  81    0xe23c8  1      OPC=nop             
  nop                                                                                            #  82    0xe23c9  1      OPC=nop             
  nop                                                                                            #  83    0xe23ca  1      OPC=nop             
  nop                                                                                            #  84    0xe23cb  1      OPC=nop             
  nop                                                                                            #  85    0xe23cc  1      OPC=nop             
                                                                                                                                              
.size _ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_, .-_ZNK10__cxxabiv120__si_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_

