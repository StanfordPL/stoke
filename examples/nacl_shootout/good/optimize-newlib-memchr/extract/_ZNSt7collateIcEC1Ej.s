  .text
  .globl _ZNSt7collateIcEC1Ej
  .type _ZNSt7collateIcEC1Ej, @function

#! file-offset 0xbcb60
#! rip-offset  0x7cb60
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1Ej:                          #        0x7cb60  0      OPC=<label>         
  pushq %rbx                                    #  1     0x7cb60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0x7cb61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0x7cb63  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0x7cb65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0x7cb68  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0x7cb6b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0x7cb6d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)               #  8     0x7cb6f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0x7cb77  3      OPC=setne_r8        
  nop                                           #  10    0x7cb7a  1      OPC=nop             
  nop                                           #  11    0x7cb7b  1      OPC=nop             
  nop                                           #  12    0x7cb7c  1      OPC=nop             
  nop                                           #  13    0x7cb7d  1      OPC=nop             
  nop                                           #  14    0x7cb7e  1      OPC=nop             
  nop                                           #  15    0x7cb7f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0x7cb80  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0x7cb82  5      OPC=movl_m32_r32    
  nop                                           #  18    0x7cb87  1      OPC=nop             
  nop                                           #  19    0x7cb88  1      OPC=nop             
  nop                                           #  20    0x7cb89  1      OPC=nop             
  nop                                           #  21    0x7cb8a  1      OPC=nop             
  nop                                           #  22    0x7cb8b  1      OPC=nop             
  nop                                           #  23    0x7cb8c  1      OPC=nop             
  nop                                           #  24    0x7cb8d  1      OPC=nop             
  nop                                           #  25    0x7cb8e  1      OPC=nop             
  nop                                           #  26    0x7cb8f  1      OPC=nop             
  nop                                           #  27    0x7cb90  1      OPC=nop             
  nop                                           #  28    0x7cb91  1      OPC=nop             
  nop                                           #  29    0x7cb92  1      OPC=nop             
  nop                                           #  30    0x7cb93  1      OPC=nop             
  nop                                           #  31    0x7cb94  1      OPC=nop             
  nop                                           #  32    0x7cb95  1      OPC=nop             
  nop                                           #  33    0x7cb96  1      OPC=nop             
  nop                                           #  34    0x7cb97  1      OPC=nop             
  nop                                           #  35    0x7cb98  1      OPC=nop             
  nop                                           #  36    0x7cb99  1      OPC=nop             
  nop                                           #  37    0x7cb9a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0x7cb9b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0x7cba0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0x7cba2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0x7cba7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0x7cbaa  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0x7cbad  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0x7cbae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0x7cbb0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0x7cbb7  1      OPC=nop             
  nop                                           #  47    0x7cbb8  1      OPC=nop             
  nop                                           #  48    0x7cbb9  1      OPC=nop             
  nop                                           #  49    0x7cbba  1      OPC=nop             
  addq %r15, %r11                               #  50    0x7cbbb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0x7cbbe  3      OPC=jmpq_r64        
  nop                                           #  52    0x7cbc1  1      OPC=nop             
  nop                                           #  53    0x7cbc2  1      OPC=nop             
  nop                                           #  54    0x7cbc3  1      OPC=nop             
  nop                                           #  55    0x7cbc4  1      OPC=nop             
  nop                                           #  56    0x7cbc5  1      OPC=nop             
  nop                                           #  57    0x7cbc6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0x7cbc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0x7cbc9  4      OPC=movl_m32_r32    
  nop                                           #  60    0x7cbcd  1      OPC=nop             
  nop                                           #  61    0x7cbce  1      OPC=nop             
  nop                                           #  62    0x7cbcf  1      OPC=nop             
  nop                                           #  63    0x7cbd0  1      OPC=nop             
  nop                                           #  64    0x7cbd1  1      OPC=nop             
  nop                                           #  65    0x7cbd2  1      OPC=nop             
  nop                                           #  66    0x7cbd3  1      OPC=nop             
  nop                                           #  67    0x7cbd4  1      OPC=nop             
  nop                                           #  68    0x7cbd5  1      OPC=nop             
  nop                                           #  69    0x7cbd6  1      OPC=nop             
  nop                                           #  70    0x7cbd7  1      OPC=nop             
  nop                                           #  71    0x7cbd8  1      OPC=nop             
  nop                                           #  72    0x7cbd9  1      OPC=nop             
  nop                                           #  73    0x7cbda  1      OPC=nop             
  nop                                           #  74    0x7cbdb  1      OPC=nop             
  nop                                           #  75    0x7cbdc  1      OPC=nop             
  nop                                           #  76    0x7cbdd  1      OPC=nop             
  nop                                           #  77    0x7cbde  1      OPC=nop             
  nop                                           #  78    0x7cbdf  1      OPC=nop             
  nop                                           #  79    0x7cbe0  1      OPC=nop             
  nop                                           #  80    0x7cbe1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0x7cbe2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0x7cbe7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0x7cbeb  2      OPC=movl_r32_r32    
  nop                                           #  84    0x7cbed  1      OPC=nop             
  nop                                           #  85    0x7cbee  1      OPC=nop             
  nop                                           #  86    0x7cbef  1      OPC=nop             
  nop                                           #  87    0x7cbf0  1      OPC=nop             
  nop                                           #  88    0x7cbf1  1      OPC=nop             
  nop                                           #  89    0x7cbf2  1      OPC=nop             
  nop                                           #  90    0x7cbf3  1      OPC=nop             
  nop                                           #  91    0x7cbf4  1      OPC=nop             
  nop                                           #  92    0x7cbf5  1      OPC=nop             
  nop                                           #  93    0x7cbf6  1      OPC=nop             
  nop                                           #  94    0x7cbf7  1      OPC=nop             
  nop                                           #  95    0x7cbf8  1      OPC=nop             
  nop                                           #  96    0x7cbf9  1      OPC=nop             
  nop                                           #  97    0x7cbfa  1      OPC=nop             
  nop                                           #  98    0x7cbfb  1      OPC=nop             
  nop                                           #  99    0x7cbfc  1      OPC=nop             
  nop                                           #  100   0x7cbfd  1      OPC=nop             
  nop                                           #  101   0x7cbfe  1      OPC=nop             
  nop                                           #  102   0x7cbff  1      OPC=nop             
  nop                                           #  103   0x7cc00  1      OPC=nop             
  nop                                           #  104   0x7cc01  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0x7cc02  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIcEC1Ej, .-_ZNSt7collateIcEC1Ej

