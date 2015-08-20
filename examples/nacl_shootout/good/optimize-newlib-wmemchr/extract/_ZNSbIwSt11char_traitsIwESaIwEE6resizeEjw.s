  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, @function

#! file-offset 0x11ab60
#! rip-offset  0xdab60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw:            #        0xdab60  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xdab60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                      #  2     0xdab62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  3     0xdab65  3      OPC=addq_r64_r64    
  movl %edi, %edi                                      #  4     0xdab68  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  5     0xdab6a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                      #  6     0xdab6e  3      OPC=subl_r32_imm8   
  cmpl $0xffffffe, %esi                                #  7     0xdab71  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                                      #  8     0xdab77  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xdab79  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xdab7d  1      OPC=nop             
  nop                                                  #  11    0xdab7e  1      OPC=nop             
  nop                                                  #  12    0xdab7f  1      OPC=nop             
  ja .L_dabe0                                          #  13    0xdab80  2      OPC=ja_label        
  cmpl %eax, %esi                                      #  14    0xdab82  2      OPC=cmpl_r32_r32    
  ja .L_dabc0                                          #  15    0xdab84  2      OPC=ja_label        
  jb .L_daba0                                          #  16    0xdab86  2      OPC=jb_label        
  addl $0x8, %esp                                      #  17    0xdab88  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  18    0xdab8b  3      OPC=addq_r64_r64    
  popq %r11                                            #  19    0xdab8e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  20    0xdab90  7      OPC=andl_r32_imm32  
  nop                                                  #  21    0xdab97  1      OPC=nop             
  nop                                                  #  22    0xdab98  1      OPC=nop             
  nop                                                  #  23    0xdab99  1      OPC=nop             
  nop                                                  #  24    0xdab9a  1      OPC=nop             
  addq %r15, %r11                                      #  25    0xdab9b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  26    0xdab9e  3      OPC=jmpq_r64        
  nop                                                  #  27    0xdaba1  1      OPC=nop             
  nop                                                  #  28    0xdaba2  1      OPC=nop             
  nop                                                  #  29    0xdaba3  1      OPC=nop             
  nop                                                  #  30    0xdaba4  1      OPC=nop             
  nop                                                  #  31    0xdaba5  1      OPC=nop             
  nop                                                  #  32    0xdaba6  1      OPC=nop             
.L_daba0:                                              #        0xdaba7  0      OPC=<label>         
  movl %eax, %edx                                      #  33    0xdaba7  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                      #  34    0xdaba9  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                                      #  35    0xdabab  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  36    0xdabae  3      OPC=addq_r64_r64    
  subl %esi, %edx                                      #  37    0xdabb1  2      OPC=subl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  38    0xdabb3  5      OPC=jmpq_label_1    
  nop                                                  #  39    0xdabb8  1      OPC=nop             
  nop                                                  #  40    0xdabb9  1      OPC=nop             
  nop                                                  #  41    0xdabba  1      OPC=nop             
  nop                                                  #  42    0xdabbb  1      OPC=nop             
  nop                                                  #  43    0xdabbc  1      OPC=nop             
  nop                                                  #  44    0xdabbd  1      OPC=nop             
  nop                                                  #  45    0xdabbe  1      OPC=nop             
  nop                                                  #  46    0xdabbf  1      OPC=nop             
  nop                                                  #  47    0xdabc0  1      OPC=nop             
  nop                                                  #  48    0xdabc1  1      OPC=nop             
  nop                                                  #  49    0xdabc2  1      OPC=nop             
  nop                                                  #  50    0xdabc3  1      OPC=nop             
  nop                                                  #  51    0xdabc4  1      OPC=nop             
  nop                                                  #  52    0xdabc5  1      OPC=nop             
  nop                                                  #  53    0xdabc6  1      OPC=nop             
.L_dabc0:                                              #        0xdabc7  0      OPC=<label>         
  subl %eax, %esi                                      #  54    0xdabc7  2      OPC=subl_r32_r32    
  addl $0x8, %esp                                      #  55    0xdabc9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  56    0xdabcc  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEjw      #  57    0xdabcf  5      OPC=jmpq_label_1    
  nop                                                  #  58    0xdabd4  1      OPC=nop             
  nop                                                  #  59    0xdabd5  1      OPC=nop             
  nop                                                  #  60    0xdabd6  1      OPC=nop             
  nop                                                  #  61    0xdabd7  1      OPC=nop             
  nop                                                  #  62    0xdabd8  1      OPC=nop             
  nop                                                  #  63    0xdabd9  1      OPC=nop             
  nop                                                  #  64    0xdabda  1      OPC=nop             
  nop                                                  #  65    0xdabdb  1      OPC=nop             
  nop                                                  #  66    0xdabdc  1      OPC=nop             
  nop                                                  #  67    0xdabdd  1      OPC=nop             
  nop                                                  #  68    0xdabde  1      OPC=nop             
  nop                                                  #  69    0xdabdf  1      OPC=nop             
  nop                                                  #  70    0xdabe0  1      OPC=nop             
  nop                                                  #  71    0xdabe1  1      OPC=nop             
  nop                                                  #  72    0xdabe2  1      OPC=nop             
  nop                                                  #  73    0xdabe3  1      OPC=nop             
  nop                                                  #  74    0xdabe4  1      OPC=nop             
  nop                                                  #  75    0xdabe5  1      OPC=nop             
  nop                                                  #  76    0xdabe6  1      OPC=nop             
.L_dabe0:                                              #        0xdabe7  0      OPC=<label>         
  movl $0x1003bb88, %edi                               #  77    0xdabe7  5      OPC=movl_r32_imm32  
  nop                                                  #  78    0xdabec  1      OPC=nop             
  nop                                                  #  79    0xdabed  1      OPC=nop             
  nop                                                  #  80    0xdabee  1      OPC=nop             
  nop                                                  #  81    0xdabef  1      OPC=nop             
  nop                                                  #  82    0xdabf0  1      OPC=nop             
  nop                                                  #  83    0xdabf1  1      OPC=nop             
  nop                                                  #  84    0xdabf2  1      OPC=nop             
  nop                                                  #  85    0xdabf3  1      OPC=nop             
  nop                                                  #  86    0xdabf4  1      OPC=nop             
  nop                                                  #  87    0xdabf5  1      OPC=nop             
  nop                                                  #  88    0xdabf6  1      OPC=nop             
  nop                                                  #  89    0xdabf7  1      OPC=nop             
  nop                                                  #  90    0xdabf8  1      OPC=nop             
  nop                                                  #  91    0xdabf9  1      OPC=nop             
  nop                                                  #  92    0xdabfa  1      OPC=nop             
  nop                                                  #  93    0xdabfb  1      OPC=nop             
  nop                                                  #  94    0xdabfc  1      OPC=nop             
  nop                                                  #  95    0xdabfd  1      OPC=nop             
  nop                                                  #  96    0xdabfe  1      OPC=nop             
  nop                                                  #  97    0xdabff  1      OPC=nop             
  nop                                                  #  98    0xdac00  1      OPC=nop             
  nop                                                  #  99    0xdac01  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                 #  100   0xdac02  5      OPC=callq_label     
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw

