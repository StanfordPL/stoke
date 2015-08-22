  .text
  .globl _ZNK12_GLOBAL__N_122generic_error_category7messageEi
  .type _ZNK12_GLOBAL__N_122generic_error_category7messageEi, @function

#! file-offset 0x12a5a0
#! rip-offset  0xea5a0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNK12_GLOBAL__N_122generic_error_category7messageEi:  #        0xea5a0  0      OPC=<label>         
  pushq %rbx                                            #  1     0xea5a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xea5a1  2      OPC=movl_r32_r32    
  movl %edx, %edi                                       #  3     0xea5a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                      #  4     0xea5a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  5     0xea5a8  3      OPC=addq_r64_r64    
  nop                                                   #  6     0xea5ab  1      OPC=nop             
  nop                                                   #  7     0xea5ac  1      OPC=nop             
  nop                                                   #  8     0xea5ad  1      OPC=nop             
  nop                                                   #  9     0xea5ae  1      OPC=nop             
  nop                                                   #  10    0xea5af  1      OPC=nop             
  nop                                                   #  11    0xea5b0  1      OPC=nop             
  nop                                                   #  12    0xea5b1  1      OPC=nop             
  nop                                                   #  13    0xea5b2  1      OPC=nop             
  nop                                                   #  14    0xea5b3  1      OPC=nop             
  nop                                                   #  15    0xea5b4  1      OPC=nop             
  nop                                                   #  16    0xea5b5  1      OPC=nop             
  nop                                                   #  17    0xea5b6  1      OPC=nop             
  nop                                                   #  18    0xea5b7  1      OPC=nop             
  nop                                                   #  19    0xea5b8  1      OPC=nop             
  nop                                                   #  20    0xea5b9  1      OPC=nop             
  nop                                                   #  21    0xea5ba  1      OPC=nop             
  callq .strerror                                       #  22    0xea5bb  5      OPC=callq_label     
  leal 0xf(%rsp), %edx                                  #  23    0xea5c0  4      OPC=leal_r32_m16    
  movl %eax, %esi                                       #  24    0xea5c4  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                       #  25    0xea5c6  2      OPC=movl_r32_r32    
  nop                                                   #  26    0xea5c8  1      OPC=nop             
  nop                                                   #  27    0xea5c9  1      OPC=nop             
  nop                                                   #  28    0xea5ca  1      OPC=nop             
  nop                                                   #  29    0xea5cb  1      OPC=nop             
  nop                                                   #  30    0xea5cc  1      OPC=nop             
  nop                                                   #  31    0xea5cd  1      OPC=nop             
  nop                                                   #  32    0xea5ce  1      OPC=nop             
  nop                                                   #  33    0xea5cf  1      OPC=nop             
  nop                                                   #  34    0xea5d0  1      OPC=nop             
  nop                                                   #  35    0xea5d1  1      OPC=nop             
  nop                                                   #  36    0xea5d2  1      OPC=nop             
  nop                                                   #  37    0xea5d3  1      OPC=nop             
  nop                                                   #  38    0xea5d4  1      OPC=nop             
  nop                                                   #  39    0xea5d5  1      OPC=nop             
  nop                                                   #  40    0xea5d6  1      OPC=nop             
  nop                                                   #  41    0xea5d7  1      OPC=nop             
  nop                                                   #  42    0xea5d8  1      OPC=nop             
  nop                                                   #  43    0xea5d9  1      OPC=nop             
  nop                                                   #  44    0xea5da  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                             #  45    0xea5db  5      OPC=callq_label     
  movl %ebx, %eax                                       #  46    0xea5e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                      #  47    0xea5e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  48    0xea5e5  3      OPC=addq_r64_r64    
  popq %rbx                                             #  49    0xea5e8  1      OPC=popq_r64_1      
  popq %r11                                             #  50    0xea5e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  51    0xea5eb  7      OPC=andl_r32_imm32  
  nop                                                   #  52    0xea5f2  1      OPC=nop             
  nop                                                   #  53    0xea5f3  1      OPC=nop             
  nop                                                   #  54    0xea5f4  1      OPC=nop             
  nop                                                   #  55    0xea5f5  1      OPC=nop             
  addq %r15, %r11                                       #  56    0xea5f6  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  57    0xea5f9  3      OPC=jmpq_r64        
  nop                                                   #  58    0xea5fc  1      OPC=nop             
  nop                                                   #  59    0xea5fd  1      OPC=nop             
  nop                                                   #  60    0xea5fe  1      OPC=nop             
  nop                                                   #  61    0xea5ff  1      OPC=nop             
  nop                                                   #  62    0xea600  1      OPC=nop             
  nop                                                   #  63    0xea601  1      OPC=nop             
  nop                                                   #  64    0xea602  1      OPC=nop             
  nop                                                   #  65    0xea603  1      OPC=nop             
  nop                                                   #  66    0xea604  1      OPC=nop             
  nop                                                   #  67    0xea605  1      OPC=nop             
  nop                                                   #  68    0xea606  1      OPC=nop             
  movl %eax, %edi                                       #  69    0xea607  2      OPC=movl_r32_r32    
  nop                                                   #  70    0xea609  1      OPC=nop             
  nop                                                   #  71    0xea60a  1      OPC=nop             
  nop                                                   #  72    0xea60b  1      OPC=nop             
  nop                                                   #  73    0xea60c  1      OPC=nop             
  nop                                                   #  74    0xea60d  1      OPC=nop             
  nop                                                   #  75    0xea60e  1      OPC=nop             
  nop                                                   #  76    0xea60f  1      OPC=nop             
  nop                                                   #  77    0xea610  1      OPC=nop             
  nop                                                   #  78    0xea611  1      OPC=nop             
  nop                                                   #  79    0xea612  1      OPC=nop             
  nop                                                   #  80    0xea613  1      OPC=nop             
  nop                                                   #  81    0xea614  1      OPC=nop             
  nop                                                   #  82    0xea615  1      OPC=nop             
  nop                                                   #  83    0xea616  1      OPC=nop             
  nop                                                   #  84    0xea617  1      OPC=nop             
  nop                                                   #  85    0xea618  1      OPC=nop             
  nop                                                   #  86    0xea619  1      OPC=nop             
  nop                                                   #  87    0xea61a  1      OPC=nop             
  nop                                                   #  88    0xea61b  1      OPC=nop             
  nop                                                   #  89    0xea61c  1      OPC=nop             
  nop                                                   #  90    0xea61d  1      OPC=nop             
  nop                                                   #  91    0xea61e  1      OPC=nop             
  nop                                                   #  92    0xea61f  1      OPC=nop             
  nop                                                   #  93    0xea620  1      OPC=nop             
  nop                                                   #  94    0xea621  1      OPC=nop             
  callq ._Unwind_Resume                                 #  95    0xea622  5      OPC=callq_label     
                                                                                                     
.size _ZNK12_GLOBAL__N_122generic_error_category7messageEi, .-_ZNK12_GLOBAL__N_122generic_error_category7messageEi

