  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, @function

#! file-offset 0xdfa20
#! rip-offset  0x9fa20
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev:                                #        0x9fa20  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x9fa20  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x9fa25  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x9fa28  5      OPC=movq_m64_r64    
  leal 0x4(%r12), %ebx                                                         #  4     0x9fa2d  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x9fa32  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x9fa35  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x9fa38  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x9fa3a  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x9fa3b  5      OPC=callq_label     
  movl %r12d, %r12d                                                            #  10    0x9fa40  3      OPC=movl_r32_r32    
  movl $0x1003b8ac, (%r15,%r12,1)                                              #  11    0x9fa43  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  12    0x9fa4b  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x9fa4d  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x9fa56  2      OPC=xorl_r32_r32    
  nop                                                                          #  15    0x9fa58  1      OPC=nop             
  nop                                                                          #  16    0x9fa59  1      OPC=nop             
  nop                                                                          #  17    0x9fa5a  1      OPC=nop             
  nop                                                                          #  18    0x9fa5b  1      OPC=nop             
  nop                                                                          #  19    0x9fa5c  1      OPC=nop             
  nop                                                                          #  20    0x9fa5d  1      OPC=nop             
  nop                                                                          #  21    0x9fa5e  1      OPC=nop             
  nop                                                                          #  22    0x9fa5f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  23    0x9fa60  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                                 #  24    0x9fa62  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  25    0x9fa6b  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)                                                 #  26    0x9fa6d  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  27    0x9fa73  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  28    0x9fa75  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  29    0x9fa77  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  30    0x9fa80  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  31    0x9fa82  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  32    0x9fa8e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  33    0x9fa90  12     OPC=movl_m32_imm32  
  nop                                                                          #  34    0x9fa9c  1      OPC=nop             
  nop                                                                          #  35    0x9fa9d  1      OPC=nop             
  nop                                                                          #  36    0x9fa9e  1      OPC=nop             
  nop                                                                          #  37    0x9fa9f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  38    0x9faa0  2      OPC=movl_r32_r32    
  movl $0x0, 0x88(%r15,%rbx,1)                                                 #  39    0x9faa2  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  40    0x9faae  2      OPC=movl_r32_r32    
  movl $0x1003b8c0, (%r15,%rbx,1)                                              #  41    0x9fab0  8      OPC=movl_m32_imm32  
  nop                                                                          #  42    0x9fab8  1      OPC=nop             
  nop                                                                          #  43    0x9fab9  1      OPC=nop             
  nop                                                                          #  44    0x9faba  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  45    0x9fabb  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  46    0x9fac0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  47    0x9fac5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  48    0x9faca  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  49    0x9facd  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  50    0x9fad0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  51    0x9fad2  7      OPC=andl_r32_imm32  
  nop                                                                          #  52    0x9fad9  1      OPC=nop             
  nop                                                                          #  53    0x9fada  1      OPC=nop             
  nop                                                                          #  54    0x9fadb  1      OPC=nop             
  nop                                                                          #  55    0x9fadc  1      OPC=nop             
  addq %r15, %r11                                                              #  56    0x9fadd  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  57    0x9fae0  3      OPC=jmpq_r64        
  nop                                                                          #  58    0x9fae3  1      OPC=nop             
  nop                                                                          #  59    0x9fae4  1      OPC=nop             
  nop                                                                          #  60    0x9fae5  1      OPC=nop             
  nop                                                                          #  61    0x9fae6  1      OPC=nop             
  movl %eax, %r12d                                                             #  62    0x9fae7  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  63    0x9faea  2      OPC=movl_r32_r32    
  nop                                                                          #  64    0x9faec  1      OPC=nop             
  nop                                                                          #  65    0x9faed  1      OPC=nop             
  nop                                                                          #  66    0x9faee  1      OPC=nop             
  nop                                                                          #  67    0x9faef  1      OPC=nop             
  nop                                                                          #  68    0x9faf0  1      OPC=nop             
  nop                                                                          #  69    0x9faf1  1      OPC=nop             
  nop                                                                          #  70    0x9faf2  1      OPC=nop             
  nop                                                                          #  71    0x9faf3  1      OPC=nop             
  nop                                                                          #  72    0x9faf4  1      OPC=nop             
  nop                                                                          #  73    0x9faf5  1      OPC=nop             
  nop                                                                          #  74    0x9faf6  1      OPC=nop             
  nop                                                                          #  75    0x9faf7  1      OPC=nop             
  nop                                                                          #  76    0x9faf8  1      OPC=nop             
  nop                                                                          #  77    0x9faf9  1      OPC=nop             
  nop                                                                          #  78    0x9fafa  1      OPC=nop             
  nop                                                                          #  79    0x9fafb  1      OPC=nop             
  nop                                                                          #  80    0x9fafc  1      OPC=nop             
  nop                                                                          #  81    0x9fafd  1      OPC=nop             
  nop                                                                          #  82    0x9fafe  1      OPC=nop             
  nop                                                                          #  83    0x9faff  1      OPC=nop             
  nop                                                                          #  84    0x9fb00  1      OPC=nop             
  nop                                                                          #  85    0x9fb01  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEED2Ev                              #  86    0x9fb02  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  87    0x9fb07  3      OPC=movl_r32_r32    
  nop                                                                          #  88    0x9fb0a  1      OPC=nop             
  nop                                                                          #  89    0x9fb0b  1      OPC=nop             
  nop                                                                          #  90    0x9fb0c  1      OPC=nop             
  nop                                                                          #  91    0x9fb0d  1      OPC=nop             
  nop                                                                          #  92    0x9fb0e  1      OPC=nop             
  nop                                                                          #  93    0x9fb0f  1      OPC=nop             
  nop                                                                          #  94    0x9fb10  1      OPC=nop             
  nop                                                                          #  95    0x9fb11  1      OPC=nop             
  nop                                                                          #  96    0x9fb12  1      OPC=nop             
  nop                                                                          #  97    0x9fb13  1      OPC=nop             
  nop                                                                          #  98    0x9fb14  1      OPC=nop             
  nop                                                                          #  99    0x9fb15  1      OPC=nop             
  nop                                                                          #  100   0x9fb16  1      OPC=nop             
  nop                                                                          #  101   0x9fb17  1      OPC=nop             
  nop                                                                          #  102   0x9fb18  1      OPC=nop             
  nop                                                                          #  103   0x9fb19  1      OPC=nop             
  nop                                                                          #  104   0x9fb1a  1      OPC=nop             
  nop                                                                          #  105   0x9fb1b  1      OPC=nop             
  nop                                                                          #  106   0x9fb1c  1      OPC=nop             
  nop                                                                          #  107   0x9fb1d  1      OPC=nop             
  nop                                                                          #  108   0x9fb1e  1      OPC=nop             
  nop                                                                          #  109   0x9fb1f  1      OPC=nop             
  nop                                                                          #  110   0x9fb20  1      OPC=nop             
  nop                                                                          #  111   0x9fb21  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  112   0x9fb22  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev

