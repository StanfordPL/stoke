  .text
  .globl _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
  .type _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, @function

#! file-offset 0x122980
#! rip-offset  0xe2980
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj:  #        0xe2980  0      OPC=<label>         
  movl %edi, %r8d                                                     #  1     0xe2980  3      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0xe2983  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                     #  3     0xe2985  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                     #  4     0xe2987  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r8,1), %esi                                          #  5     0xe298a  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                     #  6     0xe298f  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %esi                                         #  7     0xe2991  5      OPC=cmpl_r32_m32    
  movl $0x1, %eax                                                     #  8     0xe2996  5      OPC=movl_r32_imm32  
  nop                                                                 #  9     0xe299b  1      OPC=nop             
  nop                                                                 #  10    0xe299c  1      OPC=nop             
  nop                                                                 #  11    0xe299d  1      OPC=nop             
  nop                                                                 #  12    0xe299e  1      OPC=nop             
  nop                                                                 #  13    0xe299f  1      OPC=nop             
  je .L_e29c0                                                         #  14    0xe29a0  2      OPC=je_label        
  xorl %eax, %eax                                                     #  15    0xe29a2  2      OPC=xorl_r32_r32    
  cmpl $0x3, %ecx                                                     #  16    0xe29a4  3      OPC=cmpl_r32_imm8   
  jbe .L_e29e0                                                        #  17    0xe29a7  2      OPC=jbe_label       
  nop                                                                 #  18    0xe29a9  1      OPC=nop             
  nop                                                                 #  19    0xe29aa  1      OPC=nop             
  nop                                                                 #  20    0xe29ab  1      OPC=nop             
  nop                                                                 #  21    0xe29ac  1      OPC=nop             
  nop                                                                 #  22    0xe29ad  1      OPC=nop             
  nop                                                                 #  23    0xe29ae  1      OPC=nop             
  nop                                                                 #  24    0xe29af  1      OPC=nop             
  nop                                                                 #  25    0xe29b0  1      OPC=nop             
  nop                                                                 #  26    0xe29b1  1      OPC=nop             
  nop                                                                 #  27    0xe29b2  1      OPC=nop             
  nop                                                                 #  28    0xe29b3  1      OPC=nop             
  nop                                                                 #  29    0xe29b4  1      OPC=nop             
  nop                                                                 #  30    0xe29b5  1      OPC=nop             
  nop                                                                 #  31    0xe29b6  1      OPC=nop             
  nop                                                                 #  32    0xe29b7  1      OPC=nop             
  nop                                                                 #  33    0xe29b8  1      OPC=nop             
  nop                                                                 #  34    0xe29b9  1      OPC=nop             
  nop                                                                 #  35    0xe29ba  1      OPC=nop             
  nop                                                                 #  36    0xe29bb  1      OPC=nop             
  nop                                                                 #  37    0xe29bc  1      OPC=nop             
  nop                                                                 #  38    0xe29bd  1      OPC=nop             
  nop                                                                 #  39    0xe29be  1      OPC=nop             
  nop                                                                 #  40    0xe29bf  1      OPC=nop             
.L_e29c0:                                                             #        0xe29c0  0      OPC=<label>         
  popq %r11                                                           #  41    0xe29c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  42    0xe29c2  7      OPC=andl_r32_imm32  
  nop                                                                 #  43    0xe29c9  1      OPC=nop             
  nop                                                                 #  44    0xe29ca  1      OPC=nop             
  nop                                                                 #  45    0xe29cb  1      OPC=nop             
  nop                                                                 #  46    0xe29cc  1      OPC=nop             
  addq %r15, %r11                                                     #  47    0xe29cd  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  48    0xe29d0  3      OPC=jmpq_r64        
  nop                                                                 #  49    0xe29d3  1      OPC=nop             
  nop                                                                 #  50    0xe29d4  1      OPC=nop             
  nop                                                                 #  51    0xe29d5  1      OPC=nop             
  nop                                                                 #  52    0xe29d6  1      OPC=nop             
  nop                                                                 #  53    0xe29d7  1      OPC=nop             
  nop                                                                 #  54    0xe29d8  1      OPC=nop             
  nop                                                                 #  55    0xe29d9  1      OPC=nop             
  nop                                                                 #  56    0xe29da  1      OPC=nop             
  nop                                                                 #  57    0xe29db  1      OPC=nop             
  nop                                                                 #  58    0xe29dc  1      OPC=nop             
  nop                                                                 #  59    0xe29dd  1      OPC=nop             
  nop                                                                 #  60    0xe29de  1      OPC=nop             
  nop                                                                 #  61    0xe29df  1      OPC=nop             
  nop                                                                 #  62    0xe29e0  1      OPC=nop             
  nop                                                                 #  63    0xe29e1  1      OPC=nop             
  nop                                                                 #  64    0xe29e2  1      OPC=nop             
  nop                                                                 #  65    0xe29e3  1      OPC=nop             
  nop                                                                 #  66    0xe29e4  1      OPC=nop             
  nop                                                                 #  67    0xe29e5  1      OPC=nop             
  nop                                                                 #  68    0xe29e6  1      OPC=nop             
.L_e29e0:                                                             #        0xe29e7  0      OPC=<label>         
  movl %edi, %edi                                                     #  69    0xe29e7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                            #  70    0xe29e9  4      OPC=movl_r32_m32    
  movl %r8d, %esi                                                     #  71    0xe29ed  3      OPC=movl_r32_r32    
  movl %eax, %eax                                                     #  72    0xe29f0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                        #  73    0xe29f2  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                              #  74    0xe29f7  6      OPC=andl_r32_imm32  
  nop                                                                 #  75    0xe29fd  1      OPC=nop             
  nop                                                                 #  76    0xe29fe  1      OPC=nop             
  nop                                                                 #  77    0xe29ff  1      OPC=nop             
  addq %r15, %rax                                                     #  78    0xe2a00  3      OPC=addq_r64_r64    
  jmpq %rax                                                           #  79    0xe2a03  2      OPC=jmpq_r64        
  nop                                                                 #  80    0xe2a05  1      OPC=nop             
  nop                                                                 #  81    0xe2a06  1      OPC=nop             
  nop                                                                 #  82    0xe2a07  1      OPC=nop             
  nop                                                                 #  83    0xe2a08  1      OPC=nop             
  nop                                                                 #  84    0xe2a09  1      OPC=nop             
  nop                                                                 #  85    0xe2a0a  1      OPC=nop             
  nop                                                                 #  86    0xe2a0b  1      OPC=nop             
  nop                                                                 #  87    0xe2a0c  1      OPC=nop             
                                                                                                                   
.size _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, .-_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj

