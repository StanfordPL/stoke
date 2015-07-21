  .text
  .globl _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xb96c0
#! rip-offset  0x796c0
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode    
._ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0x796c0  0      OPC=0     
  pushq %r12                                                               #  1     0x796c0  2      OPC=1861  
  movq %rdi, %rax                                                          #  2     0x796c2  3      OPC=1162  
  movl %edx, %r12d                                                         #  3     0x796c5  3      OPC=1157  
  shrq $0x20, %rax                                                         #  4     0x796c8  4      OPC=2315  
  movl %esi, %esi                                                          #  5     0x796cc  2      OPC=1157  
  pushq %rbx                                                               #  6     0x796ce  1      OPC=1861  
  movl %edi, %ebx                                                          #  7     0x796cf  2      OPC=1157  
  subl $0x8, %esp                                                          #  8     0x796d1  3      OPC=2384  
  addq %r15, %rsp                                                          #  9     0x796d4  3      OPC=72    
  testb %al, %al                                                           #  10    0x796d7  2      OPC=2440  
  jne .L_79720                                                             #  11    0x796d9  6      OPC=963   
  nop                                                                      #  12    0x796df  1      OPC=1343  
  nop                                                                      #  13    0x796e0  1      OPC=1343  
  nop                                                                      #  14    0x796e1  1      OPC=1343  
  nop                                                                      #  15    0x796e2  1      OPC=1343  
  nop                                                                      #  16    0x796e3  1      OPC=1343  
  nop                                                                      #  17    0x796e4  1      OPC=1343  
  nop                                                                      #  18    0x796e5  1      OPC=1343  
  movl %ebx, %ebx                                                          #  19    0x796e6  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                 #  20    0x796e8  4      OPC=1156  
  movl %ebx, %edi                                                          #  21    0x796ec  2      OPC=1157  
  movl %eax, %eax                                                          #  22    0x796ee  2      OPC=1157  
  movl 0x30(%r15,%rax,1), %eax                                             #  23    0x796f0  5      OPC=1156  
  nop                                                                      #  24    0x796f5  1      OPC=1343  
  nop                                                                      #  25    0x796f6  1      OPC=1343  
  nop                                                                      #  26    0x796f7  1      OPC=1343  
  nop                                                                      #  27    0x796f8  1      OPC=1343  
  nop                                                                      #  28    0x796f9  1      OPC=1343  
  nop                                                                      #  29    0x796fa  1      OPC=1343  
  nop                                                                      #  30    0x796fb  1      OPC=1343  
  nop                                                                      #  31    0x796fc  1      OPC=1343  
  nop                                                                      #  32    0x796fd  1      OPC=1343  
  andl $0xffffffe0, %eax                                                   #  33    0x796fe  6      OPC=131   
  nop                                                                      #  34    0x79704  1      OPC=1343  
  nop                                                                      #  35    0x79705  1      OPC=1343  
  nop                                                                      #  36    0x79706  1      OPC=1343  
  addq %r15, %rax                                                          #  37    0x79707  3      OPC=72    
  callq %rax                                                               #  38    0x7970a  2      OPC=258   
  cmpl %eax, %r12d                                                         #  39    0x7970c  3      OPC=472   
  setne %al                                                                #  40    0x7970f  3      OPC=2208  
  nop                                                                      #  41    0x79712  1      OPC=1343  
  nop                                                                      #  42    0x79713  1      OPC=1343  
  nop                                                                      #  43    0x79714  1      OPC=1343  
  nop                                                                      #  44    0x79715  1      OPC=1343  
  nop                                                                      #  45    0x79716  1      OPC=1343  
  nop                                                                      #  46    0x79717  1      OPC=1343  
  nop                                                                      #  47    0x79718  1      OPC=1343  
  nop                                                                      #  48    0x79719  1      OPC=1343  
  nop                                                                      #  49    0x7971a  1      OPC=1343  
  nop                                                                      #  50    0x7971b  1      OPC=1343  
  nop                                                                      #  51    0x7971c  1      OPC=1343  
  nop                                                                      #  52    0x7971d  1      OPC=1343  
  nop                                                                      #  53    0x7971e  1      OPC=1343  
  nop                                                                      #  54    0x7971f  1      OPC=1343  
  nop                                                                      #  55    0x79720  1      OPC=1343  
  nop                                                                      #  56    0x79721  1      OPC=1343  
  nop                                                                      #  57    0x79722  1      OPC=1343  
  nop                                                                      #  58    0x79723  1      OPC=1343  
  nop                                                                      #  59    0x79724  1      OPC=1343  
  nop                                                                      #  60    0x79725  1      OPC=1343  
  nop                                                                      #  61    0x79726  1      OPC=1343  
  nop                                                                      #  62    0x79727  1      OPC=1343  
  nop                                                                      #  63    0x79728  1      OPC=1343  
  nop                                                                      #  64    0x79729  1      OPC=1343  
  nop                                                                      #  65    0x7972a  1      OPC=1343  
  nop                                                                      #  66    0x7972b  1      OPC=1343  
.L_79720:                                                                  #        0x7972c  0      OPC=0     
  movzbl %al, %eax                                                         #  67    0x7972c  3      OPC=1304  
  addl $0x8, %esp                                                          #  68    0x7972f  3      OPC=65    
  addq %r15, %rsp                                                          #  69    0x79732  3      OPC=72    
  shlq $0x20, %rax                                                         #  70    0x79735  4      OPC=2272  
  orq %rbx, %rax                                                           #  71    0x79739  3      OPC=1385  
  popq %rbx                                                                #  72    0x7973c  1      OPC=1694  
  popq %r12                                                                #  73    0x7973d  2      OPC=1694  
  popq %r11                                                                #  74    0x7973f  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                  #  75    0x79741  7      OPC=131   
  nop                                                                      #  76    0x79748  1      OPC=1343  
  nop                                                                      #  77    0x79749  1      OPC=1343  
  nop                                                                      #  78    0x7974a  1      OPC=1343  
  nop                                                                      #  79    0x7974b  1      OPC=1343  
  addq %r15, %r11                                                          #  80    0x7974c  3      OPC=72    
  jmpq %r11                                                                #  81    0x7974f  3      OPC=928   
  nop                                                                      #  82    0x79752  1      OPC=1343  
                                                                                                              
.size _ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIcESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

