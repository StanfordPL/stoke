  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, @function

#! file-offset 0x11a320
#! rip-offset  0xda320
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw:            #        0xda320  0      OPC=0     
  movl %edi, %edi                                      #  1     0xda320  2      OPC=1157  
  subl $0x8, %esp                                      #  2     0xda322  3      OPC=2384  
  addq %r15, %rsp                                      #  3     0xda325  3      OPC=72    
  movl %edi, %edi                                      #  4     0xda328  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                             #  5     0xda32a  4      OPC=1156  
  subl $0xc, %eax                                      #  6     0xda32e  3      OPC=2384  
  cmpl $0xffffffe, %esi                                #  7     0xda331  6      OPC=469   
  movl %eax, %eax                                      #  8     0xda337  2      OPC=1157  
  movl (%r15,%rax,1), %eax                             #  9     0xda339  4      OPC=1156  
  nop                                                  #  10    0xda33d  1      OPC=1343  
  nop                                                  #  11    0xda33e  1      OPC=1343  
  nop                                                  #  12    0xda33f  1      OPC=1343  
  ja .L_da3a0                                          #  13    0xda340  6      OPC=863   
  nop                                                  #  14    0xda346  1      OPC=1343  
  nop                                                  #  15    0xda347  1      OPC=1343  
  cmpl %eax, %esi                                      #  16    0xda348  2      OPC=472   
  ja .L_da380                                          #  17    0xda34a  6      OPC=863   
  nop                                                  #  18    0xda350  1      OPC=1343  
  nop                                                  #  19    0xda351  1      OPC=1343  
  jb .L_da360                                          #  20    0xda352  6      OPC=875   
  nop                                                  #  21    0xda358  1      OPC=1343  
  nop                                                  #  22    0xda359  1      OPC=1343  
  addl $0x8, %esp                                      #  23    0xda35a  3      OPC=65    
  addq %r15, %rsp                                      #  24    0xda35d  3      OPC=72    
  popq %r11                                            #  25    0xda360  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  26    0xda362  7      OPC=131   
  nop                                                  #  27    0xda369  1      OPC=1343  
  nop                                                  #  28    0xda36a  1      OPC=1343  
  nop                                                  #  29    0xda36b  1      OPC=1343  
  nop                                                  #  30    0xda36c  1      OPC=1343  
  addq %r15, %r11                                      #  31    0xda36d  3      OPC=72    
  jmpq %r11                                            #  32    0xda370  3      OPC=928   
  nop                                                  #  33    0xda373  1      OPC=1343  
  nop                                                  #  34    0xda374  1      OPC=1343  
  nop                                                  #  35    0xda375  1      OPC=1343  
  nop                                                  #  36    0xda376  1      OPC=1343  
  nop                                                  #  37    0xda377  1      OPC=1343  
  nop                                                  #  38    0xda378  1      OPC=1343  
.L_da360:                                              #        0xda379  0      OPC=0     
  movl %eax, %edx                                      #  39    0xda379  2      OPC=1157  
  xorl %ecx, %ecx                                      #  40    0xda37b  2      OPC=3758  
  addl $0x8, %esp                                      #  41    0xda37d  3      OPC=65    
  addq %r15, %rsp                                      #  42    0xda380  3      OPC=72    
  subl %esi, %edx                                      #  43    0xda383  2      OPC=2386  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj  #  44    0xda385  5      OPC=930   
  nop                                                  #  45    0xda38a  1      OPC=1343  
  nop                                                  #  46    0xda38b  1      OPC=1343  
  nop                                                  #  47    0xda38c  1      OPC=1343  
  nop                                                  #  48    0xda38d  1      OPC=1343  
  nop                                                  #  49    0xda38e  1      OPC=1343  
  nop                                                  #  50    0xda38f  1      OPC=1343  
  nop                                                  #  51    0xda390  1      OPC=1343  
  nop                                                  #  52    0xda391  1      OPC=1343  
  nop                                                  #  53    0xda392  1      OPC=1343  
  nop                                                  #  54    0xda393  1      OPC=1343  
  nop                                                  #  55    0xda394  1      OPC=1343  
  nop                                                  #  56    0xda395  1      OPC=1343  
  nop                                                  #  57    0xda396  1      OPC=1343  
  nop                                                  #  58    0xda397  1      OPC=1343  
  nop                                                  #  59    0xda398  1      OPC=1343  
