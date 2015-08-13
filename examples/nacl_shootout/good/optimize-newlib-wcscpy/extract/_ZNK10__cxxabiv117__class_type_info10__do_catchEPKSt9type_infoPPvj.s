  .text
  .globl _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
  .type _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, @function

#! file-offset 0x122680
#! rip-offset  0xe2680
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj:  #        0xe2680  0      OPC=<label>         
  movl %edi, %r8d                                                     #  1     0xe2680  3      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0xe2683  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                     #  3     0xe2685  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                     #  4     0xe2687  3      OPC=movl_r32_r32    
  movl 0x4(%r15,%r8,1), %esi                                          #  5     0xe268a  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                     #  6     0xe268f  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rdi,1), %esi                                         #  7     0xe2691  5      OPC=cmpl_r32_m32    
  movl $0x1, %eax                                                     #  8     0xe2696  5      OPC=movl_r32_imm32  
  nop                                                                 #  9     0xe269b  1      OPC=nop             
  nop                                                                 #  10    0xe269c  1      OPC=nop             
  nop                                                                 #  11    0xe269d  1      OPC=nop             
  nop                                                                 #  12    0xe269e  1      OPC=nop             
  nop                                                                 #  13    0xe269f  1      OPC=nop             
  je .L_e26c0                                                         #  14    0xe26a0  2      OPC=je_label        
  xorl %eax, %eax                                                     #  15    0xe26a2  2      OPC=xorl_r32_r32    
  cmpl $0x3, %ecx                                                     #  16    0xe26a4  3      OPC=cmpl_r32_imm8   
  jbe .L_e26e0                                                        #  17    0xe26a7  2      OPC=jbe_label       
  nop                                                                 #  18    0xe26a9  1      OPC=nop             
  nop                                                                 #  19    0xe26aa  1      OPC=nop             
  nop                                                                 #  20    0xe26ab  1      OPC=nop             
  nop                                                                 #  21    0xe26ac  1      OPC=nop             
  nop                                                                 #  22    0xe26ad  1      OPC=nop             
  nop                                                                 #  23    0xe26ae  1      OPC=nop             
  nop                                                                 #  24    0xe26af  1      OPC=nop             
  nop                                                                 #  25    0xe26b0  1      OPC=nop             
  nop                                                                 #  26    0xe26b1  1      OPC=nop             
  nop                                                                 #  27    0xe26b2  1      OPC=nop             
  nop                                                                 #  28    0xe26b3  1      OPC=nop             
  nop                                                                 #  29    0xe26b4  1      OPC=nop             
  nop                                                                 #  30    0xe26b5  1      OPC=nop             
  nop                                                                 #  31    0xe26b6  1      OPC=nop             
  nop                                                                 #  32    0xe26b7  1      OPC=nop             
  nop                                                                 #  33    0xe26b8  1      OPC=nop             
  nop                                                                 #  34    0xe26b9  1      OPC=nop             
  nop                                                                 #  35    0xe26ba  1      OPC=nop             
  nop                                                                 #  36    0xe26bb  1      OPC=nop             
  nop                                                                 #  37    0xe26bc  1      OPC=nop             
  nop                                                                 #  38    0xe26bd  1      OPC=nop             
  nop                                                                 #  39    0xe26be  1      OPC=nop             
  nop                                                                 #  40    0xe26bf  1      OPC=nop             
.L_e26c0:                                                             #        0xe26c0  0      OPC=<label>         
  popq %r11                                                           #  41    0xe26c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  42    0xe26c2  7      OPC=andl_r32_imm32  
  nop                                                                 #  43    0xe26c9  1      OPC=nop             
  nop                                                                 #  44    0xe26ca  1      OPC=nop             
  nop                                                                 #  45    0xe26cb  1      OPC=nop             
  nop                                                                 #  46    0xe26cc  1      OPC=nop             
  addq %r15, %r11                                                     #  47    0xe26cd  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  48    0xe26d0  3      OPC=jmpq_r64        
  nop                                                                 #  49    0xe26d3  1      OPC=nop             
  nop                                                                 #  50    0xe26d4  1      OPC=nop             
  nop                                                                 #  51    0xe26d5  1      OPC=nop             
  nop                                                                 #  52    0xe26d6  1      OPC=nop             
  nop                                                                 #  53    0xe26d7  1      OPC=nop             
  nop                                                                 #  54    0xe26d8  1      OPC=nop             
  nop                                                                 #  55    0xe26d9  1      OPC=nop             
  nop                                                                 #  56    0xe26da  1      OPC=nop             
  nop                                                                 #  57    0xe26db  1      OPC=nop             
  nop                                                                 #  58    0xe26dc  1      OPC=nop             
  nop                                                                 #  59    0xe26dd  1      OPC=nop             
  nop                                                                 #  60    0xe26de  1      OPC=nop             
  nop                                                                 #  61    0xe26df  1      OPC=nop             
  nop                                                                 #  62    0xe26e0  1      OPC=nop             
  nop                                                                 #  63    0xe26e1  1      OPC=nop             
  nop                                                                 #  64    0xe26e2  1      OPC=nop             
  nop                                                                 #  65    0xe26e3  1      OPC=nop             
  nop                                                                 #  66    0xe26e4  1      OPC=nop             
  nop                                                                 #  67    0xe26e5  1      OPC=nop             
  nop                                                                 #  68    0xe26e6  1      OPC=nop             
.L_e26e0:                                                             #        0xe26e7  0      OPC=<label>         
  movl %edi, %edi                                                     #  69    0xe26e7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                            #  70    0xe26e9  4      OPC=movl_r32_m32    
  movl %r8d, %esi                                                     #  71    0xe26ed  3      OPC=movl_r32_r32    
  movl %eax, %eax                                                     #  72    0xe26f0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                        #  73    0xe26f2  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                              #  74    0xe26f7  6      OPC=andl_r32_imm32  
  nop                                                                 #  75    0xe26fd  1      OPC=nop             
  nop                                                                 #  76    0xe26fe  1      OPC=nop             
  nop                                                                 #  77    0xe26ff  1      OPC=nop             
  addq %r15, %rax                                                     #  78    0xe2700  3      OPC=addq_r64_r64    
  jmpq %rax                                                           #  79    0xe2703  2      OPC=jmpq_r64        
  nop                                                                 #  80    0xe2705  1      OPC=nop             
  nop                                                                 #  81    0xe2706  1      OPC=nop             
  nop                                                                 #  82    0xe2707  1      OPC=nop             
  nop                                                                 #  83    0xe2708  1      OPC=nop             
  nop                                                                 #  84    0xe2709  1      OPC=nop             
  nop                                                                 #  85    0xe270a  1      OPC=nop             
  nop                                                                 #  86    0xe270b  1      OPC=nop             
  nop                                                                 #  87    0xe270c  1      OPC=nop             
                                                                                                                   
.size _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, .-_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj

