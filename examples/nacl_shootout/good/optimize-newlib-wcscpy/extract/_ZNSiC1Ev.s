  .text
  .globl _ZNSiC1Ev
  .type _ZNSiC1Ev, @function

#! file-offset 0xa84a0
#! rip-offset  0x684a0
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC1Ev:                                                                    #        0x684a0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x684a0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x684a5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x684a8  5      OPC=movq_m64_r64    
  leal 0x8(%r12), %ebx                                                         #  4     0x684ad  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x684b2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x684b5  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x684b8  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x684ba  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x684bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                              #  10    0x684c0  2      OPC=movl_r32_r32    
  movb $0x0, 0x74(%r15,%rbx,1)                                                 #  11    0x684c2  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                              #  12    0x684c8  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x684ca  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x684d3  2      OPC=xorl_r32_r32    
  movl %r12d, %r12d                                                            #  15    0x684d5  3      OPC=movl_r32_r32    
  movl $0x1003a82c, (%r15,%r12,1)                                              #  16    0x684d8  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  17    0x684e0  2      OPC=movl_r32_r32    
  movb $0x0, 0x75(%r15,%rbx,1)                                                 #  18    0x684e2  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  19    0x684e8  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  20    0x684ea  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                                 #  21    0x684ec  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  22    0x684f5  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  23    0x684f7  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  24    0x68500  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  25    0x68502  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  26    0x6850e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  27    0x68510  12     OPC=movl_m32_imm32  
  nop                                                                          #  28    0x6851c  1      OPC=nop             
  nop                                                                          #  29    0x6851d  1      OPC=nop             
  nop                                                                          #  30    0x6851e  1      OPC=nop             
  nop                                                                          #  31    0x6851f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  32    0x68520  2      OPC=movl_r32_r32    
  movl $0x1003a840, (%r15,%rbx,1)                                              #  33    0x68522  8      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                            #  34    0x6852a  3      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%r12,1)                                                  #  35    0x6852d  9      OPC=movl_m32_imm32  
  nop                                                                          #  36    0x68536  1      OPC=nop             
  nop                                                                          #  37    0x68537  1      OPC=nop             
  nop                                                                          #  38    0x68538  1      OPC=nop             
  nop                                                                          #  39    0x68539  1      OPC=nop             
  nop                                                                          #  40    0x6853a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  41    0x6853b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  42    0x68540  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  43    0x68545  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  44    0x6854a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  45    0x6854d  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  46    0x68550  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  47    0x68552  7      OPC=andl_r32_imm32  
  nop                                                                          #  48    0x68559  1      OPC=nop             
  nop                                                                          #  49    0x6855a  1      OPC=nop             
  nop                                                                          #  50    0x6855b  1      OPC=nop             
  nop                                                                          #  51    0x6855c  1      OPC=nop             
  addq %r15, %r11                                                              #  52    0x6855d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  53    0x68560  3      OPC=jmpq_r64        
  nop                                                                          #  54    0x68563  1      OPC=nop             
  nop                                                                          #  55    0x68564  1      OPC=nop             
  nop                                                                          #  56    0x68565  1      OPC=nop             
  nop                                                                          #  57    0x68566  1      OPC=nop             
  movl %eax, %r12d                                                             #  58    0x68567  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  59    0x6856a  2      OPC=movl_r32_r32    
  nop                                                                          #  60    0x6856c  1      OPC=nop             
  nop                                                                          #  61    0x6856d  1      OPC=nop             
  nop                                                                          #  62    0x6856e  1      OPC=nop             
  nop                                                                          #  63    0x6856f  1      OPC=nop             
  nop                                                                          #  64    0x68570  1      OPC=nop             
  nop                                                                          #  65    0x68571  1      OPC=nop             
  nop                                                                          #  66    0x68572  1      OPC=nop             
  nop                                                                          #  67    0x68573  1      OPC=nop             
  nop                                                                          #  68    0x68574  1      OPC=nop             
  nop                                                                          #  69    0x68575  1      OPC=nop             
  nop                                                                          #  70    0x68576  1      OPC=nop             
  nop                                                                          #  71    0x68577  1      OPC=nop             
  nop                                                                          #  72    0x68578  1      OPC=nop             
  nop                                                                          #  73    0x68579  1      OPC=nop             
  nop                                                                          #  74    0x6857a  1      OPC=nop             
  nop                                                                          #  75    0x6857b  1      OPC=nop             
  nop                                                                          #  76    0x6857c  1      OPC=nop             
  nop                                                                          #  77    0x6857d  1      OPC=nop             
  nop                                                                          #  78    0x6857e  1      OPC=nop             
  nop                                                                          #  79    0x6857f  1      OPC=nop             
  nop                                                                          #  80    0x68580  1      OPC=nop             
  nop                                                                          #  81    0x68581  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEED2Ev                              #  82    0x68582  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  83    0x68587  3      OPC=movl_r32_r32    
  nop                                                                          #  84    0x6858a  1      OPC=nop             
  nop                                                                          #  85    0x6858b  1      OPC=nop             
  nop                                                                          #  86    0x6858c  1      OPC=nop             
  nop                                                                          #  87    0x6858d  1      OPC=nop             
  nop                                                                          #  88    0x6858e  1      OPC=nop             
  nop                                                                          #  89    0x6858f  1      OPC=nop             
  nop                                                                          #  90    0x68590  1      OPC=nop             
  nop                                                                          #  91    0x68591  1      OPC=nop             
  nop                                                                          #  92    0x68592  1      OPC=nop             
  nop                                                                          #  93    0x68593  1      OPC=nop             
  nop                                                                          #  94    0x68594  1      OPC=nop             
  nop                                                                          #  95    0x68595  1      OPC=nop             
  nop                                                                          #  96    0x68596  1      OPC=nop             
  nop                                                                          #  97    0x68597  1      OPC=nop             
  nop                                                                          #  98    0x68598  1      OPC=nop             
  nop                                                                          #  99    0x68599  1      OPC=nop             
  nop                                                                          #  100   0x6859a  1      OPC=nop             
  nop                                                                          #  101   0x6859b  1      OPC=nop             
  nop                                                                          #  102   0x6859c  1      OPC=nop             
  nop                                                                          #  103   0x6859d  1      OPC=nop             
  nop                                                                          #  104   0x6859e  1      OPC=nop             
  nop                                                                          #  105   0x6859f  1      OPC=nop             
  nop                                                                          #  106   0x685a0  1      OPC=nop             
  nop                                                                          #  107   0x685a1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  108   0x685a2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC1Ev, .-_ZNSiC1Ev

