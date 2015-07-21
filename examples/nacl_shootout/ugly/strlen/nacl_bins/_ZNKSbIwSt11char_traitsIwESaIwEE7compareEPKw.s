  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, @function

#! file-offset 0x115660
#! rip-offset  0xd5660
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw:  #        0xd5660  0      OPC=0     
  movq %r13, -0x10(%rsp)                        #  1     0xd5660  5      OPC=1138  
  movl %edi, %r13d                              #  2     0xd5665  3      OPC=1157  
  movq %rbx, -0x20(%rsp)                        #  3     0xd5668  5      OPC=1138  
  movq %r14, -0x8(%rsp)                         #  4     0xd566d  5      OPC=1138  
  movq %r12, -0x18(%rsp)                        #  5     0xd5672  5      OPC=1138  
  subl $0x28, %esp                              #  6     0xd5677  3      OPC=2384  
  addq %r15, %rsp                               #  7     0xd567a  3      OPC=72    
  nop                                           #  8     0xd567d  1      OPC=1343  
  nop                                           #  9     0xd567e  1      OPC=1343  
  nop                                           #  10    0xd567f  1      OPC=1343  
  movl %r13d, %r13d                             #  11    0xd5680  3      OPC=1157  
  movl (%r15,%r13,1), %eax                      #  12    0xd5683  4      OPC=1156  
  movl %esi, %r14d                              #  13    0xd5687  3      OPC=1157  
  movl %r14d, %edi                              #  14    0xd568a  3      OPC=1157  
  subl $0xc, %eax                               #  15    0xd568d  3      OPC=2384  
  movl %eax, %eax                               #  16    0xd5690  2      OPC=1157  
  movl (%r15,%rax,1), %r12d                     #  17    0xd5692  4      OPC=1156  
  nop                                           #  18    0xd5696  1      OPC=1343  
  nop                                           #  19    0xd5697  1      OPC=1343  
  nop                                           #  20    0xd5698  1      OPC=1343  
  nop                                           #  21    0xd5699  1      OPC=1343  
  nop                                           #  22    0xd569a  1      OPC=1343  
  callq .wcslen                                 #  23    0xd569b  5      OPC=260   
  movl %r13d, %r13d                             #  24    0xd56a0  3      OPC=1157  
  movl (%r15,%r13,1), %edi                      #  25    0xd56a3  4      OPC=1156  
  movl %eax, %ebx                               #  26    0xd56a7  2      OPC=1157  
  movl %r14d, %esi                              #  27    0xd56a9  3      OPC=1157  
  cmpl %r12d, %eax                              #  28    0xd56ac  3      OPC=472   
  movl %r12d, %edx                              #  29    0xd56af  3      OPC=1157  
  cmovbel %eax, %edx                            #  30    0xd56b2  3      OPC=290   
  subl %ebx, %r12d                              #  31    0xd56b5  3      OPC=2386  
  nop                                           #  32    0xd56b8  1      OPC=1343  
  nop                                           #  33    0xd56b9  1      OPC=1343  
  nop                                           #  34    0xd56ba  1      OPC=1343  
  callq .wmemcmp                                #  35    0xd56bb  5      OPC=260   
  testl %eax, %eax                              #  36    0xd56c0  2      OPC=2436  
  movq 0x8(%rsp), %rbx                          #  37    0xd56c2  5      OPC=1161  
  movq 0x18(%rsp), %r13                         #  38    0xd56c7  5      OPC=1161  
  cmovel %r12d, %eax                            #  39    0xd56cc  4      OPC=302   
  movq 0x20(%rsp), %r14                         #  40    0xd56d0  5      OPC=1161  
  movq 0x10(%rsp), %r12                         #  41    0xd56d5  5      OPC=1161  
  addl $0x28, %esp                              #  42    0xd56da  3      OPC=65    
  addq %r15, %rsp                               #  43    0xd56dd  3      OPC=72    
  popq %r11                                     #  44    0xd56e0  2      OPC=1694  
  andl $0xffffffe0, %r11d                       #  45    0xd56e2  7      OPC=131   
  nop                                           #  46    0xd56e9  1      OPC=1343  
  nop                                           #  47    0xd56ea  1      OPC=1343  
  nop                                           #  48    0xd56eb  1      OPC=1343  
  nop                                           #  49    0xd56ec  1      OPC=1343  
  addq %r15, %r11                               #  50    0xd56ed  3      OPC=72    
  jmpq %r11                                     #  51    0xd56f0  3      OPC=928   
  nop                                           #  52    0xd56f3  1      OPC=1343  
  nop                                           #  53    0xd56f4  1      OPC=1343  
  nop                                           #  54    0xd56f5  1      OPC=1343  
  nop                                           #  55    0xd56f6  1      OPC=1343  
  nop                                           #  56    0xd56f7  1      OPC=1343  
  nop                                           #  57    0xd56f8  1      OPC=1343  
  nop                                           #  58    0xd56f9  1      OPC=1343  
  nop                                           #  59    0xd56fa  1      OPC=1343  
  nop                                           #  60    0xd56fb  1      OPC=1343  
  nop                                           #  61    0xd56fc  1      OPC=1343  
  nop                                           #  62    0xd56fd  1      OPC=1343  
  nop                                           #  63    0xd56fe  1      OPC=1343  
  nop                                           #  64    0xd56ff  1      OPC=1343  
  nop                                           #  65    0xd5700  1      OPC=1343  
  nop                                           #  66    0xd5701  1      OPC=1343  
  nop                                           #  67    0xd5702  1      OPC=1343  
  nop                                           #  68    0xd5703  1      OPC=1343  
  nop                                           #  69    0xd5704  1      OPC=1343  
  nop                                           #  70    0xd5705  1      OPC=1343  
  nop                                           #  71    0xd5706  1      OPC=1343  
                                                                                   
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw

