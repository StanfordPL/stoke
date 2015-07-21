  .text
  .globl _ZNSt5ctypeIwED2Ev
  .type _ZNSt5ctypeIwED2Ev, @function

#! file-offset 0x1248a0
#! rip-offset  0xe48a0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSt5ctypeIwED2Ev:                                  #        0xe48a0  0      OPC=0     
  pushq %rbx                                          #  1     0xe48a0  1      OPC=1861  
  movl %edi, %ebx                                     #  2     0xe48a1  2      OPC=1157  
  leal 0x8(%rbx), %edi                                #  3     0xe48a3  3      OPC=1066  
  subl $0x10, %esp                                    #  4     0xe48a6  3      OPC=2384  
  addq %r15, %rsp                                     #  5     0xe48a9  3      OPC=72    
  movl %ebx, %ebx                                     #  6     0xe48ac  2      OPC=1157  
  movl $0x1003d5c8, (%r15,%rbx,1)                     #  7     0xe48ae  8      OPC=1135  
  nop                                                 #  8     0xe48b6  1      OPC=1343  
  nop                                                 #  9     0xe48b7  1      OPC=1343  
  nop                                                 #  10    0xe48b8  1      OPC=1343  
  nop                                                 #  11    0xe48b9  1      OPC=1343  
  nop                                                 #  12    0xe48ba  1      OPC=1343  
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe48bb  5      OPC=260   
  movl %ebx, %ebx                                     #  14    0xe48c0  2      OPC=1157  
  movl $0x1003c268, (%r15,%rbx,1)                     #  15    0xe48c2  8      OPC=1135  
  movl %ebx, %edi                                     #  16    0xe48ca  2      OPC=1157  
  addl $0x10, %esp                                    #  17    0xe48cc  3      OPC=65    
  addq %r15, %rsp                                     #  18    0xe48cf  3      OPC=72    
  popq %rbx                                           #  19    0xe48d2  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe48d3  5      OPC=930   
  nop                                                 #  21    0xe48d8  1      OPC=1343  
  nop                                                 #  22    0xe48d9  1      OPC=1343  
  nop                                                 #  23    0xe48da  1      OPC=1343  
  nop                                                 #  24    0xe48db  1      OPC=1343  
  nop                                                 #  25    0xe48dc  1      OPC=1343  
  nop                                                 #  26    0xe48dd  1      OPC=1343  
  nop                                                 #  27    0xe48de  1      OPC=1343  
  nop                                                 #  28    0xe48df  1      OPC=1343  
  movl %ebx, %edi                                     #  29    0xe48e0  2      OPC=1157  
  movl %ebx, %ebx                                     #  30    0xe48e2  2      OPC=1157  
  movl $0x1003c268, (%r15,%rbx,1)                     #  31    0xe48e4  8      OPC=1135  
  movl %eax, 0x8(%rsp)                                #  32    0xe48ec  4      OPC=1136  
  nop                                                 #  33    0xe48f0  1      OPC=1343  
  nop                                                 #  34    0xe48f1  1      OPC=1343  
  nop                                                 #  35    0xe48f2  1      OPC=1343  
  nop                                                 #  36    0xe48f3  1      OPC=1343  
  nop                                                 #  37    0xe48f4  1      OPC=1343  
  nop                                                 #  38    0xe48f5  1      OPC=1343  
  nop                                                 #  39    0xe48f6  1      OPC=1343  
  nop                                                 #  40    0xe48f7  1      OPC=1343  
  nop                                                 #  41    0xe48f8  1      OPC=1343  
  nop                                                 #  42    0xe48f9  1      OPC=1343  
  nop                                                 #  43    0xe48fa  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe48fb  5      OPC=260   
  movl 0x8(%rsp), %eax                                #  45    0xe4900  4      OPC=1156  
  movl %eax, %edi                                     #  46    0xe4904  2      OPC=1157  
  nop                                                 #  47    0xe4906  1      OPC=1343  
  nop                                                 #  48    0xe4907  1      OPC=1343  
  nop                                                 #  49    0xe4908  1      OPC=1343  
  nop                                                 #  50    0xe4909  1      OPC=1343  
  nop                                                 #  51    0xe490a  1      OPC=1343  
  nop                                                 #  52    0xe490b  1      OPC=1343  
  nop                                                 #  53    0xe490c  1      OPC=1343  
  nop                                                 #  54    0xe490d  1      OPC=1343  
  nop                                                 #  55    0xe490e  1      OPC=1343  
  nop                                                 #  56    0xe490f  1      OPC=1343  
  nop                                                 #  57    0xe4910  1      OPC=1343  
  nop                                                 #  58    0xe4911  1      OPC=1343  
  nop                                                 #  59    0xe4912  1      OPC=1343  
  nop                                                 #  60    0xe4913  1      OPC=1343  
  nop                                                 #  61    0xe4914  1      OPC=1343  
  nop                                                 #  62    0xe4915  1      OPC=1343  
  nop                                                 #  63    0xe4916  1      OPC=1343  
  nop                                                 #  64    0xe4917  1      OPC=1343  
  nop                                                 #  65    0xe4918  1      OPC=1343  
  nop                                                 #  66    0xe4919  1      OPC=1343  
  nop                                                 #  67    0xe491a  1      OPC=1343  
  callq ._Unwind_Resume                               #  68    0xe491b  5      OPC=260   
                                                                                         
.size _ZNSt5ctypeIwED2Ev, .-_ZNSt5ctypeIwED2Ev

