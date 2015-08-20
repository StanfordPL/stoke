  .text
  .globl _ZNSt6localeC1Ev
  .type _ZNSt6localeC1Ev, @function

#! file-offset 0xa2ba0
#! rip-offset  0x62ba0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1Ev:                              #        0x62ba0  0      OPC=<label>         
  pushq %rbx                                    #  1     0x62ba0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                               #  2     0x62ba1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  3     0x62ba3  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)                      #  4     0x62ba5  8      OPC=movl_m32_imm32  
  nop                                           #  5     0x62bad  1      OPC=nop             
  nop                                           #  6     0x62bae  1      OPC=nop             
  nop                                           #  7     0x62baf  1      OPC=nop             
  nop                                           #  8     0x62bb0  1      OPC=nop             
  nop                                           #  9     0x62bb1  1      OPC=nop             
  nop                                           #  10    0x62bb2  1      OPC=nop             
  nop                                           #  11    0x62bb3  1      OPC=nop             
  nop                                           #  12    0x62bb4  1      OPC=nop             
  nop                                           #  13    0x62bb5  1      OPC=nop             
  nop                                           #  14    0x62bb6  1      OPC=nop             
  nop                                           #  15    0x62bb7  1      OPC=nop             
  nop                                           #  16    0x62bb8  1      OPC=nop             
  nop                                           #  17    0x62bb9  1      OPC=nop             
  nop                                           #  18    0x62bba  1      OPC=nop             
  callq ._ZNSt6locale13_S_initializeEv          #  19    0x62bbb  5      OPC=callq_label     
  nop                                           #  20    0x62bc0  1      OPC=nop             
  nop                                           #  21    0x62bc1  1      OPC=nop             
  nop                                           #  22    0x62bc2  1      OPC=nop             
  nop                                           #  23    0x62bc3  1      OPC=nop             
  nop                                           #  24    0x62bc4  1      OPC=nop             
  nop                                           #  25    0x62bc5  1      OPC=nop             
  nop                                           #  26    0x62bc6  1      OPC=nop             
  nop                                           #  27    0x62bc7  1      OPC=nop             
  nop                                           #  28    0x62bc8  1      OPC=nop             
  nop                                           #  29    0x62bc9  1      OPC=nop             
  nop                                           #  30    0x62bca  1      OPC=nop             
  nop                                           #  31    0x62bcb  1      OPC=nop             
  nop                                           #  32    0x62bcc  1      OPC=nop             
  nop                                           #  33    0x62bcd  1      OPC=nop             
  nop                                           #  34    0x62bce  1      OPC=nop             
  nop                                           #  35    0x62bcf  1      OPC=nop             
  nop                                           #  36    0x62bd0  1      OPC=nop             
  nop                                           #  37    0x62bd1  1      OPC=nop             
  nop                                           #  38    0x62bd2  1      OPC=nop             
  nop                                           #  39    0x62bd3  1      OPC=nop             
  nop                                           #  40    0x62bd4  1      OPC=nop             
  nop                                           #  41    0x62bd5  1      OPC=nop             
  nop                                           #  42    0x62bd6  1      OPC=nop             
  nop                                           #  43    0x62bd7  1      OPC=nop             
  nop                                           #  44    0x62bd8  1      OPC=nop             
  nop                                           #  45    0x62bd9  1      OPC=nop             
  nop                                           #  46    0x62bda  1      OPC=nop             
  callq ._ZN12_GLOBAL__N_116get_locale_mutexEv  #  47    0x62bdb  5      OPC=callq_label     
  movl 0x1000fa42(%rip), %eax                   #  48    0x62be0  6      OPC=movl_r32_m32    
  movl %eax, %eax                               #  49    0x62be6  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)                      #  50    0x62be8  5      OPC=addl_m32_imm8   
  movl %ebx, %ebx                               #  51    0x62bed  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                      #  52    0x62bef  4      OPC=movl_m32_r32    
  popq %rbx                                     #  53    0x62bf3  1      OPC=popq_r64_1      
  popq %r11                                     #  54    0x62bf4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  55    0x62bf6  7      OPC=andl_r32_imm32  
  nop                                           #  56    0x62bfd  1      OPC=nop             
  nop                                           #  57    0x62bfe  1      OPC=nop             
  nop                                           #  58    0x62bff  1      OPC=nop             
  nop                                           #  59    0x62c00  1      OPC=nop             
  addq %r15, %r11                               #  60    0x62c01  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  61    0x62c04  3      OPC=jmpq_r64        
  cmpq $0xff, %rdx                              #  62    0x62c07  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                               #  63    0x62c0b  2      OPC=movl_r32_r32    
  je .L_62c20                                   #  64    0x62c0d  2      OPC=je_label        
  nop                                           #  65    0x62c0f  1      OPC=nop             
  nop                                           #  66    0x62c10  1      OPC=nop             
  nop                                           #  67    0x62c11  1      OPC=nop             
  nop                                           #  68    0x62c12  1      OPC=nop             
  nop                                           #  69    0x62c13  1      OPC=nop             
  nop                                           #  70    0x62c14  1      OPC=nop             
  nop                                           #  71    0x62c15  1      OPC=nop             
  nop                                           #  72    0x62c16  1      OPC=nop             
  nop                                           #  73    0x62c17  1      OPC=nop             
  nop                                           #  74    0x62c18  1      OPC=nop             
  nop                                           #  75    0x62c19  1      OPC=nop             
  nop                                           #  76    0x62c1a  1      OPC=nop             
  nop                                           #  77    0x62c1b  1      OPC=nop             
  nop                                           #  78    0x62c1c  1      OPC=nop             
  nop                                           #  79    0x62c1d  1      OPC=nop             
  nop                                           #  80    0x62c1e  1      OPC=nop             
  nop                                           #  81    0x62c1f  1      OPC=nop             
  nop                                           #  82    0x62c20  1      OPC=nop             
  nop                                           #  83    0x62c21  1      OPC=nop             
  callq ._Unwind_Resume                         #  84    0x62c22  5      OPC=callq_label     
