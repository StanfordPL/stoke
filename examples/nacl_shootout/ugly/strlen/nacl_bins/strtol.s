  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x16b7e0
#! rip-offset  0x12b7e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.strtol:                    #        0x12b7e0  0      OPC=0     
  movq %rbx, -0x18(%rsp)    #  1     0x12b7e0  5      OPC=1138  
  movq %r12, -0x10(%rsp)    #  2     0x12b7e5  5      OPC=1138  
  movl %edi, %ebx           #  3     0x12b7ea  2      OPC=1157  
  movq %r13, -0x8(%rsp)     #  4     0x12b7ec  5      OPC=1138  
  subl $0x18, %esp          #  5     0x12b7f1  3      OPC=2384  
  addq %r15, %rsp           #  6     0x12b7f4  3      OPC=72    
  movl %edx, %r13d          #  7     0x12b7f7  3      OPC=1157  
  movl %esi, %r12d          #  8     0x12b7fa  3      OPC=1157  
  nop                       #  9     0x12b7fd  1      OPC=1343  
  nop                       #  10    0x12b7fe  1      OPC=1343  
  nop                       #  11    0x12b7ff  1      OPC=1343  
  nop                       #  12    0x12b800  1      OPC=1343  
  nop                       #  13    0x12b801  1      OPC=1343  
  nop                       #  14    0x12b802  1      OPC=1343  
  nop                       #  15    0x12b803  1      OPC=1343  
  nop                       #  16    0x12b804  1      OPC=1343  
  nop                       #  17    0x12b805  1      OPC=1343  
  nop                       #  18    0x12b806  1      OPC=1343  
  nop                       #  19    0x12b807  1      OPC=1343  
  nop                       #  20    0x12b808  1      OPC=1343  
  nop                       #  21    0x12b809  1      OPC=1343  
  nop                       #  22    0x12b80a  1      OPC=1343  
  nop                       #  23    0x12b80b  1      OPC=1343  
  nop                       #  24    0x12b80c  1      OPC=1343  
  nop                       #  25    0x12b80d  1      OPC=1343  
  nop                       #  26    0x12b80e  1      OPC=1343  
  nop                       #  27    0x12b80f  1      OPC=1343  
  nop                       #  28    0x12b810  1      OPC=1343  
  nop                       #  29    0x12b811  1      OPC=1343  
  nop                       #  30    0x12b812  1      OPC=1343  
  nop                       #  31    0x12b813  1      OPC=1343  
  nop                       #  32    0x12b814  1      OPC=1343  
  nop                       #  33    0x12b815  1      OPC=1343  
  nop                       #  34    0x12b816  1      OPC=1343  
  nop                       #  35    0x12b817  1      OPC=1343  
  nop                       #  36    0x12b818  1      OPC=1343  
  nop                       #  37    0x12b819  1      OPC=1343  
  nop                       #  38    0x12b81a  1      OPC=1343  
  callq .__nacl_read_tp     #  39    0x12b81b  5      OPC=260   
  leaq -0x480(%rax), %rax   #  40    0x12b820  7      OPC=1069  
  movl %r13d, %ecx          #  41    0x12b827  3      OPC=1157  
  movl %r12d, %edx          #  42    0x12b82a  3      OPC=1157  
  movl %ebx, %esi           #  43    0x12b82d  2      OPC=1157  
  movq 0x8(%rsp), %r12      #  44    0x12b82f  5      OPC=1161  
  movq (%rsp), %rbx         #  45    0x12b834  4      OPC=1161  
  movq 0x10(%rsp), %r13     #  46    0x12b838  5      OPC=1161  
  nop                       #  47    0x12b83d  1      OPC=1343  
  nop                       #  48    0x12b83e  1      OPC=1343  
  nop                       #  49    0x12b83f  1      OPC=1343  
  movl %eax, %eax           #  50    0x12b840  2      OPC=1157  
  movl (%r15,%rax,1), %edi  #  51    0x12b842  4      OPC=1156  
  addl $0x18, %esp          #  52    0x12b846  3      OPC=65    
  addq %r15, %rsp           #  53    0x12b849  3      OPC=72    
  jmpq ._strtol_r           #  54    0x12b84c  5      OPC=930   
  nop                       #  55    0x12b851  1      OPC=1343  
  nop                       #  56    0x12b852  1      OPC=1343  
  nop                       #  57    0x12b853  1      OPC=1343  
  nop                       #  58    0x12b854  1      OPC=1343  
  nop                       #  59    0x12b855  1      OPC=1343  
  nop                       #  60    0x12b856  1      OPC=1343  
  nop                       #  61    0x12b857  1      OPC=1343  
  nop                       #  62    0x12b858  1      OPC=1343  
  nop                       #  63    0x12b859  1      OPC=1343  
  nop                       #  64    0x12b85a  1      OPC=1343  
  nop                       #  65    0x12b85b  1      OPC=1343  
  nop                       #  66    0x12b85c  1      OPC=1343  
  nop                       #  67    0x12b85d  1      OPC=1343  
  nop                       #  68    0x12b85e  1      OPC=1343  
  nop                       #  69    0x12b85f  1      OPC=1343  
                                                                
.size strtol, .-strtol

