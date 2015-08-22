  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, @function

#! file-offset 0x11b280
#! rip-offset  0xdb280
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw:            #        0xdb280  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xdb280  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                      #  2     0xdb282  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  3     0xdb285  3      OPC=addq_r64_r64    
  movl %edi, %edi                                      #  4     0xdb288  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  5     0xdb28a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                      #  6     0xdb28e  3      OPC=subl_r32_imm8   
  cmpl $0xffffffe, %esi                                #  7     0xdb291  6      OPC=cmpl_r32_imm32  
  movl %eax, %eax                                      #  8     0xdb297  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xdb299  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xdb29d  1      OPC=nop             
  nop                                                  #  11    0xdb29e  1      OPC=nop             
  nop                                                  #  12    0xdb29f  1      OPC=nop             
  ja .L_db300                                          #  13    0xdb2a0  2      OPC=ja_label        
  cmpl %eax, %esi                                      #  14    0xdb2a2  2      OPC=cmpl_r32_r32    
  ja .L_db2e0                                          #  15    0xdb2a4  2      OPC=ja_label        
  jb .L_db2c0                                          #  16    0xdb2a6  2      OPC=jb_label        
  addl $0x8, %esp                                      #  17    0xdb2a8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  18    0xdb2ab  3      OPC=addq_r64_r64    
  popq %r11                                            #  19    0xdb2ae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  20    0xdb2b0  7      OPC=andl_r32_imm32  
  nop                                                  #  21    0xdb2b7  1      OPC=nop             
  nop                                                  #  22    0xdb2b8  1      OPC=nop             
  nop                                                  #  23    0xdb2b9  1      OPC=nop             
  nop                                                  #  24    0xdb2ba  1      OPC=nop             
  addq %r15, %r11                                      #  25    0xdb2bb  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  26    0xdb2be  3      OPC=jmpq_r64        
  nop                                                  #  27    0xdb2c1  1      OPC=nop             
  nop                                                  #  28    0xdb2c2  1      OPC=nop             
  nop                                                  #  29    0xdb2c3  1      OPC=nop             
  nop                                                  #  30    0xdb2c4  1      OPC=nop             
  nop                                                  #  31    0xdb2c5  1      OPC=nop             
  nop                                                  #  32    0xdb2c6  1      OPC=nop             
.L_db2c0:                                              #        0xdb2c7  0      OPC=<label>         
  movl %eax, %edx                                      #  33    0xdb2c7  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                      #  34    0xdb2c9  2      OPC=xorl_r32_r32    
  addl $0x8, %esp                                      #  35    0xdb2cb  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  36    0xdb2ce  3      OPC=addq_r64_r64    
  subl %esi, %edx                                      #  37    0xdb2d1  2      OPC=subl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  38    0xdb2d3  5      OPC=jmpq_label_1    
  nop                                                  #  39    0xdb2d8  1      OPC=nop             
  nop                                                  #  40    0xdb2d9  1      OPC=nop             
  nop                                                  #  41    0xdb2da  1      OPC=nop             
  nop                                                  #  42    0xdb2db  1      OPC=nop             
  nop                                                  #  43    0xdb2dc  1      OPC=nop             
  nop                                                  #  44    0xdb2dd  1      OPC=nop             
  nop                                                  #  45    0xdb2de  1      OPC=nop             
  nop                                                  #  46    0xdb2df  1      OPC=nop             
  nop                                                  #  47    0xdb2e0  1      OPC=nop             
  nop                                                  #  48    0xdb2e1  1      OPC=nop             
  nop                                                  #  49    0xdb2e2  1      OPC=nop             
  nop                                                  #  50    0xdb2e3  1      OPC=nop             
  nop                                                  #  51    0xdb2e4  1      OPC=nop             
  nop                                                  #  52    0xdb2e5  1      OPC=nop             
  nop                                                  #  53    0xdb2e6  1      OPC=nop             
.L_db2e0:                                              #        0xdb2e7  0      OPC=<label>         
  subl %eax, %esi                                      #  54    0xdb2e7  2      OPC=subl_r32_r32    
  addl $0x8, %esp                                      #  55    0xdb2e9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  56    0xdb2ec  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEjw      #  57    0xdb2ef  5      OPC=jmpq_label_1    
  nop                                                  #  58    0xdb2f4  1      OPC=nop             
  nop                                                  #  59    0xdb2f5  1      OPC=nop             
  nop                                                  #  60    0xdb2f6  1      OPC=nop             
  nop                                                  #  61    0xdb2f7  1      OPC=nop             
  nop                                                  #  62    0xdb2f8  1      OPC=nop             
  nop                                                  #  63    0xdb2f9  1      OPC=nop             
  nop                                                  #  64    0xdb2fa  1      OPC=nop             
  nop                                                  #  65    0xdb2fb  1      OPC=nop             
  nop                                                  #  66    0xdb2fc  1      OPC=nop             
  nop                                                  #  67    0xdb2fd  1      OPC=nop             
  nop                                                  #  68    0xdb2fe  1      OPC=nop             
  nop                                                  #  69    0xdb2ff  1      OPC=nop             
  nop                                                  #  70    0xdb300  1      OPC=nop             
  nop                                                  #  71    0xdb301  1      OPC=nop             
  nop                                                  #  72    0xdb302  1      OPC=nop             
  nop                                                  #  73    0xdb303  1      OPC=nop             
  nop                                                  #  74    0xdb304  1      OPC=nop             
  nop                                                  #  75    0xdb305  1      OPC=nop             
  nop                                                  #  76    0xdb306  1      OPC=nop             
.L_db300:                                              #        0xdb307  0      OPC=<label>         
  movl $0x1003bb88, %edi                               #  77    0xdb307  5      OPC=movl_r32_imm32  
  nop                                                  #  78    0xdb30c  1      OPC=nop             
  nop                                                  #  79    0xdb30d  1      OPC=nop             
  nop                                                  #  80    0xdb30e  1      OPC=nop             
  nop                                                  #  81    0xdb30f  1      OPC=nop             
  nop                                                  #  82    0xdb310  1      OPC=nop             
  nop                                                  #  83    0xdb311  1      OPC=nop             
  nop                                                  #  84    0xdb312  1      OPC=nop             
  nop                                                  #  85    0xdb313  1      OPC=nop             
  nop                                                  #  86    0xdb314  1      OPC=nop             
  nop                                                  #  87    0xdb315  1      OPC=nop             
  nop                                                  #  88    0xdb316  1      OPC=nop             
  nop                                                  #  89    0xdb317  1      OPC=nop             
  nop                                                  #  90    0xdb318  1      OPC=nop             
  nop                                                  #  91    0xdb319  1      OPC=nop             
  nop                                                  #  92    0xdb31a  1      OPC=nop             
  nop                                                  #  93    0xdb31b  1      OPC=nop             
  nop                                                  #  94    0xdb31c  1      OPC=nop             
  nop                                                  #  95    0xdb31d  1      OPC=nop             
  nop                                                  #  96    0xdb31e  1      OPC=nop             
  nop                                                  #  97    0xdb31f  1      OPC=nop             
  nop                                                  #  98    0xdb320  1      OPC=nop             
  nop                                                  #  99    0xdb321  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                 #  100   0xdb322  5      OPC=callq_label     
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw

