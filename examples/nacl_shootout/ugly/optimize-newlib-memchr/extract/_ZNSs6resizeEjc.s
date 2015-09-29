  .text
  .globl _ZNSs6resizeEjc
  .type _ZNSs6resizeEjc, @function

#! file-offset 0xefec0
#! rip-offset  0xafec0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6resizeEjc:                       #        0xafec0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xafec0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xafec2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xafec5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xafec8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xafeca  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xafece  3      OPC=subl_r32_imm8   
  cmpl $0x3ffffffc, %esi                #  7     0xafed1  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                       #  8     0xafed7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xafed9  4      OPC=movl_r32_m32    
  nop                                   #  10    0xafedd  1      OPC=nop             
  nop                                   #  11    0xafede  1      OPC=nop             
  nop                                   #  12    0xafedf  1      OPC=nop             
  ja .L_aff40                           #  13    0xafee0  2      OPC=ja_label        
  cmpl %eax, %esi                       #  14    0xafee2  2      OPC=cmpl_r32_r32    
  ja .L_aff20                           #  15    0xafee4  2      OPC=ja_label        
  jb .L_aff00                           #  16    0xafee6  2      OPC=jb_label        
  addl $0x8, %esp                       #  17    0xafee8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  18    0xafeeb  3      OPC=addq_r64_r64    
  popq %r11                             #  19    0xafeee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  20    0xafef0  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xafef7  1      OPC=nop             
  nop                                   #  22    0xafef8  1      OPC=nop             
  nop                                   #  23    0xafef9  1      OPC=nop             
  nop                                   #  24    0xafefa  1      OPC=nop             
  addq %r15, %r11                       #  25    0xafefb  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xafefe  3      OPC=jmpq_r64        
  nop                                   #  27    0xaff01  1      OPC=nop             
  nop                                   #  28    0xaff02  1      OPC=nop             
  nop                                   #  29    0xaff03  1      OPC=nop             
  nop                                   #  30    0xaff04  1      OPC=nop             
  nop                                   #  31    0xaff05  1      OPC=nop             
  nop                                   #  32    0xaff06  1      OPC=nop             
.L_aff00:                               #        0xaff07  0      OPC=<label>         
  movl %eax, %edx                       #  33    0xaff07  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                       #  34    0xaff09  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                       #  35    0xaff0b  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  36    0xaff0e  3      OPC=addq_r64_r64    
  subl %esi, %edx                       #  37    0xaff11  2      OPC=subl_r32_r32    
  jmpq ._ZNSs9_M_mutateEjjj             #  38    0xaff13  5      OPC=jmpq_label_1    
  nop                                   #  39    0xaff18  1      OPC=nop             
  nop                                   #  40    0xaff19  1      OPC=nop             
  nop                                   #  41    0xaff1a  1      OPC=nop             
  nop                                   #  42    0xaff1b  1      OPC=nop             
  nop                                   #  43    0xaff1c  1      OPC=nop             
  nop                                   #  44    0xaff1d  1      OPC=nop             
  nop                                   #  45    0xaff1e  1      OPC=nop             
  nop                                   #  46    0xaff1f  1      OPC=nop             
  nop                                   #  47    0xaff20  1      OPC=nop             
  nop                                   #  48    0xaff21  1      OPC=nop             
  nop                                   #  49    0xaff22  1      OPC=nop             
  nop                                   #  50    0xaff23  1      OPC=nop             
  nop                                   #  51    0xaff24  1      OPC=nop             
  nop                                   #  52    0xaff25  1      OPC=nop             
  nop                                   #  53    0xaff26  1      OPC=nop             
.L_aff20:                               #        0xaff27  0      OPC=<label>         
  movsbl %dl, %edx                      #  54    0xaff27  3      OPC=movsbl_r32_r8   
  subl %eax, %esi                       #  55    0xaff2a  2      OPC=subl_r32_r32    
  addl $0x8, %esp                       #  56    0xaff2c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaff2f  3      OPC=addq_r64_r64    
  jmpq ._ZNSs6appendEjc                 #  58    0xaff32  5      OPC=jmpq_label_1    
  nop                                   #  59    0xaff37  1      OPC=nop             
  nop                                   #  60    0xaff38  1      OPC=nop             
  nop                                   #  61    0xaff39  1      OPC=nop             
  nop                                   #  62    0xaff3a  1      OPC=nop             
  nop                                   #  63    0xaff3b  1      OPC=nop             
  nop                                   #  64    0xaff3c  1      OPC=nop             
  nop                                   #  65    0xaff3d  1      OPC=nop             
  nop                                   #  66    0xaff3e  1      OPC=nop             
  nop                                   #  67    0xaff3f  1      OPC=nop             
  nop                                   #  68    0xaff40  1      OPC=nop             
  nop                                   #  69    0xaff41  1      OPC=nop             
  nop                                   #  70    0xaff42  1      OPC=nop             
  nop                                   #  71    0xaff43  1      OPC=nop             
  nop                                   #  72    0xaff44  1      OPC=nop             
  nop                                   #  73    0xaff45  1      OPC=nop             
  nop                                   #  74    0xaff46  1      OPC=nop             
.L_aff40:                               #        0xaff47  0      OPC=<label>         
  movl $0x1003bb88, %edi                #  75    0xaff47  5      OPC=movl_r32_imm32  
  nop                                   #  76    0xaff4c  1      OPC=nop             
  nop                                   #  77    0xaff4d  1      OPC=nop             
  nop                                   #  78    0xaff4e  1      OPC=nop             
  nop                                   #  79    0xaff4f  1      OPC=nop             
  nop                                   #  80    0xaff50  1      OPC=nop             
  nop                                   #  81    0xaff51  1      OPC=nop             
  nop                                   #  82    0xaff52  1      OPC=nop             
  nop                                   #  83    0xaff53  1      OPC=nop             
  nop                                   #  84    0xaff54  1      OPC=nop             
  nop                                   #  85    0xaff55  1      OPC=nop             
  nop                                   #  86    0xaff56  1      OPC=nop             
  nop                                   #  87    0xaff57  1      OPC=nop             
  nop                                   #  88    0xaff58  1      OPC=nop             
  nop                                   #  89    0xaff59  1      OPC=nop             
  nop                                   #  90    0xaff5a  1      OPC=nop             
  nop                                   #  91    0xaff5b  1      OPC=nop             
  nop                                   #  92    0xaff5c  1      OPC=nop             
  nop                                   #  93    0xaff5d  1      OPC=nop             
  nop                                   #  94    0xaff5e  1      OPC=nop             
  nop                                   #  95    0xaff5f  1      OPC=nop             
  nop                                   #  96    0xaff60  1      OPC=nop             
  nop                                   #  97    0xaff61  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  98    0xaff62  5      OPC=callq_label     
                                                                                     
.size _ZNSs6resizeEjc, .-_ZNSs6resizeEjc