.L_62c20:                                       #        0x62c27  0      OPC=<label>         
  nop                                           #  85    0x62c27  1      OPC=nop             
  nop                                           #  86    0x62c28  1      OPC=nop             
  nop                                           #  87    0x62c29  1      OPC=nop             
  nop                                           #  88    0x62c2a  1      OPC=nop             
  nop                                           #  89    0x62c2b  1      OPC=nop             
  nop                                           #  90    0x62c2c  1      OPC=nop             
  nop                                           #  91    0x62c2d  1      OPC=nop             
  nop                                           #  92    0x62c2e  1      OPC=nop             
  nop                                           #  93    0x62c2f  1      OPC=nop             
  nop                                           #  94    0x62c30  1      OPC=nop             
  nop                                           #  95    0x62c31  1      OPC=nop             
  nop                                           #  96    0x62c32  1      OPC=nop             
  nop                                           #  97    0x62c33  1      OPC=nop             
  nop                                           #  98    0x62c34  1      OPC=nop             
  nop                                           #  99    0x62c35  1      OPC=nop             
  nop                                           #  100   0x62c36  1      OPC=nop             
  nop                                           #  101   0x62c37  1      OPC=nop             
  nop                                           #  102   0x62c38  1      OPC=nop             
  nop                                           #  103   0x62c39  1      OPC=nop             
  nop                                           #  104   0x62c3a  1      OPC=nop             
  nop                                           #  105   0x62c3b  1      OPC=nop             
  nop                                           #  106   0x62c3c  1      OPC=nop             
  nop                                           #  107   0x62c3d  1      OPC=nop             
  nop                                           #  108   0x62c3e  1      OPC=nop             
  nop                                           #  109   0x62c3f  1      OPC=nop             
  nop                                           #  110   0x62c40  1      OPC=nop             
  nop                                           #  111   0x62c41  1      OPC=nop             
  callq .__cxa_call_unexpected                  #  112   0x62c42  5      OPC=callq_label     
                                                                                             
.size _ZNSt6localeC1Ev, .-_ZNSt6localeC1Ev

