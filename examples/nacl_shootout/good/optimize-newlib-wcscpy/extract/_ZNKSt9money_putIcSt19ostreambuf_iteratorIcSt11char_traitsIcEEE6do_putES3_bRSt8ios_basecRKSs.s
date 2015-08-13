  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs, @function

#! file-offset 0xd48a0
#! rip-offset  0x948a0
#! capacity    128 bytes

# Text                                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs:                    #        0x948a0  0      OPC=<label>         
  movl %edx, %eax                                                                                                 #  1     0x948a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                 #  2     0x948a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  3     0x948a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                                 #  4     0x948a8  2      OPC=movl_r32_r32    
  testb %al, %al                                                                                                  #  5     0x948aa  2      OPC=testb_r8_r8     
  movl %ecx, %edx                                                                                                 #  6     0x948ac  2      OPC=movl_r32_r32    
  movl %r9d, %r9d                                                                                                 #  7     0x948ae  3      OPC=movl_r32_r32    
  jne .L_948e0                                                                                                    #  8     0x948b1  2      OPC=jne_label       
  movsbl %r8b, %ecx                                                                                               #  9     0x948b3  4      OPC=movsbl_r32_r8   
  movl %r9d, %r8d                                                                                                 #  10    0x948b7  3      OPC=movl_r32_r32    
  nop                                                                                                             #  11    0x948ba  1      OPC=nop             
  callq ._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE9_M_insertILb0EEES3_S3_RSt8ios_basecRKSs  #  12    0x948bb  5      OPC=callq_label     
  addl $0x8, %esp                                                                                                 #  13    0x948c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  14    0x948c3  3      OPC=addq_r64_r64    
  popq %r11                                                                                                       #  15    0x948c6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                         #  16    0x948c8  7      OPC=andl_r32_imm32  
  nop                                                                                                             #  17    0x948cf  1      OPC=nop             
  nop                                                                                                             #  18    0x948d0  1      OPC=nop             
  nop                                                                                                             #  19    0x948d1  1      OPC=nop             
  nop                                                                                                             #  20    0x948d2  1      OPC=nop             
  addq %r15, %r11                                                                                                 #  21    0x948d3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                       #  22    0x948d6  3      OPC=jmpq_r64        
  nop                                                                                                             #  23    0x948d9  1      OPC=nop             
  nop                                                                                                             #  24    0x948da  1      OPC=nop             
  nop                                                                                                             #  25    0x948db  1      OPC=nop             
  nop                                                                                                             #  26    0x948dc  1      OPC=nop             
  nop                                                                                                             #  27    0x948dd  1      OPC=nop             
  nop                                                                                                             #  28    0x948de  1      OPC=nop             
  nop                                                                                                             #  29    0x948df  1      OPC=nop             
  nop                                                                                                             #  30    0x948e0  1      OPC=nop             
  nop                                                                                                             #  31    0x948e1  1      OPC=nop             
  nop                                                                                                             #  32    0x948e2  1      OPC=nop             
  nop                                                                                                             #  33    0x948e3  1      OPC=nop             
  nop                                                                                                             #  34    0x948e4  1      OPC=nop             
  nop                                                                                                             #  35    0x948e5  1      OPC=nop             
  nop                                                                                                             #  36    0x948e6  1      OPC=nop             
.L_948e0:                                                                                                         #        0x948e7  0      OPC=<label>         
  movsbl %r8b, %ecx                                                                                               #  37    0x948e7  4      OPC=movsbl_r32_r8   
  movl %r9d, %r8d                                                                                                 #  38    0x948eb  3      OPC=movl_r32_r32    
  nop                                                                                                             #  39    0x948ee  1      OPC=nop             
  nop                                                                                                             #  40    0x948ef  1      OPC=nop             
  nop                                                                                                             #  41    0x948f0  1      OPC=nop             
  nop                                                                                                             #  42    0x948f1  1      OPC=nop             
  nop                                                                                                             #  43    0x948f2  1      OPC=nop             
  nop                                                                                                             #  44    0x948f3  1      OPC=nop             
  nop                                                                                                             #  45    0x948f4  1      OPC=nop             
  nop                                                                                                             #  46    0x948f5  1      OPC=nop             
  nop                                                                                                             #  47    0x948f6  1      OPC=nop             
  nop                                                                                                             #  48    0x948f7  1      OPC=nop             
  nop                                                                                                             #  49    0x948f8  1      OPC=nop             
  nop                                                                                                             #  50    0x948f9  1      OPC=nop             
  nop                                                                                                             #  51    0x948fa  1      OPC=nop             
  nop                                                                                                             #  52    0x948fb  1      OPC=nop             
  nop                                                                                                             #  53    0x948fc  1      OPC=nop             
  nop                                                                                                             #  54    0x948fd  1      OPC=nop             
  nop                                                                                                             #  55    0x948fe  1      OPC=nop             
  nop                                                                                                             #  56    0x948ff  1      OPC=nop             
  nop                                                                                                             #  57    0x94900  1      OPC=nop             
  nop                                                                                                             #  58    0x94901  1      OPC=nop             
  callq ._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE9_M_insertILb1EEES3_S3_RSt8ios_basecRKSs  #  59    0x94902  5      OPC=callq_label     
  addl $0x8, %esp                                                                                                 #  60    0x94907  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  61    0x9490a  3      OPC=addq_r64_r64    
  popq %r11                                                                                                       #  62    0x9490d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                         #  63    0x9490f  7      OPC=andl_r32_imm32  
  nop                                                                                                             #  64    0x94916  1      OPC=nop             
  nop                                                                                                             #  65    0x94917  1      OPC=nop             
  nop                                                                                                             #  66    0x94918  1      OPC=nop             
  nop                                                                                                             #  67    0x94919  1      OPC=nop             
  addq %r15, %r11                                                                                                 #  68    0x9491a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                       #  69    0x9491d  3      OPC=jmpq_r64        
  nop                                                                                                             #  70    0x94920  1      OPC=nop             
  nop                                                                                                             #  71    0x94921  1      OPC=nop             
  nop                                                                                                             #  72    0x94922  1      OPC=nop             
  nop                                                                                                             #  73    0x94923  1      OPC=nop             
  nop                                                                                                             #  74    0x94924  1      OPC=nop             
  nop                                                                                                             #  75    0x94925  1      OPC=nop             
  nop                                                                                                             #  76    0x94926  1      OPC=nop             
  nop                                                                                                             #  77    0x94927  1      OPC=nop             
  nop                                                                                                             #  78    0x94928  1      OPC=nop             
  nop                                                                                                             #  79    0x94929  1      OPC=nop             
  nop                                                                                                             #  80    0x9492a  1      OPC=nop             
  nop                                                                                                             #  81    0x9492b  1      OPC=nop             
  nop                                                                                                             #  82    0x9492c  1      OPC=nop             
  nop                                                                                                             #  83    0x9492d  1      OPC=nop             
                                                                                                                                                               
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs

