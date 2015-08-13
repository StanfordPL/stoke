  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, @function

#! file-offset 0xdf000
#! rip-offset  0x9f000
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev:                                #        0x9f000  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x9f000  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x9f005  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x9f008  5      OPC=movq_m64_r64    
  leal 0x4(%r12), %ebx                                                         #  4     0x9f00d  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x9f012  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x9f015  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x9f018  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x9f01a  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x9f01b  5      OPC=callq_label     
  movl %r12d, %r12d                                                            #  10    0x9f020  3      OPC=movl_r32_r32    
  movl $0x1003b8ac, (%r15,%r12,1)                                              #  11    0x9f023  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  12    0x9f02b  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x9f02d  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x9f036  2      OPC=xorl_r32_r32    
  nop                                                                          #  15    0x9f038  1      OPC=nop             
  nop                                                                          #  16    0x9f039  1      OPC=nop             
  nop                                                                          #  17    0x9f03a  1      OPC=nop             
  nop                                                                          #  18    0x9f03b  1      OPC=nop             
  nop                                                                          #  19    0x9f03c  1      OPC=nop             
  nop                                                                          #  20    0x9f03d  1      OPC=nop             
  nop                                                                          #  21    0x9f03e  1      OPC=nop             
  nop                                                                          #  22    0x9f03f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  23    0x9f040  2      OPC=movl_r32_r32    
  movl $0x0, 0x74(%r15,%rbx,1)                                                 #  24    0x9f042  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  25    0x9f04b  2      OPC=movl_r32_r32    
  movb $0x0, 0x78(%r15,%rbx,1)                                                 #  26    0x9f04d  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  27    0x9f053  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  28    0x9f055  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  29    0x9f057  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  30    0x9f060  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  31    0x9f062  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  32    0x9f06e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  33    0x9f070  12     OPC=movl_m32_imm32  
  nop                                                                          #  34    0x9f07c  1      OPC=nop             
  nop                                                                          #  35    0x9f07d  1      OPC=nop             
  nop                                                                          #  36    0x9f07e  1      OPC=nop             
  nop                                                                          #  37    0x9f07f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  38    0x9f080  2      OPC=movl_r32_r32    
  movl $0x0, 0x88(%r15,%rbx,1)                                                 #  39    0x9f082  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  40    0x9f08e  2      OPC=movl_r32_r32    
  movl $0x1003b8c0, (%r15,%rbx,1)                                              #  41    0x9f090  8      OPC=movl_m32_imm32  
  nop                                                                          #  42    0x9f098  1      OPC=nop             
  nop                                                                          #  43    0x9f099  1      OPC=nop             
  nop                                                                          #  44    0x9f09a  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E  #  45    0x9f09b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  46    0x9f0a0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  47    0x9f0a5  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  48    0x9f0aa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  49    0x9f0ad  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  50    0x9f0b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  51    0x9f0b2  7      OPC=andl_r32_imm32  
  nop                                                                          #  52    0x9f0b9  1      OPC=nop             
  nop                                                                          #  53    0x9f0ba  1      OPC=nop             
  nop                                                                          #  54    0x9f0bb  1      OPC=nop             
  nop                                                                          #  55    0x9f0bc  1      OPC=nop             
  addq %r15, %r11                                                              #  56    0x9f0bd  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  57    0x9f0c0  3      OPC=jmpq_r64        
  nop                                                                          #  58    0x9f0c3  1      OPC=nop             
  nop                                                                          #  59    0x9f0c4  1      OPC=nop             
  nop                                                                          #  60    0x9f0c5  1      OPC=nop             
  nop                                                                          #  61    0x9f0c6  1      OPC=nop             
  movl %eax, %r12d                                                             #  62    0x9f0c7  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  63    0x9f0ca  2      OPC=movl_r32_r32    
  nop                                                                          #  64    0x9f0cc  1      OPC=nop             
  nop                                                                          #  65    0x9f0cd  1      OPC=nop             
  nop                                                                          #  66    0x9f0ce  1      OPC=nop             
  nop                                                                          #  67    0x9f0cf  1      OPC=nop             
  nop                                                                          #  68    0x9f0d0  1      OPC=nop             
  nop                                                                          #  69    0x9f0d1  1      OPC=nop             
  nop                                                                          #  70    0x9f0d2  1      OPC=nop             
  nop                                                                          #  71    0x9f0d3  1      OPC=nop             
  nop                                                                          #  72    0x9f0d4  1      OPC=nop             
  nop                                                                          #  73    0x9f0d5  1      OPC=nop             
  nop                                                                          #  74    0x9f0d6  1      OPC=nop             
  nop                                                                          #  75    0x9f0d7  1      OPC=nop             
  nop                                                                          #  76    0x9f0d8  1      OPC=nop             
  nop                                                                          #  77    0x9f0d9  1      OPC=nop             
  nop                                                                          #  78    0x9f0da  1      OPC=nop             
  nop                                                                          #  79    0x9f0db  1      OPC=nop             
  nop                                                                          #  80    0x9f0dc  1      OPC=nop             
  nop                                                                          #  81    0x9f0dd  1      OPC=nop             
  nop                                                                          #  82    0x9f0de  1      OPC=nop             
  nop                                                                          #  83    0x9f0df  1      OPC=nop             
  nop                                                                          #  84    0x9f0e0  1      OPC=nop             
  nop                                                                          #  85    0x9f0e1  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEED2Ev                              #  86    0x9f0e2  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  87    0x9f0e7  3      OPC=movl_r32_r32    
  nop                                                                          #  88    0x9f0ea  1      OPC=nop             
  nop                                                                          #  89    0x9f0eb  1      OPC=nop             
  nop                                                                          #  90    0x9f0ec  1      OPC=nop             
  nop                                                                          #  91    0x9f0ed  1      OPC=nop             
  nop                                                                          #  92    0x9f0ee  1      OPC=nop             
  nop                                                                          #  93    0x9f0ef  1      OPC=nop             
  nop                                                                          #  94    0x9f0f0  1      OPC=nop             
  nop                                                                          #  95    0x9f0f1  1      OPC=nop             
  nop                                                                          #  96    0x9f0f2  1      OPC=nop             
  nop                                                                          #  97    0x9f0f3  1      OPC=nop             
  nop                                                                          #  98    0x9f0f4  1      OPC=nop             
  nop                                                                          #  99    0x9f0f5  1      OPC=nop             
  nop                                                                          #  100   0x9f0f6  1      OPC=nop             
  nop                                                                          #  101   0x9f0f7  1      OPC=nop             
  nop                                                                          #  102   0x9f0f8  1      OPC=nop             
  nop                                                                          #  103   0x9f0f9  1      OPC=nop             
  nop                                                                          #  104   0x9f0fa  1      OPC=nop             
  nop                                                                          #  105   0x9f0fb  1      OPC=nop             
  nop                                                                          #  106   0x9f0fc  1      OPC=nop             
  nop                                                                          #  107   0x9f0fd  1      OPC=nop             
  nop                                                                          #  108   0x9f0fe  1      OPC=nop             
  nop                                                                          #  109   0x9f0ff  1      OPC=nop             
  nop                                                                          #  110   0x9f100  1      OPC=nop             
  nop                                                                          #  111   0x9f101  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  112   0x9f102  5      OPC=callq_label     
                                                                                                                            
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEEC1Ev

