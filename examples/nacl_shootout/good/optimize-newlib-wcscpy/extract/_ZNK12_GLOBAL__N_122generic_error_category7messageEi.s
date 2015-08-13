  .text
  .globl _ZNK12_GLOBAL__N_122generic_error_category7messageEi
  .type _ZNK12_GLOBAL__N_122generic_error_category7messageEi, @function

#! file-offset 0x129b80
#! rip-offset  0xe9b80
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNK12_GLOBAL__N_122generic_error_category7messageEi:  #        0xe9b80  0      OPC=<label>         
  pushq %rbx                                            #  1     0xe9b80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                       #  2     0xe9b81  2      OPC=movl_r32_r32    
  movl %edx, %edi                                       #  3     0xe9b83  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                      #  4     0xe9b85  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  5     0xe9b88  3      OPC=addq_r64_r64    
  nop                                                   #  6     0xe9b8b  1      OPC=nop             
  nop                                                   #  7     0xe9b8c  1      OPC=nop             
  nop                                                   #  8     0xe9b8d  1      OPC=nop             
  nop                                                   #  9     0xe9b8e  1      OPC=nop             
  nop                                                   #  10    0xe9b8f  1      OPC=nop             
  nop                                                   #  11    0xe9b90  1      OPC=nop             
  nop                                                   #  12    0xe9b91  1      OPC=nop             
  nop                                                   #  13    0xe9b92  1      OPC=nop             
  nop                                                   #  14    0xe9b93  1      OPC=nop             
  nop                                                   #  15    0xe9b94  1      OPC=nop             
  nop                                                   #  16    0xe9b95  1      OPC=nop             
  nop                                                   #  17    0xe9b96  1      OPC=nop             
  nop                                                   #  18    0xe9b97  1      OPC=nop             
  nop                                                   #  19    0xe9b98  1      OPC=nop             
  nop                                                   #  20    0xe9b99  1      OPC=nop             
  nop                                                   #  21    0xe9b9a  1      OPC=nop             
  callq .strerror                                       #  22    0xe9b9b  5      OPC=callq_label     
  leal 0xf(%rsp), %edx                                  #  23    0xe9ba0  4      OPC=leal_r32_m16    
  movl %eax, %esi                                       #  24    0xe9ba4  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                       #  25    0xe9ba6  2      OPC=movl_r32_r32    
  nop                                                   #  26    0xe9ba8  1      OPC=nop             
  nop                                                   #  27    0xe9ba9  1      OPC=nop             
  nop                                                   #  28    0xe9baa  1      OPC=nop             
  nop                                                   #  29    0xe9bab  1      OPC=nop             
  nop                                                   #  30    0xe9bac  1      OPC=nop             
  nop                                                   #  31    0xe9bad  1      OPC=nop             
  nop                                                   #  32    0xe9bae  1      OPC=nop             
  nop                                                   #  33    0xe9baf  1      OPC=nop             
  nop                                                   #  34    0xe9bb0  1      OPC=nop             
  nop                                                   #  35    0xe9bb1  1      OPC=nop             
  nop                                                   #  36    0xe9bb2  1      OPC=nop             
  nop                                                   #  37    0xe9bb3  1      OPC=nop             
  nop                                                   #  38    0xe9bb4  1      OPC=nop             
  nop                                                   #  39    0xe9bb5  1      OPC=nop             
  nop                                                   #  40    0xe9bb6  1      OPC=nop             
  nop                                                   #  41    0xe9bb7  1      OPC=nop             
  nop                                                   #  42    0xe9bb8  1      OPC=nop             
  nop                                                   #  43    0xe9bb9  1      OPC=nop             
  nop                                                   #  44    0xe9bba  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                             #  45    0xe9bbb  5      OPC=callq_label     
  movl %ebx, %eax                                       #  46    0xe9bc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                      #  47    0xe9bc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  48    0xe9bc5  3      OPC=addq_r64_r64    
  popq %rbx                                             #  49    0xe9bc8  1      OPC=popq_r64_1      
  popq %r11                                             #  50    0xe9bc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  51    0xe9bcb  7      OPC=andl_r32_imm32  
  nop                                                   #  52    0xe9bd2  1      OPC=nop             
  nop                                                   #  53    0xe9bd3  1      OPC=nop             
  nop                                                   #  54    0xe9bd4  1      OPC=nop             
  nop                                                   #  55    0xe9bd5  1      OPC=nop             
  addq %r15, %r11                                       #  56    0xe9bd6  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  57    0xe9bd9  3      OPC=jmpq_r64        
  nop                                                   #  58    0xe9bdc  1      OPC=nop             
  nop                                                   #  59    0xe9bdd  1      OPC=nop             
  nop                                                   #  60    0xe9bde  1      OPC=nop             
  nop                                                   #  61    0xe9bdf  1      OPC=nop             
  nop                                                   #  62    0xe9be0  1      OPC=nop             
  nop                                                   #  63    0xe9be1  1      OPC=nop             
  nop                                                   #  64    0xe9be2  1      OPC=nop             
  nop                                                   #  65    0xe9be3  1      OPC=nop             
  nop                                                   #  66    0xe9be4  1      OPC=nop             
  nop                                                   #  67    0xe9be5  1      OPC=nop             
  nop                                                   #  68    0xe9be6  1      OPC=nop             
  movl %eax, %edi                                       #  69    0xe9be7  2      OPC=movl_r32_r32    
  nop                                                   #  70    0xe9be9  1      OPC=nop             
  nop                                                   #  71    0xe9bea  1      OPC=nop             
  nop                                                   #  72    0xe9beb  1      OPC=nop             
  nop                                                   #  73    0xe9bec  1      OPC=nop             
  nop                                                   #  74    0xe9bed  1      OPC=nop             
  nop                                                   #  75    0xe9bee  1      OPC=nop             
  nop                                                   #  76    0xe9bef  1      OPC=nop             
  nop                                                   #  77    0xe9bf0  1      OPC=nop             
  nop                                                   #  78    0xe9bf1  1      OPC=nop             
  nop                                                   #  79    0xe9bf2  1      OPC=nop             
  nop                                                   #  80    0xe9bf3  1      OPC=nop             
  nop                                                   #  81    0xe9bf4  1      OPC=nop             
  nop                                                   #  82    0xe9bf5  1      OPC=nop             
  nop                                                   #  83    0xe9bf6  1      OPC=nop             
  nop                                                   #  84    0xe9bf7  1      OPC=nop             
  nop                                                   #  85    0xe9bf8  1      OPC=nop             
  nop                                                   #  86    0xe9bf9  1      OPC=nop             
  nop                                                   #  87    0xe9bfa  1      OPC=nop             
  nop                                                   #  88    0xe9bfb  1      OPC=nop             
  nop                                                   #  89    0xe9bfc  1      OPC=nop             
  nop                                                   #  90    0xe9bfd  1      OPC=nop             
  nop                                                   #  91    0xe9bfe  1      OPC=nop             
  nop                                                   #  92    0xe9bff  1      OPC=nop             
  nop                                                   #  93    0xe9c00  1      OPC=nop             
  nop                                                   #  94    0xe9c01  1      OPC=nop             
  callq ._Unwind_Resume                                 #  95    0xe9c02  5      OPC=callq_label     
                                                                                                     
.size _ZNK12_GLOBAL__N_122generic_error_category7messageEi, .-_ZNK12_GLOBAL__N_122generic_error_category7messageEi

