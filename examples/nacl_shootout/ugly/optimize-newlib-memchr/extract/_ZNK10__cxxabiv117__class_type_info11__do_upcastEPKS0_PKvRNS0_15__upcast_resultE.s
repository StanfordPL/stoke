  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x1232a0
#! rip-offset  0xe32a0
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0xe32a0  0      OPC=<label>         
  movl %edi, %edi                                                                   #  1     0xe32a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                                   #  2     0xe32a2  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                                                   #  3     0xe32a4  2      OPC=xorl_r32_r32    
  movl %edi, %edi                                                                   #  4     0xe32a6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0xe32a8  5      OPC=movl_r32_m32    
  movl %esi, %esi                                                                   #  6     0xe32ad  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0xe32af  5      OPC=cmpl_r32_m32    
  movl %edx, %edx                                                                   #  8     0xe32b4  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                                   #  9     0xe32b6  2      OPC=movl_r32_r32    
  je .L_e32e0                                                                       #  10    0xe32b8  2      OPC=je_label        
  popq %r11                                                                         #  11    0xe32ba  2      OPC=popq_r64_1      
  nop                                                                               #  12    0xe32bc  1      OPC=nop             
  nop                                                                               #  13    0xe32bd  1      OPC=nop             
  nop                                                                               #  14    0xe32be  1      OPC=nop             
  nop                                                                               #  15    0xe32bf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                           #  16    0xe32c0  7      OPC=andl_r32_imm32  
  nop                                                                               #  17    0xe32c7  1      OPC=nop             
  nop                                                                               #  18    0xe32c8  1      OPC=nop             
  nop                                                                               #  19    0xe32c9  1      OPC=nop             
  nop                                                                               #  20    0xe32ca  1      OPC=nop             
  addq %r15, %r11                                                                   #  21    0xe32cb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  22    0xe32ce  3      OPC=jmpq_r64        
  nop                                                                               #  23    0xe32d1  1      OPC=nop             
  nop                                                                               #  24    0xe32d2  1      OPC=nop             
  nop                                                                               #  25    0xe32d3  1      OPC=nop             
  nop                                                                               #  26    0xe32d4  1      OPC=nop             
  nop                                                                               #  27    0xe32d5  1      OPC=nop             
  nop                                                                               #  28    0xe32d6  1      OPC=nop             
  nop                                                                               #  29    0xe32d7  1      OPC=nop             
  nop                                                                               #  30    0xe32d8  1      OPC=nop             
  nop                                                                               #  31    0xe32d9  1      OPC=nop             
  nop                                                                               #  32    0xe32da  1      OPC=nop             
  nop                                                                               #  33    0xe32db  1      OPC=nop             
  nop                                                                               #  34    0xe32dc  1      OPC=nop             
  nop                                                                               #  35    0xe32dd  1      OPC=nop             
  nop                                                                               #  36    0xe32de  1      OPC=nop             
  nop                                                                               #  37    0xe32df  1      OPC=nop             
  nop                                                                               #  38    0xe32e0  1      OPC=nop             
  nop                                                                               #  39    0xe32e1  1      OPC=nop             
  nop                                                                               #  40    0xe32e2  1      OPC=nop             
  nop                                                                               #  41    0xe32e3  1      OPC=nop             
  nop                                                                               #  42    0xe32e4  1      OPC=nop             
  nop                                                                               #  43    0xe32e5  1      OPC=nop             
  nop                                                                               #  44    0xe32e6  1      OPC=nop             
.L_e32e0:                                                                           #        0xe32e7  0      OPC=<label>         
  movl %ecx, %ecx                                                                   #  45    0xe32e7  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)                                                          #  46    0xe32e9  4      OPC=movl_m32_r32    
  movl %ecx, %ecx                                                                   #  47    0xe32ed  2      OPC=movl_r32_r32    
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  48    0xe32ef  9      OPC=movl_m32_imm32  
  movl $0x1, %eax                                                                   #  49    0xe32f8  5      OPC=movl_r32_imm32  
  nop                                                                               #  50    0xe32fd  1      OPC=nop             
  nop                                                                               #  51    0xe32fe  1      OPC=nop             
  nop                                                                               #  52    0xe32ff  1      OPC=nop             
  nop                                                                               #  53    0xe3300  1      OPC=nop             
  nop                                                                               #  54    0xe3301  1      OPC=nop             
  nop                                                                               #  55    0xe3302  1      OPC=nop             
  nop                                                                               #  56    0xe3303  1      OPC=nop             
  nop                                                                               #  57    0xe3304  1      OPC=nop             
  nop                                                                               #  58    0xe3305  1      OPC=nop             
  nop                                                                               #  59    0xe3306  1      OPC=nop             
  movl %ecx, %ecx                                                                   #  60    0xe3307  2      OPC=movl_r32_r32    
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  61    0xe3309  9      OPC=movl_m32_imm32  
  popq %r11                                                                         #  62    0xe3312  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                           #  63    0xe3314  7      OPC=andl_r32_imm32  
  nop                                                                               #  64    0xe331b  1      OPC=nop             
  nop                                                                               #  65    0xe331c  1      OPC=nop             
  nop                                                                               #  66    0xe331d  1      OPC=nop             
  nop                                                                               #  67    0xe331e  1      OPC=nop             
  addq %r15, %r11                                                                   #  68    0xe331f  3      OPC=addq_r64_r64    
  jmpq %r11                                                                         #  69    0xe3322  3      OPC=jmpq_r64        
  nop                                                                               #  70    0xe3325  1      OPC=nop             
  nop                                                                               #  71    0xe3326  1      OPC=nop             
  nop                                                                               #  72    0xe3327  1      OPC=nop             
  nop                                                                               #  73    0xe3328  1      OPC=nop             
  nop                                                                               #  74    0xe3329  1      OPC=nop             
  nop                                                                               #  75    0xe332a  1      OPC=nop             
  nop                                                                               #  76    0xe332b  1      OPC=nop             
  nop                                                                               #  77    0xe332c  1      OPC=nop             
  nop                                                                               #  78    0xe332d  1      OPC=nop             
                                                                                                                                 
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