.L_da380:                                              #        0xda399  0      OPC=0     
  subl %eax, %esi                                      #  60    0xda399  2      OPC=2386  
  addl $0x8, %esp                                      #  61    0xda39b  3      OPC=65    
  addq %r15, %rsp                                      #  62    0xda39e  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEjw      #  63    0xda3a1  5      OPC=930   
  nop                                                  #  64    0xda3a6  1      OPC=1343  
  nop                                                  #  65    0xda3a7  1      OPC=1343  
  nop                                                  #  66    0xda3a8  1      OPC=1343  
  nop                                                  #  67    0xda3a9  1      OPC=1343  
  nop                                                  #  68    0xda3aa  1      OPC=1343  
  nop                                                  #  69    0xda3ab  1      OPC=1343  
  nop                                                  #  70    0xda3ac  1      OPC=1343  
  nop                                                  #  71    0xda3ad  1      OPC=1343  
  nop                                                  #  72    0xda3ae  1      OPC=1343  
  nop                                                  #  73    0xda3af  1      OPC=1343  
  nop                                                  #  74    0xda3b0  1      OPC=1343  
  nop                                                  #  75    0xda3b1  1      OPC=1343  
  nop                                                  #  76    0xda3b2  1      OPC=1343  
  nop                                                  #  77    0xda3b3  1      OPC=1343  
  nop                                                  #  78    0xda3b4  1      OPC=1343  
  nop                                                  #  79    0xda3b5  1      OPC=1343  
  nop                                                  #  80    0xda3b6  1      OPC=1343  
  nop                                                  #  81    0xda3b7  1      OPC=1343  
  nop                                                  #  82    0xda3b8  1      OPC=1343  
.L_da3a0:                                              #        0xda3b9  0      OPC=0     
  movl $0x1003bb88, %edi                               #  83    0xda3b9  5      OPC=1154  
  nop                                                  #  84    0xda3be  1      OPC=1343  
  nop                                                  #  85    0xda3bf  1      OPC=1343  
  nop                                                  #  86    0xda3c0  1      OPC=1343  
  nop                                                  #  87    0xda3c1  1      OPC=1343  
  nop                                                  #  88    0xda3c2  1      OPC=1343  
  nop                                                  #  89    0xda3c3  1      OPC=1343  
  nop                                                  #  90    0xda3c4  1      OPC=1343  
  nop                                                  #  91    0xda3c5  1      OPC=1343  
  nop                                                  #  92    0xda3c6  1      OPC=1343  
  nop                                                  #  93    0xda3c7  1      OPC=1343  
  nop                                                  #  94    0xda3c8  1      OPC=1343  
  nop                                                  #  95    0xda3c9  1      OPC=1343  
  nop                                                  #  96    0xda3ca  1      OPC=1343  
  nop                                                  #  97    0xda3cb  1      OPC=1343  
  nop                                                  #  98    0xda3cc  1      OPC=1343  
  nop                                                  #  99    0xda3cd  1      OPC=1343  
  nop                                                  #  100   0xda3ce  1      OPC=1343  
  nop                                                  #  101   0xda3cf  1      OPC=1343  
  nop                                                  #  102   0xda3d0  1      OPC=1343  
  nop                                                  #  103   0xda3d1  1      OPC=1343  
  nop                                                  #  104   0xda3d2  1      OPC=1343  
  nop                                                  #  105   0xda3d3  1      OPC=1343  
  callq ._ZSt20__throw_length_errorPKc                 #  106   0xda3d4  5      OPC=260   
                                                                                          
.size _ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6resizeEjw

