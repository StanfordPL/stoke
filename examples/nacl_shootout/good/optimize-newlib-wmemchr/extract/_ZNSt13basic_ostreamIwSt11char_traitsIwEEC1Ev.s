  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, @function

#! file-offset 0xdf300
#! rip-offset  0x9f300
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev:                                #        0x9f300  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x9f300  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x9f305  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x9f308  5      OPC=movq_m64_r64    
  leal 0x4(%r12), %ebx                                                         #  4     0x9f30d  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x9f312  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x9f315  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x9f318  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x9f31a  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x9f31b  5      OPC=callq_label     
  movl %r12d, %r12d                                                            #  10    0x9f320  3      OPC=movl_r32_r32    
  movl $0x1003b8ac, (%r15,%r12,1)                                              #  11    0x9f323  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  12    0x9f32b  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x9f32d  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x9f336  2      OPC=xorl_r32_r32    
  nop                                                                          #  15    0x9f338  1      OPC=nop             
  nop                                                                          #  16    0x9f339  1      OPC=nop             
  nop                                                                          #  17    0x9f33a  1      OPC=nop             
  nop                                                                          #  18    0x9f33b  1      OPC=nop             
  nop                                                                          #  19    0x9f33c  1      OPC=nop             
  nop                                                                          #  20    0x9f33d  1      OPC=nop             
  nop                                                                          #  21    0x9f33e  1      OPC=nop             
  nop                                                                          #  22    0x9f33f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  23    0x9f340  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                                 #  24    0x9f342  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  25    0x9f34b  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)                                                 #  26    0x9f34d  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  27    0x9f353  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  28    0x9f355  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  29    0x9f357  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  30    0x9f360  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  31    0x9f362  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  32    0x9f36e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  33    0x9f370  12     OPC=movl_m32_imm32  
  nop                                                                          #  34    0x9f37c  1      OPC=nop             
  nop                                                                          #  35    0x9f37d  1      OPC=nop             
  nop                                                                          #  36    0x9f37e  1      OPC=nop             
  nop                                                                          #  37    0x9f37f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  38    0x9f380  2      OPC=movl_r32_r32    
  movl $0x0, 0x88(%r15,%rbx,1)                                                 #  39    0x9f382  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  40    0x9f38e  2      OPC=movl_r32_r32    
  movl $0x1003b8c0, (%r15,%rbx,1)                                              #  41    0x9f390  8      OPC=movl_m32_imm32  
  nop                                                                          #  42    0x9f398  1      OPC=nop             
  nop                                                                          #  43    0x9f399  1      OPC=nop             
  nop                                                                          #  44    0x9f39a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  45    0x9f39b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  46    0x9f3a0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  47    0x9f3a5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  48    0x9f3aa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  49    0x9f3ad  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  50    0x9f3b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  51    0x9f3b2  7      OPC=andl_r32_imm32  
  nop                                                                          #  52    0x9f3b9  1      OPC=nop             
  nop                                                                          #  53    0x9f3ba  1      OPC=nop             
  nop                                                                          #  54    0x9f3bb  1      OPC=nop             
  nop                                                                          #  55    0x9f3bc  1      OPC=nop             
  addq %r15, %r11                                                              #  56    0x9f3bd  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  57    0x9f3c0  3      OPC=jmpq_r64        
  nop                                                                          #  58    0x9f3c3  1      OPC=nop             
  nop                                                                          #  59    0x9f3c4  1      OPC=nop             
  nop                                                                          #  60    0x9f3c5  1      OPC=nop             
  nop                                                                          #  61    0x9f3c6  1      OPC=nop             
  movl %eax, %r12d                                                             #  62    0x9f3c7  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  63    0x9f3ca  2      OPC=movl_r32_r32    
  nop                                                                          #  64    0x9f3cc  1      OPC=nop             
  nop                                                                          #  65    0x9f3cd  1      OPC=nop             
  nop                                                                          #  66    0x9f3ce  1      OPC=nop             
  nop                                                                          #  67    0x9f3cf  1      OPC=nop             
  nop                                                                          #  68    0x9f3d0  1      OPC=nop             
  nop                                                                          #  69    0x9f3d1  1      OPC=nop             
  nop                                                                          #  70    0x9f3d2  1      OPC=nop             
  nop                                                                          #  71    0x9f3d3  1      OPC=nop             
  nop                                                                          #  72    0x9f3d4  1      OPC=nop             
  nop                                                                          #  73    0x9f3d5  1      OPC=nop             
  nop                                                                          #  74    0x9f3d6  1      OPC=nop             
  nop                                                                          #  75    0x9f3d7  1      OPC=nop             
  nop                                                                          #  76    0x9f3d8  1      OPC=nop             
  nop                                                                          #  77    0x9f3d9  1      OPC=nop             
  nop                                                                          #  78    0x9f3da  1      OPC=nop             
  nop                                                                          #  79    0x9f3db  1      OPC=nop             
  nop                                                                          #  80    0x9f3dc  1      OPC=nop             
  nop                                                                          #  81    0x9f3dd  1      OPC=nop             
  nop                                                                          #  82    0x9f3de  1      OPC=nop             
  nop                                                                          #  83    0x9f3df  1      OPC=nop             
  nop                                                                          #  84    0x9f3e0  1      OPC=nop             
  nop                                                                          #  85    0x9f3e1  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEED2Ev                              #  86    0x9f3e2  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  87    0x9f3e7  3      OPC=movl_r32_r32    
  nop                                                                          #  88    0x9f3ea  1      OPC=nop             
  nop                                                                          #  89    0x9f3eb  1      OPC=nop             
  nop                                                                          #  90    0x9f3ec  1      OPC=nop             
  nop                                                                          #  91    0x9f3ed  1      OPC=nop             
  nop                                                                          #  92    0x9f3ee  1      OPC=nop             
  nop                                                                          #  93    0x9f3ef  1      OPC=nop             
  nop                                                                          #  94    0x9f3f0  1      OPC=nop             
  nop                                                                          #  95    0x9f3f1  1      OPC=nop             
  nop                                                                          #  96    0x9f3f2  1      OPC=nop             
  nop                                                                          #  97    0x9f3f3  1      OPC=nop             
  nop                                                                          #  98    0x9f3f4  1      OPC=nop             
  nop                                                                          #  99    0x9f3f5  1      OPC=nop             
  nop                                                                          #  100   0x9f3f6  1      OPC=nop             
  nop                                                                          #  101   0x9f3f7  1      OPC=nop             
  nop                                                                          #  102   0x9f3f8  1      OPC=nop             
  nop                                                                          #  103   0x9f3f9  1      OPC=nop             
  nop                                                                          #  104   0x9f3fa  1      OPC=nop             
  nop                                                                          #  105   0x9f3fb  1      OPC=nop             
  nop                                                                          #  106   0x9f3fc  1      OPC=nop             
  nop                                                                          #  107   0x9f3fd  1      OPC=nop             
  nop                                                                          #  108   0x9f3fe  1      OPC=nop             
  nop                                                                          #  109   0x9f3ff  1      OPC=nop             
  nop                                                                          #  110   0x9f400  1      OPC=nop             
  nop                                                                          #  111   0x9f401  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  112   0x9f402  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev

