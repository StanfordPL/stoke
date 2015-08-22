  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC2Ej, @function

#! file-offset 0x124780
#! rip-offset  0xe4780
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC2Ej:             #        0xe4780  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe4780  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe4781  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe4783  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe4785  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe4788  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe478b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe478d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe478f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe4797  3      OPC=setne_r8        
  nop                                           #  10    0xe479a  1      OPC=nop             
  nop                                           #  11    0xe479b  1      OPC=nop             
  nop                                           #  12    0xe479c  1      OPC=nop             
  nop                                           #  13    0xe479d  1      OPC=nop             
  nop                                           #  14    0xe479e  1      OPC=nop             
  nop                                           #  15    0xe479f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe47a0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe47a2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe47a7  1      OPC=nop             
  nop                                           #  19    0xe47a8  1      OPC=nop             
  nop                                           #  20    0xe47a9  1      OPC=nop             
  nop                                           #  21    0xe47aa  1      OPC=nop             
  nop                                           #  22    0xe47ab  1      OPC=nop             
  nop                                           #  23    0xe47ac  1      OPC=nop             
  nop                                           #  24    0xe47ad  1      OPC=nop             
  nop                                           #  25    0xe47ae  1      OPC=nop             
  nop                                           #  26    0xe47af  1      OPC=nop             
  nop                                           #  27    0xe47b0  1      OPC=nop             
  nop                                           #  28    0xe47b1  1      OPC=nop             
  nop                                           #  29    0xe47b2  1      OPC=nop             
  nop                                           #  30    0xe47b3  1      OPC=nop             
  nop                                           #  31    0xe47b4  1      OPC=nop             
  nop                                           #  32    0xe47b5  1      OPC=nop             
  nop                                           #  33    0xe47b6  1      OPC=nop             
  nop                                           #  34    0xe47b7  1      OPC=nop             
  nop                                           #  35    0xe47b8  1      OPC=nop             
  nop                                           #  36    0xe47b9  1      OPC=nop             
  nop                                           #  37    0xe47ba  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe47bb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe47c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe47c2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe47c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe47ca  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe47cd  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe47ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe47d0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe47d7  1      OPC=nop             
  nop                                           #  47    0xe47d8  1      OPC=nop             
  nop                                           #  48    0xe47d9  1      OPC=nop             
  nop                                           #  49    0xe47da  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe47db  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe47de  3      OPC=jmpq_r64        
  nop                                           #  52    0xe47e1  1      OPC=nop             
  nop                                           #  53    0xe47e2  1      OPC=nop             
  nop                                           #  54    0xe47e3  1      OPC=nop             
  nop                                           #  55    0xe47e4  1      OPC=nop             
  nop                                           #  56    0xe47e5  1      OPC=nop             
  nop                                           #  57    0xe47e6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe47e7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe47e9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe47eb  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe47f3  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe47f7  1      OPC=nop             
  nop                                           #  63    0xe47f8  1      OPC=nop             
  nop                                           #  64    0xe47f9  1      OPC=nop             
  nop                                           #  65    0xe47fa  1      OPC=nop             
  nop                                           #  66    0xe47fb  1      OPC=nop             
  nop                                           #  67    0xe47fc  1      OPC=nop             
  nop                                           #  68    0xe47fd  1      OPC=nop             
  nop                                           #  69    0xe47fe  1      OPC=nop             
  nop                                           #  70    0xe47ff  1      OPC=nop             
  nop                                           #  71    0xe4800  1      OPC=nop             
  nop                                           #  72    0xe4801  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4802  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4807  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe480b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe480d  1      OPC=nop             
  nop                                           #  77    0xe480e  1      OPC=nop             
  nop                                           #  78    0xe480f  1      OPC=nop             
  nop                                           #  79    0xe4810  1      OPC=nop             
  nop                                           #  80    0xe4811  1      OPC=nop             
  nop                                           #  81    0xe4812  1      OPC=nop             
  nop                                           #  82    0xe4813  1      OPC=nop             
  nop                                           #  83    0xe4814  1      OPC=nop             
  nop                                           #  84    0xe4815  1      OPC=nop             
  nop                                           #  85    0xe4816  1      OPC=nop             
  nop                                           #  86    0xe4817  1      OPC=nop             
  nop                                           #  87    0xe4818  1      OPC=nop             
  nop                                           #  88    0xe4819  1      OPC=nop             
  nop                                           #  89    0xe481a  1      OPC=nop             
  nop                                           #  90    0xe481b  1      OPC=nop             
  nop                                           #  91    0xe481c  1      OPC=nop             
  nop                                           #  92    0xe481d  1      OPC=nop             
  nop                                           #  93    0xe481e  1      OPC=nop             
  nop                                           #  94    0xe481f  1      OPC=nop             
  nop                                           #  95    0xe4820  1      OPC=nop             
  nop                                           #  96    0xe4821  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4822  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC2Ej

