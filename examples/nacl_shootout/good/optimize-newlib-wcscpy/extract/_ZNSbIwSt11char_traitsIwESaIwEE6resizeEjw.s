  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, @function

#! file-offset 0x11a860
#! rip-offset  0xda860
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw:            #        0xda860  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xda860  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                      #  2     0xda862  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  3     0xda865  3      OPC=addq_r64_r64    
  movl %edi, %edi                                      #  4     0xda868  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  5     0xda86a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                      #  6     0xda86e  3      OPC=subl_r32_imm8   
  cmpl $0xffffffe, %esi                                #  7     0xda871  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                                      #  8     0xda877  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xda879  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xda87d  1      OPC=nop             
  nop                                                  #  11    0xda87e  1      OPC=nop             
  nop                                                  #  12    0xda87f  1      OPC=nop             
  ja .L_da8e0                                          #  13    0xda880  2      OPC=ja_label        
  cmpl %eax, %esi                                      #  14    0xda882  2      OPC=cmpl_r32_r32    
  ja .L_da8c0                                          #  15    0xda884  2      OPC=ja_label        
  jb .L_da8a0                                          #  16    0xda886  2      OPC=jb_label        
  addl $0x8, %esp                                      #  17    0xda888  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  18    0xda88b  3      OPC=addq_r64_r64    
  popq %r11                                            #  19    0xda88e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  20    0xda890  7      OPC=andl_r32_imm32  
  nop                                                  #  21    0xda897  1      OPC=nop             
  nop                                                  #  22    0xda898  1      OPC=nop             
  nop                                                  #  23    0xda899  1      OPC=nop             
  nop                                                  #  24    0xda89a  1      OPC=nop             
  addq %r15, %r11                                      #  25    0xda89b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  26    0xda89e  3      OPC=jmpq_r64        
  nop                                                  #  27    0xda8a1  1      OPC=nop             
  nop                                                  #  28    0xda8a2  1      OPC=nop             
  nop                                                  #  29    0xda8a3  1      OPC=nop             
  nop                                                  #  30    0xda8a4  1      OPC=nop             
  nop                                                  #  31    0xda8a5  1      OPC=nop             
  nop                                                  #  32    0xda8a6  1      OPC=nop             
.L_da8a0:                                              #        0xda8a7  0      OPC=<label>         
  movl %eax, %edx                                      #  33    0xda8a7  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                      #  34    0xda8a9  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                                      #  35    0xda8ab  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  36    0xda8ae  3      OPC=addq_r64_r64    
  subl %esi, %edx                                      #  37    0xda8b1  2      OPC=subl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  38    0xda8b3  5      OPC=jmpq_label_1    
  nop                                                  #  39    0xda8b8  1      OPC=nop             
  nop                                                  #  40    0xda8b9  1      OPC=nop             
  nop                                                  #  41    0xda8ba  1      OPC=nop             
  nop                                                  #  42    0xda8bb  1      OPC=nop             
  nop                                                  #  43    0xda8bc  1      OPC=nop             
  nop                                                  #  44    0xda8bd  1      OPC=nop             
  nop                                                  #  45    0xda8be  1      OPC=nop             
  nop                                                  #  46    0xda8bf  1      OPC=nop             
  nop                                                  #  47    0xda8c0  1      OPC=nop             
  nop                                                  #  48    0xda8c1  1      OPC=nop             
  nop                                                  #  49    0xda8c2  1      OPC=nop             
  nop                                                  #  50    0xda8c3  1      OPC=nop             
  nop                                                  #  51    0xda8c4  1      OPC=nop             
  nop                                                  #  52    0xda8c5  1      OPC=nop             
  nop                                                  #  53    0xda8c6  1      OPC=nop             
.L_da8c0:                                              #        0xda8c7  0      OPC=<label>         
  subl %eax, %esi                                      #  54    0xda8c7  2      OPC=subl_r32_r32    
  addl $0x8, %esp                                      #  55    0xda8c9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  56    0xda8cc  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEjw      #  57    0xda8cf  5      OPC=jmpq_label_1    
  nop                                                  #  58    0xda8d4  1      OPC=nop             
  nop                                                  #  59    0xda8d5  1      OPC=nop             
  nop                                                  #  60    0xda8d6  1      OPC=nop             
  nop                                                  #  61    0xda8d7  1      OPC=nop             
  nop                                                  #  62    0xda8d8  1      OPC=nop             
  nop                                                  #  63    0xda8d9  1      OPC=nop             
  nop                                                  #  64    0xda8da  1      OPC=nop             
  nop                                                  #  65    0xda8db  1      OPC=nop             
  nop                                                  #  66    0xda8dc  1      OPC=nop             
  nop                                                  #  67    0xda8dd  1      OPC=nop             
  nop                                                  #  68    0xda8de  1      OPC=nop             
  nop                                                  #  69    0xda8df  1      OPC=nop             
  nop                                                  #  70    0xda8e0  1      OPC=nop             
  nop                                                  #  71    0xda8e1  1      OPC=nop             
  nop                                                  #  72    0xda8e2  1      OPC=nop             
  nop                                                  #  73    0xda8e3  1      OPC=nop             
  nop                                                  #  74    0xda8e4  1      OPC=nop             
  nop                                                  #  75    0xda8e5  1      OPC=nop             
  nop                                                  #  76    0xda8e6  1      OPC=nop             
.L_da8e0:                                              #        0xda8e7  0      OPC=<label>         
  movl $0x1003bb88, %edi                               #  77    0xda8e7  5      OPC=movl_r32_imm32  
  nop                                                  #  78    0xda8ec  1      OPC=nop             
  nop                                                  #  79    0xda8ed  1      OPC=nop             
  nop                                                  #  80    0xda8ee  1      OPC=nop             
  nop                                                  #  81    0xda8ef  1      OPC=nop             
  nop                                                  #  82    0xda8f0  1      OPC=nop             
  nop                                                  #  83    0xda8f1  1      OPC=nop             
  nop                                                  #  84    0xda8f2  1      OPC=nop             
  nop                                                  #  85    0xda8f3  1      OPC=nop             
  nop                                                  #  86    0xda8f4  1      OPC=nop             
  nop                                                  #  87    0xda8f5  1      OPC=nop             
  nop                                                  #  88    0xda8f6  1      OPC=nop             
  nop                                                  #  89    0xda8f7  1      OPC=nop             
  nop                                                  #  90    0xda8f8  1      OPC=nop             
  nop                                                  #  91    0xda8f9  1      OPC=nop             
  nop                                                  #  92    0xda8fa  1      OPC=nop             
  nop                                                  #  93    0xda8fb  1      OPC=nop             
  nop                                                  #  94    0xda8fc  1      OPC=nop             
  nop                                                  #  95    0xda8fd  1      OPC=nop             
  nop                                                  #  96    0xda8fe  1      OPC=nop             
  nop                                                  #  97    0xda8ff  1      OPC=nop             
  nop                                                  #  98    0xda900  1      OPC=nop             
  nop                                                  #  99    0xda901  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                 #  100   0xda902  5      OPC=callq_label     
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw

