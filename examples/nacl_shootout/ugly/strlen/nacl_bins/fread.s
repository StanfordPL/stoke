  .text
  .globl fread
  .type fread, @function

#! file-offset 0x15b800
#! rip-offset  0x11b800
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fread:                     #        0x11b800  0      OPC=0     
  movq %rbx, -0x20(%rsp)    #  1     0x11b800  5      OPC=1138  
  movq %r12, -0x18(%rsp)    #  2     0x11b805  5      OPC=1138  
  movl %edi, %ebx           #  3     0x11b80a  2      OPC=1157  
  movq %r13, -0x10(%rsp)    #  4     0x11b80c  5      OPC=1138  
  movq %r14, -0x8(%rsp)     #  5     0x11b811  5      OPC=1138  
  subl $0x28, %esp          #  6     0x11b816  3      OPC=2384  
  addq %r15, %rsp           #  7     0x11b819  3      OPC=72    
  movl %esi, %r12d          #  8     0x11b81c  3      OPC=1157  
  nop                       #  9     0x11b81f  1      OPC=1343  
  movl %edx, %r13d          #  10    0x11b820  3      OPC=1157  
  movl %ecx, %r14d          #  11    0x11b823  3      OPC=1157  
  nop                       #  12    0x11b826  1      OPC=1343  
  nop                       #  13    0x11b827  1      OPC=1343  
  nop                       #  14    0x11b828  1      OPC=1343  
  nop                       #  15    0x11b829  1      OPC=1343  
  nop                       #  16    0x11b82a  1      OPC=1343  
  nop                       #  17    0x11b82b  1      OPC=1343  
  nop                       #  18    0x11b82c  1      OPC=1343  
  nop                       #  19    0x11b82d  1      OPC=1343  
  nop                       #  20    0x11b82e  1      OPC=1343  
  nop                       #  21    0x11b82f  1      OPC=1343  
  nop                       #  22    0x11b830  1      OPC=1343  
  nop                       #  23    0x11b831  1      OPC=1343  
  nop                       #  24    0x11b832  1      OPC=1343  
  nop                       #  25    0x11b833  1      OPC=1343  
  nop                       #  26    0x11b834  1      OPC=1343  
  nop                       #  27    0x11b835  1      OPC=1343  
  nop                       #  28    0x11b836  1      OPC=1343  
  nop                       #  29    0x11b837  1      OPC=1343  
  nop                       #  30    0x11b838  1      OPC=1343  
  nop                       #  31    0x11b839  1      OPC=1343  
  nop                       #  32    0x11b83a  1      OPC=1343  
  callq .__nacl_read_tp     #  33    0x11b83b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  34    0x11b840  7      OPC=1069  
  movl %r14d, %r8d          #  35    0x11b847  3      OPC=1157  
  movl %r13d, %ecx          #  36    0x11b84a  3      OPC=1157  
  movl %r12d, %edx          #  37    0x11b84d  3      OPC=1157  
  movl %ebx, %esi           #  38    0x11b850  2      OPC=1157  
  movq 0x10(%rsp), %r12     #  39    0x11b852  5      OPC=1161  
  movq 0x8(%rsp), %rbx      #  40    0x11b857  5      OPC=1161  
  nop                       #  41    0x11b85c  1      OPC=1343  
  nop                       #  42    0x11b85d  1      OPC=1343  
  nop                       #  43    0x11b85e  1      OPC=1343  
  nop                       #  44    0x11b85f  1      OPC=1343  
  movq 0x18(%rsp), %r13     #  45    0x11b860  5      OPC=1161  
  movq 0x20(%rsp), %r14     #  46    0x11b865  5      OPC=1161  
  movl %eax, %eax           #  47    0x11b86a  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  48    0x11b86c  4      OPC=1156  
  addl $0x28, %esp          #  49    0x11b870  3      OPC=65    
  addq %r15, %rsp           #  50    0x11b873  3      OPC=72    
  jmpq ._fread_r            #  51    0x11b876  5      OPC=930   
  nop                       #  52    0x11b87b  1      OPC=1343  
  nop                       #  53    0x11b87c  1      OPC=1343  
  nop                       #  54    0x11b87d  1      OPC=1343  
  nop                       #  55    0x11b87e  1      OPC=1343  
  nop                       #  56    0x11b87f  1      OPC=1343  
                                                                
.size fread, .-fread

