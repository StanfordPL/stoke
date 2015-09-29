  .text
  .globl _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
  .type _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, @function

#! file-offset 0x1230a0
#! rip-offset  0xe30a0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj:  #        0xe30a0  0      OPC=<label>         
  movl %edi, %r8d                                                     #  1     0xe30a0  3      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0xe30a3  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                     #  3     0xe30a5  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                     #  4     0xe30a7  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r8,1), %esi                                          #  5     0xe30aa  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                     #  6     0xe30af  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %esi                                         #  7     0xe30b1  5      OPC=cmpl_r32_m32    
  movl $0x1, %eax                                                     #  8     0xe30b6  5      OPC=movl_r32_imm32  
  nop                                                                 #  9     0xe30bb  1      OPC=nop             
  nop                                                                 #  10    0xe30bc  1      OPC=nop             
  nop                                                                 #  11    0xe30bd  1      OPC=nop             
  nop                                                                 #  12    0xe30be  1      OPC=nop             
  nop                                                                 #  13    0xe30bf  1      OPC=nop             
  je .L_e30e0                                                         #  14    0xe30c0  2      OPC=je_label        
  xorl %eax, %eax                                                     #  15    0xe30c2  2      OPC=xorl_r32_r32    
  cmpl $0x3, %ecx                                                     #  16    0xe30c4  3      OPC=cmpl_r32_imm8   
  jbe .L_e3100                                                        #  17    0xe30c7  2      OPC=jbe_label       
  nop                                                                 #  18    0xe30c9  1      OPC=nop             
  nop                                                                 #  19    0xe30ca  1      OPC=nop             
  nop                                                                 #  20    0xe30cb  1      OPC=nop             
  nop                                                                 #  21    0xe30cc  1      OPC=nop             
  nop                                                                 #  22    0xe30cd  1      OPC=nop             
  nop                                                                 #  23    0xe30ce  1      OPC=nop             
  nop                                                                 #  24    0xe30cf  1      OPC=nop             
  nop                                                                 #  25    0xe30d0  1      OPC=nop             
  nop                                                                 #  26    0xe30d1  1      OPC=nop             
  nop                                                                 #  27    0xe30d2  1      OPC=nop             
  nop                                                                 #  28    0xe30d3  1      OPC=nop             
  nop                                                                 #  29    0xe30d4  1      OPC=nop             
  nop                                                                 #  30    0xe30d5  1      OPC=nop             
  nop                                                                 #  31    0xe30d6  1      OPC=nop             
  nop                                                                 #  32    0xe30d7  1      OPC=nop             
  nop                                                                 #  33    0xe30d8  1      OPC=nop             
  nop                                                                 #  34    0xe30d9  1      OPC=nop             
  nop                                                                 #  35    0xe30da  1      OPC=nop             
  nop                                                                 #  36    0xe30db  1      OPC=nop             
  nop                                                                 #  37    0xe30dc  1      OPC=nop             
  nop                                                                 #  38    0xe30dd  1      OPC=nop             
  nop                                                                 #  39    0xe30de  1      OPC=nop             
  nop                                                                 #  40    0xe30df  1      OPC=nop             
.L_e30e0:                                                             #        0xe30e0  0      OPC=<label>         
  popq %r11                                                           #  41    0xe30e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  42    0xe30e2  7      OPC=andl_r32_imm32  
  nop                                                                 #  43    0xe30e9  1      OPC=nop             
  nop                                                                 #  44    0xe30ea  1      OPC=nop             
  nop                                                                 #  45    0xe30eb  1      OPC=nop             
  nop                                                                 #  46    0xe30ec  1      OPC=nop             
  addq %r15, %r11                                                     #  47    0xe30ed  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  48    0xe30f0  3      OPC=jmpq_r64        
  nop                                                                 #  49    0xe30f3  1      OPC=nop             
  nop                                                                 #  50    0xe30f4  1      OPC=nop             
  nop                                                                 #  51    0xe30f5  1      OPC=nop             
  nop                                                                 #  52    0xe30f6  1      OPC=nop             
  nop                                                                 #  53    0xe30f7  1      OPC=nop             
  nop                                                                 #  54    0xe30f8  1      OPC=nop             
  nop                                                                 #  55    0xe30f9  1      OPC=nop             
  nop                                                                 #  56    0xe30fa  1      OPC=nop             
  nop                                                                 #  57    0xe30fb  1      OPC=nop             
  nop                                                                 #  58    0xe30fc  1      OPC=nop             
  nop                                                                 #  59    0xe30fd  1      OPC=nop             
  nop                                                                 #  60    0xe30fe  1      OPC=nop             
  nop                                                                 #  61    0xe30ff  1      OPC=nop             
  nop                                                                 #  62    0xe3100  1      OPC=nop             
  nop                                                                 #  63    0xe3101  1      OPC=nop             
  nop                                                                 #  64    0xe3102  1      OPC=nop             
  nop                                                                 #  65    0xe3103  1      OPC=nop             
  nop                                                                 #  66    0xe3104  1      OPC=nop             
  nop                                                                 #  67    0xe3105  1      OPC=nop             
  nop                                                                 #  68    0xe3106  1      OPC=nop             
.L_e3100:                                                             #        0xe3107  0      OPC=<label>         
  movl %edi, %edi                                                     #  69    0xe3107  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                            #  70    0xe3109  4      OPC=movl_r32_m32    
  movl %r8d, %esi                                                     #  71    0xe310d  3      OPC=movl_r32_r32    
  movl %eax, %eax                                                     #  72    0xe3110  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                        #  73    0xe3112  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                              #  74    0xe3117  6      OPC=andl_r32_imm32  
  nop                                                                 #  75    0xe311d  1      OPC=nop             
  nop                                                                 #  76    0xe311e  1      OPC=nop             
  nop                                                                 #  77    0xe311f  1      OPC=nop             
  addq %r15, %rax                                                     #  78    0xe3120  3      OPC=addq_r64_r64    
  jmpq %rax                                                           #  79    0xe3123  2      OPC=jmpq_r64        
  nop                                                                 #  80    0xe3125  1      OPC=nop             
  nop                                                                 #  81    0xe3126  1      OPC=nop             
  nop                                                                 #  82    0xe3127  1      OPC=nop             
  nop                                                                 #  83    0xe3128  1      OPC=nop             
  nop                                                                 #  84    0xe3129  1      OPC=nop             
  nop                                                                 #  85    0xe312a  1      OPC=nop             
  nop                                                                 #  86    0xe312b  1      OPC=nop             
  nop                                                                 #  87    0xe312c  1      OPC=nop             
                                                                                                                   
.size _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, .-_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj

