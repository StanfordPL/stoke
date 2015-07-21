  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, @function

#! file-offset 0x116360
#! rip-offset  0xd6360
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj:  #        0xd6360  0      OPC=0     
  pushq %r12                                       #  1     0xd6360  2      OPC=1861  
  movl %edi, %edi                                  #  2     0xd6362  2      OPC=1157  
  movl %ecx, %ecx                                  #  3     0xd6364  2      OPC=1157  
  pushq %rbx                                       #  4     0xd6366  1      OPC=1861  
  movl %r8d, %ebx                                  #  5     0xd6367  3      OPC=1157  
  subl $0x8, %esp                                  #  6     0xd636a  3      OPC=2384  
  addq %r15, %rsp                                  #  7     0xd636d  3      OPC=72    
  movl %edi, %edi                                  #  8     0xd6370  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                         #  9     0xd6372  4      OPC=1156  
  leal -0xc(%rdi), %eax                            #  10    0xd6376  3      OPC=1066  
  movl %eax, %eax                                  #  11    0xd6379  2      OPC=1157  
  movl (%r15,%rax,1), %r12d                        #  12    0xd637b  4      OPC=1156  
  nop                                              #  13    0xd637f  1      OPC=1343  
  cmpl %r12d, %esi                                 #  14    0xd6380  3      OPC=472   
  ja .L_d63e0                                      #  15    0xd6383  6      OPC=863   
  nop                                              #  16    0xd6389  1      OPC=1343  
  nop                                              #  17    0xd638a  1      OPC=1343  
  subl %esi, %r12d                                 #  18    0xd638b  3      OPC=2386  
  leal (%rdi,%rsi,4), %edi                         #  19    0xd638e  3      OPC=1066  
  movl %ecx, %esi                                  #  20    0xd6391  2      OPC=1157  
  cmpl %r12d, %edx                                 #  21    0xd6393  3      OPC=472   
  cmovbel %edx, %r12d                              #  22    0xd6396  4      OPC=290   
  cmpl %r12d, %r8d                                 #  23    0xd639a  3      OPC=472   
  movl %r12d, %edx                                 #  24    0xd639d  3      OPC=1157  
  cmovbel %r8d, %edx                               #  25    0xd63a0  4      OPC=290   
  xchgw %ax, %ax                                   #  26    0xd63a4  2      OPC=3700  
  subl %ebx, %r12d                                 #  27    0xd63a6  3      OPC=2386  
  nop                                              #  28    0xd63a9  1      OPC=1343  
  nop                                              #  29    0xd63aa  1      OPC=1343  
  nop                                              #  30    0xd63ab  1      OPC=1343  
  nop                                              #  31    0xd63ac  1      OPC=1343  
  nop                                              #  32    0xd63ad  1      OPC=1343  
  nop                                              #  33    0xd63ae  1      OPC=1343  
  nop                                              #  34    0xd63af  1      OPC=1343  
  nop                                              #  35    0xd63b0  1      OPC=1343  
  nop                                              #  36    0xd63b1  1      OPC=1343  
  nop                                              #  37    0xd63b2  1      OPC=1343  
  nop                                              #  38    0xd63b3  1      OPC=1343  
  nop                                              #  39    0xd63b4  1      OPC=1343  
  nop                                              #  40    0xd63b5  1      OPC=1343  
  nop                                              #  41    0xd63b6  1      OPC=1343  
  nop                                              #  42    0xd63b7  1      OPC=1343  
  nop                                              #  43    0xd63b8  1      OPC=1343  
  nop                                              #  44    0xd63b9  1      OPC=1343  
  nop                                              #  45    0xd63ba  1      OPC=1343  
  nop                                              #  46    0xd63bb  1      OPC=1343  
  nop                                              #  47    0xd63bc  1      OPC=1343  
  nop                                              #  48    0xd63bd  1      OPC=1343  
  nop                                              #  49    0xd63be  1      OPC=1343  
  nop                                              #  50    0xd63bf  1      OPC=1343  
  nop                                              #  51    0xd63c0  1      OPC=1343  
  callq .wmemcmp                                   #  52    0xd63c1  5      OPC=260   
  testl %eax, %eax                                 #  53    0xd63c6  2      OPC=2436  
  cmovel %r12d, %eax                               #  54    0xd63c8  4      OPC=302   
  addl $0x8, %esp                                  #  55    0xd63cc  3      OPC=65    
  addq %r15, %rsp                                  #  56    0xd63cf  3      OPC=72    
  popq %rbx                                        #  57    0xd63d2  1      OPC=1694  
  popq %r12                                        #  58    0xd63d3  2      OPC=1694  
  popq %r11                                        #  59    0xd63d5  2      OPC=1694  
  andl $0xffffffe0, %r11d                          #  60    0xd63d7  7      OPC=131   
  nop                                              #  61    0xd63de  1      OPC=1343  
  nop                                              #  62    0xd63df  1      OPC=1343  
  nop                                              #  63    0xd63e0  1      OPC=1343  
  nop                                              #  64    0xd63e1  1      OPC=1343  
  addq %r15, %r11                                  #  65    0xd63e2  3      OPC=72    
  jmpq %r11                                        #  66    0xd63e5  3      OPC=928   
  nop                                              #  67    0xd63e8  1      OPC=1343  
  nop                                              #  68    0xd63e9  1      OPC=1343  
  nop                                              #  69    0xd63ea  1      OPC=1343  
  nop                                              #  70    0xd63eb  1      OPC=1343  
  nop                                              #  71    0xd63ec  1      OPC=1343  
.L_d63e0:                                          #        0xd63ed  0      OPC=0     
  movl $0x1003babd, %edi                           #  72    0xd63ed  5      OPC=1154  
  nop                                              #  73    0xd63f2  1      OPC=1343  
  nop                                              #  74    0xd63f3  1      OPC=1343  
  nop                                              #  75    0xd63f4  1      OPC=1343  
  nop                                              #  76    0xd63f5  1      OPC=1343  
  nop                                              #  77    0xd63f6  1      OPC=1343  
  nop                                              #  78    0xd63f7  1      OPC=1343  
  nop                                              #  79    0xd63f8  1      OPC=1343  
  nop                                              #  80    0xd63f9  1      OPC=1343  
  nop                                              #  81    0xd63fa  1      OPC=1343  
  nop                                              #  82    0xd63fb  1      OPC=1343  
  nop                                              #  83    0xd63fc  1      OPC=1343  
  nop                                              #  84    0xd63fd  1      OPC=1343  
  nop                                              #  85    0xd63fe  1      OPC=1343  
  nop                                              #  86    0xd63ff  1      OPC=1343  
  nop                                              #  87    0xd6400  1      OPC=1343  
  nop                                              #  88    0xd6401  1      OPC=1343  
  nop                                              #  89    0xd6402  1      OPC=1343  
  nop                                              #  90    0xd6403  1      OPC=1343  
  nop                                              #  91    0xd6404  1      OPC=1343  
  nop                                              #  92    0xd6405  1      OPC=1343  
  nop                                              #  93    0xd6406  1      OPC=1343  
  nop                                              #  94    0xd6407  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc             #  95    0xd6408  5      OPC=260   
                                                                                      
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj

