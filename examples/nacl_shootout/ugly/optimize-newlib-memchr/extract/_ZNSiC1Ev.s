  .text
  .globl _ZNSiC1Ev
  .type _ZNSiC1Ev, @function

#! file-offset 0xa8ec0
#! rip-offset  0x68ec0
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC1Ev:                                                                    #        0x68ec0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x68ec0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x68ec5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x68ec8  5      OPC=movq_m64_r64    
  leal 0x8(%r12), %ebx                                                         #  4     0x68ecd  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x68ed2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x68ed5  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x68ed8  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x68eda  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x68edb  5      OPC=callq_label     
  movl %ebx, %ebx                                                              #  10    0x68ee0  2      OPC=movl_r32_r32    
  movb $0x0, 0x74(%r15,%rbx,1)                                                 #  11    0x68ee2  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                              #  12    0x68ee8  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x68eea  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x68ef3  2      OPC=xorl_r32_r32    
  movl %r12d, %r12d                                                            #  15    0x68ef5  3      OPC=movl_r32_r32    
  movl $0x1003a82c, (%r15,%r12,1)                                              #  16    0x68ef8  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  17    0x68f00  2      OPC=movl_r32_r32    
  movb $0x0, 0x75(%r15,%rbx,1)                                                 #  18    0x68f02  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  19    0x68f08  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  20    0x68f0a  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                                 #  21    0x68f0c  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  22    0x68f15  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  23    0x68f17  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  24    0x68f20  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  25    0x68f22  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  26    0x68f2e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  27    0x68f30  12     OPC=movl_m32_imm32  
  nop                                                                          #  28    0x68f3c  1      OPC=nop             
  nop                                                                          #  29    0x68f3d  1      OPC=nop             
  nop                                                                          #  30    0x68f3e  1      OPC=nop             
  nop                                                                          #  31    0x68f3f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  32    0x68f40  2      OPC=movl_r32_r32    
  movl $0x1003a840, (%r15,%rbx,1)                                              #  33    0x68f42  8      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                            #  34    0x68f4a  3      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%r12,1)                                                  #  35    0x68f4d  9      OPC=movl_m32_imm32  
  nop                                                                          #  36    0x68f56  1      OPC=nop             
  nop                                                                          #  37    0x68f57  1      OPC=nop             
  nop                                                                          #  38    0x68f58  1      OPC=nop             
  nop                                                                          #  39    0x68f59  1      OPC=nop             
  nop                                                                          #  40    0x68f5a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  41    0x68f5b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  42    0x68f60  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  43    0x68f65  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  44    0x68f6a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  45    0x68f6d  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  46    0x68f70  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  47    0x68f72  7      OPC=andl_r32_imm32  
  nop                                                                          #  48    0x68f79  1      OPC=nop             
  nop                                                                          #  49    0x68f7a  1      OPC=nop             
  nop                                                                          #  50    0x68f7b  1      OPC=nop             
  nop                                                                          #  51    0x68f7c  1      OPC=nop             
  addq %r15, %r11                                                              #  52    0x68f7d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  53    0x68f80  3      OPC=jmpq_r64        
  nop                                                                          #  54    0x68f83  1      OPC=nop             
  nop                                                                          #  55    0x68f84  1      OPC=nop             
  nop                                                                          #  56    0x68f85  1      OPC=nop             
  nop                                                                          #  57    0x68f86  1      OPC=nop             
  movl %eax, %r12d                                                             #  58    0x68f87  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  59    0x68f8a  2      OPC=movl_r32_r32    
  nop                                                                          #  60    0x68f8c  1      OPC=nop             
  nop                                                                          #  61    0x68f8d  1      OPC=nop             
  nop                                                                          #  62    0x68f8e  1      OPC=nop             
  nop                                                                          #  63    0x68f8f  1      OPC=nop             
  nop                                                                          #  64    0x68f90  1      OPC=nop             
  nop                                                                          #  65    0x68f91  1      OPC=nop             
  nop                                                                          #  66    0x68f92  1      OPC=nop             
  nop                                                                          #  67    0x68f93  1      OPC=nop             
  nop                                                                          #  68    0x68f94  1      OPC=nop             
  nop                                                                          #  69    0x68f95  1      OPC=nop             
  nop                                                                          #  70    0x68f96  1      OPC=nop             
  nop                                                                          #  71    0x68f97  1      OPC=nop             
  nop                                                                          #  72    0x68f98  1      OPC=nop             
  nop                                                                          #  73    0x68f99  1      OPC=nop             
  nop                                                                          #  74    0x68f9a  1      OPC=nop             
  nop                                                                          #  75    0x68f9b  1      OPC=nop             
  nop                                                                          #  76    0x68f9c  1      OPC=nop             
  nop                                                                          #  77    0x68f9d  1      OPC=nop             
  nop                                                                          #  78    0x68f9e  1      OPC=nop             
  nop                                                                          #  79    0x68f9f  1      OPC=nop             
  nop                                                                          #  80    0x68fa0  1      OPC=nop             
  nop                                                                          #  81    0x68fa1  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEED2Ev                              #  82    0x68fa2  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  83    0x68fa7  3      OPC=movl_r32_r32    
  nop                                                                          #  84    0x68faa  1      OPC=nop             
  nop                                                                          #  85    0x68fab  1      OPC=nop             
  nop                                                                          #  86    0x68fac  1      OPC=nop             
  nop                                                                          #  87    0x68fad  1      OPC=nop             
  nop                                                                          #  88    0x68fae  1      OPC=nop             
  nop                                                                          #  89    0x68faf  1      OPC=nop             
  nop                                                                          #  90    0x68fb0  1      OPC=nop             
  nop                                                                          #  91    0x68fb1  1      OPC=nop             
  nop                                                                          #  92    0x68fb2  1      OPC=nop             
  nop                                                                          #  93    0x68fb3  1      OPC=nop             
  nop                                                                          #  94    0x68fb4  1      OPC=nop             
  nop                                                                          #  95    0x68fb5  1      OPC=nop             
  nop                                                                          #  96    0x68fb6  1      OPC=nop             
  nop                                                                          #  97    0x68fb7  1      OPC=nop             
  nop                                                                          #  98    0x68fb8  1      OPC=nop             
  nop                                                                          #  99    0x68fb9  1      OPC=nop             
  nop                                                                          #  100   0x68fba  1      OPC=nop             
  nop                                                                          #  101   0x68fbb  1      OPC=nop             
  nop                                                                          #  102   0x68fbc  1      OPC=nop             
  nop                                                                          #  103   0x68fbd  1      OPC=nop             
  nop                                                                          #  104   0x68fbe  1      OPC=nop             
  nop                                                                          #  105   0x68fbf  1      OPC=nop             
  nop                                                                          #  106   0x68fc0  1      OPC=nop             
  nop                                                                          #  107   0x68fc1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  108   0x68fc2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC1Ev, .-_ZNSiC1Ev

