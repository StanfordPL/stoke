  .text
  .globl _ZNSt13runtime_errorC1ERKSs
  .type _ZNSt13runtime_errorC1ERKSs, @function

#! file-offset 0x1289c0
#! rip-offset  0xe89c0
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt13runtime_errorC1ERKSs:      #        0xe89c0  0      OPC=0     
  pushq %rbx                       #  1     0xe89c0  1      OPC=1861  
  movl %edi, %ebx                  #  2     0xe89c1  2      OPC=1157  
  movl %esi, %esi                  #  3     0xe89c3  2      OPC=1157  
  leal 0x4(%rbx), %edi             #  4     0xe89c5  3      OPC=1066  
  subl $0x10, %esp                 #  5     0xe89c8  3      OPC=2384  
  addq %r15, %rsp                  #  6     0xe89cb  3      OPC=72    
  movl %ebx, %ebx                  #  7     0xe89ce  2      OPC=1157  
  movl $0x1003db08, (%r15,%rbx,1)  #  8     0xe89d0  8      OPC=1135  
  nop                              #  9     0xe89d8  1      OPC=1343  
  nop                              #  10    0xe89d9  1      OPC=1343  
  nop                              #  11    0xe89da  1      OPC=1343  
  callq ._ZNSsC1ERKSs              #  12    0xe89db  5      OPC=260   
  addl $0x10, %esp                 #  13    0xe89e0  3      OPC=65    
  addq %r15, %rsp                  #  14    0xe89e3  3      OPC=72    
  popq %rbx                        #  15    0xe89e6  1      OPC=1694  
  popq %r11                        #  16    0xe89e7  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  17    0xe89e9  7      OPC=131   
  nop                              #  18    0xe89f0  1      OPC=1343  
  nop                              #  19    0xe89f1  1      OPC=1343  
  nop                              #  20    0xe89f2  1      OPC=1343  
  nop                              #  21    0xe89f3  1      OPC=1343  
  addq %r15, %r11                  #  22    0xe89f4  3      OPC=72    
  jmpq %r11                        #  23    0xe89f7  3      OPC=928   
  nop                              #  24    0xe89fa  1      OPC=1343  
  nop                              #  25    0xe89fb  1      OPC=1343  
  nop                              #  26    0xe89fc  1      OPC=1343  
  nop                              #  27    0xe89fd  1      OPC=1343  
  nop                              #  28    0xe89fe  1      OPC=1343  
  nop                              #  29    0xe89ff  1      OPC=1343  
  nop                              #  30    0xe8a00  1      OPC=1343  
  nop                              #  31    0xe8a01  1      OPC=1343  
  nop                              #  32    0xe8a02  1      OPC=1343  
  nop                              #  33    0xe8a03  1      OPC=1343  
  nop                              #  34    0xe8a04  1      OPC=1343  
  nop                              #  35    0xe8a05  1      OPC=1343  
  nop                              #  36    0xe8a06  1      OPC=1343  
  movl %ebx, %edi                  #  37    0xe8a07  2      OPC=1157  
  movl %eax, 0x8(%rsp)             #  38    0xe8a09  4      OPC=1136  
  nop                              #  39    0xe8a0d  1      OPC=1343  
  nop                              #  40    0xe8a0e  1      OPC=1343  
  nop                              #  41    0xe8a0f  1      OPC=1343  
  nop                              #  42    0xe8a10  1      OPC=1343  
  nop                              #  43    0xe8a11  1      OPC=1343  
  nop                              #  44    0xe8a12  1      OPC=1343  
  nop                              #  45    0xe8a13  1      OPC=1343  
  nop                              #  46    0xe8a14  1      OPC=1343  
  nop                              #  47    0xe8a15  1      OPC=1343  
  nop                              #  48    0xe8a16  1      OPC=1343  
  nop                              #  49    0xe8a17  1      OPC=1343  
  nop                              #  50    0xe8a18  1      OPC=1343  
  nop                              #  51    0xe8a19  1      OPC=1343  
  nop                              #  52    0xe8a1a  1      OPC=1343  
  nop                              #  53    0xe8a1b  1      OPC=1343  
  nop                              #  54    0xe8a1c  1      OPC=1343  
  nop                              #  55    0xe8a1d  1      OPC=1343  
  nop                              #  56    0xe8a1e  1      OPC=1343  
  nop                              #  57    0xe8a1f  1      OPC=1343  
  nop                              #  58    0xe8a20  1      OPC=1343  
  nop                              #  59    0xe8a21  1      OPC=1343  
  callq ._ZNSt9exceptionD2Ev       #  60    0xe8a22  5      OPC=260   
  movl 0x8(%rsp), %eax             #  61    0xe8a27  4      OPC=1156  
  movl %eax, %edi                  #  62    0xe8a2b  2      OPC=1157  
  nop                              #  63    0xe8a2d  1      OPC=1343  
  nop                              #  64    0xe8a2e  1      OPC=1343  
  nop                              #  65    0xe8a2f  1      OPC=1343  
  nop                              #  66    0xe8a30  1      OPC=1343  
  nop                              #  67    0xe8a31  1      OPC=1343  
  nop                              #  68    0xe8a32  1      OPC=1343  
  nop                              #  69    0xe8a33  1      OPC=1343  
  nop                              #  70    0xe8a34  1      OPC=1343  
  nop                              #  71    0xe8a35  1      OPC=1343  
  nop                              #  72    0xe8a36  1      OPC=1343  
  nop                              #  73    0xe8a37  1      OPC=1343  
  nop                              #  74    0xe8a38  1      OPC=1343  
  nop                              #  75    0xe8a39  1      OPC=1343  
  nop                              #  76    0xe8a3a  1      OPC=1343  
  nop                              #  77    0xe8a3b  1      OPC=1343  
  nop                              #  78    0xe8a3c  1      OPC=1343  
  nop                              #  79    0xe8a3d  1      OPC=1343  
  nop                              #  80    0xe8a3e  1      OPC=1343  
  nop                              #  81    0xe8a3f  1      OPC=1343  
  nop                              #  82    0xe8a40  1      OPC=1343  
  nop                              #  83    0xe8a41  1      OPC=1343  
  callq ._Unwind_Resume            #  84    0xe8a42  5      OPC=260   
                                                                      
.size _ZNSt13runtime_errorC1ERKSs, .-_ZNSt13runtime_errorC1ERKSs

