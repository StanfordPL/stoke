  .text
  .globl _ZNSt6localeC2Ev
  .type _ZNSt6localeC2Ev, @function

#! file-offset 0xa2c40
#! rip-offset  0x62c40
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2Ev:                              #        0x62c40  0      OPC=<label>         
  pushq %rbx                                    #  1     0x62c40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x62c41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x62c43  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x62c45  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x62c4d  1      OPC=nop             
  nop                                           #  6     0x62c4e  1      OPC=nop             
  nop                                           #  7     0x62c4f  1      OPC=nop             
  nop                                           #  8     0x62c50  1      OPC=nop             
  nop                                           #  9     0x62c51  1      OPC=nop             
  nop                                           #  10    0x62c52  1      OPC=nop             
  nop                                           #  11    0x62c53  1      OPC=nop             
  nop                                           #  12    0x62c54  1      OPC=nop             
  nop                                           #  13    0x62c55  1      OPC=nop             
  nop                                           #  14    0x62c56  1      OPC=nop             
  nop                                           #  15    0x62c57  1      OPC=nop             
  nop                                           #  16    0x62c58  1      OPC=nop             
  nop                                           #  17    0x62c59  1      OPC=nop             
  nop                                           #  18    0x62c5a  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x62c5b  5      OPC=callq_label     
  nop                                           #  20    0x62c60  1      OPC=nop             
  nop                                           #  21    0x62c61  1      OPC=nop             
  nop                                           #  22    0x62c62  1      OPC=nop             
  nop                                           #  23    0x62c63  1      OPC=nop             
  nop                                           #  24    0x62c64  1      OPC=nop             
  nop                                           #  25    0x62c65  1      OPC=nop             
  nop                                           #  26    0x62c66  1      OPC=nop             
  nop                                           #  27    0x62c67  1      OPC=nop             
  nop                                           #  28    0x62c68  1      OPC=nop             
  nop                                           #  29    0x62c69  1      OPC=nop             
  nop                                           #  30    0x62c6a  1      OPC=nop             
  nop                                           #  31    0x62c6b  1      OPC=nop             
  nop                                           #  32    0x62c6c  1      OPC=nop             
  nop                                           #  33    0x62c6d  1      OPC=nop             
  nop                                           #  34    0x62c6e  1      OPC=nop             
  nop                                           #  35    0x62c6f  1      OPC=nop             
  nop                                           #  36    0x62c70  1      OPC=nop             
  nop                                           #  37    0x62c71  1      OPC=nop             
  nop                                           #  38    0x62c72  1      OPC=nop             
  nop                                           #  39    0x62c73  1      OPC=nop             
  nop                                           #  40    0x62c74  1      OPC=nop             
  nop                                           #  41    0x62c75  1      OPC=nop             
  nop                                           #  42    0x62c76  1      OPC=nop             
  nop                                           #  43    0x62c77  1      OPC=nop             
  nop                                           #  44    0x62c78  1      OPC=nop             
  nop                                           #  45    0x62c79  1      OPC=nop             
  nop                                           #  46    0x62c7a  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x62c7b  5      OPC=callq_label     
  movl 0x1000f9a2(%rip), %eax                   #  48    0x62c80  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x62c86  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x62c88  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x62c8d  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x62c8f  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x62c93  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x62c94  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x62c96  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x62c9d  1      OPC=nop             
  nop                                           #  57    0x62c9e  1      OPC=nop             
  nop                                           #  58    0x62c9f  1      OPC=nop             
  nop                                           #  59    0x62ca0  1      OPC=nop             
  addq %r15, %r11                               #  60    0x62ca1  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x62ca4  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x62ca7  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x62cab  2      OPC=movl_r32_r32    
  je .L_62cc0                                   #  64    0x62cad  2      OPC=je_label        
  nop                                           #  65    0x62caf  1      OPC=nop             
  nop                                           #  66    0x62cb0  1      OPC=nop             
  nop                                           #  67    0x62cb1  1      OPC=nop             
  nop                                           #  68    0x62cb2  1      OPC=nop             
  nop                                           #  69    0x62cb3  1      OPC=nop             
  nop                                           #  70    0x62cb4  1      OPC=nop             
  nop                                           #  71    0x62cb5  1      OPC=nop             
  nop                                           #  72    0x62cb6  1      OPC=nop             
  nop                                           #  73    0x62cb7  1      OPC=nop             
  nop                                           #  74    0x62cb8  1      OPC=nop             
  nop                                           #  75    0x62cb9  1      OPC=nop             
  nop                                           #  76    0x62cba  1      OPC=nop             
  nop                                           #  77    0x62cbb  1      OPC=nop             
  nop                                           #  78    0x62cbc  1      OPC=nop             
  nop                                           #  79    0x62cbd  1      OPC=nop             
  nop                                           #  80    0x62cbe  1      OPC=nop             
  nop                                           #  81    0x62cbf  1      OPC=nop             
  nop                                           #  82    0x62cc0  1      OPC=nop             
  nop                                           #  83    0x62cc1  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x62cc2  5      OPC=callq_label     
.L_62cc0:                                       #        0x62cc7  0      OPC=<label>         
  nop                                           #  85    0x62cc7  1      OPC=nop             
  nop                                           #  86    0x62cc8  1      OPC=nop             
  nop                                           #  87    0x62cc9  1      OPC=nop             
  nop                                           #  88    0x62cca  1      OPC=nop             
  nop                                           #  89    0x62ccb  1      OPC=nop             
  nop                                           #  90    0x62ccc  1      OPC=nop             
  nop                                           #  91    0x62ccd  1      OPC=nop             
  nop                                           #  92    0x62cce  1      OPC=nop             
  nop                                           #  93    0x62ccf  1      OPC=nop             
  nop                                           #  94    0x62cd0  1      OPC=nop             
  nop                                           #  95    0x62cd1  1      OPC=nop             
  nop                                           #  96    0x62cd2  1      OPC=nop             
  nop                                           #  97    0x62cd3  1      OPC=nop             
  nop                                           #  98    0x62cd4  1      OPC=nop             
  nop                                           #  99    0x62cd5  1      OPC=nop             
  nop                                           #  100   0x62cd6  1      OPC=nop             
  nop                                           #  101   0x62cd7  1      OPC=nop             
  nop                                           #  102   0x62cd8  1      OPC=nop             
  nop                                           #  103   0x62cd9  1      OPC=nop             
  nop                                           #  104   0x62cda  1      OPC=nop             
  nop                                           #  105   0x62cdb  1      OPC=nop             
  nop                                           #  106   0x62cdc  1      OPC=nop             
  nop                                           #  107   0x62cdd  1      OPC=nop             
  nop                                           #  108   0x62cde  1      OPC=nop             
  nop                                           #  109   0x62cdf  1      OPC=nop             
  nop                                           #  110   0x62ce0  1      OPC=nop             
  nop                                           #  111   0x62ce1  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x62ce2  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC2Ev, .-_ZNSt6localeC2Ev

