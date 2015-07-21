  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x159b40
#! rip-offset  0x119b40
#! capacity    96 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.fflush:                      #        0x119b40  0      OPC=0     
  pushq %rbx                  #  1     0x119b40  1      OPC=1861  
  movl %edi, %ebx             #  2     0x119b41  2      OPC=1157  
  testq %rbx, %rbx            #  3     0x119b43  3      OPC=2438  
  je .L_119b80                #  4     0x119b46  6      OPC=893   
  nop                         #  5     0x119b4c  1      OPC=1343  
  nop                         #  6     0x119b4d  1      OPC=1343  
  nop                         #  7     0x119b4e  1      OPC=1343  
  nop                         #  8     0x119b4f  1      OPC=1343  
  nop                         #  9     0x119b50  1      OPC=1343  
  nop                         #  10    0x119b51  1      OPC=1343  
  nop                         #  11    0x119b52  1      OPC=1343  
  nop                         #  12    0x119b53  1      OPC=1343  
  nop                         #  13    0x119b54  1      OPC=1343  
  nop                         #  14    0x119b55  1      OPC=1343  
  nop                         #  15    0x119b56  1      OPC=1343  
  nop                         #  16    0x119b57  1      OPC=1343  
  nop                         #  17    0x119b58  1      OPC=1343  
  nop                         #  18    0x119b59  1      OPC=1343  
  nop                         #  19    0x119b5a  1      OPC=1343  
  nop                         #  20    0x119b5b  1      OPC=1343  
  nop                         #  21    0x119b5c  1      OPC=1343  
  nop                         #  22    0x119b5d  1      OPC=1343  
  nop                         #  23    0x119b5e  1      OPC=1343  
  nop                         #  24    0x119b5f  1      OPC=1343  
  nop                         #  25    0x119b60  1      OPC=1343  
  callq .__nacl_read_tp       #  26    0x119b61  5      OPC=260   
  leaq -0x480(%rax), %rax     #  27    0x119b66  7      OPC=1069  
  movl %ebx, %esi             #  28    0x119b6d  2      OPC=1157  
  popq %rbx                   #  29    0x119b6f  1      OPC=1694  
  movl %eax, %eax             #  30    0x119b70  2      OPC=1157  
  movl (%r15,%rax,1), %edi    #  31    0x119b72  4      OPC=1156  
  jmpq ._fflush_r             #  32    0x119b76  5      OPC=930   
  nop                         #  33    0x119b7b  1      OPC=1343  
  nop                         #  34    0x119b7c  1      OPC=1343  
  nop                         #  35    0x119b7d  1      OPC=1343  
  nop                         #  36    0x119b7e  1      OPC=1343  
  nop                         #  37    0x119b7f  1      OPC=1343  
  nop                         #  38    0x119b80  1      OPC=1343  
  nop                         #  39    0x119b81  1      OPC=1343  
  nop                         #  40    0x119b82  1      OPC=1343  
  nop                         #  41    0x119b83  1      OPC=1343  
  nop                         #  42    0x119b84  1      OPC=1343  
  nop                         #  43    0x119b85  1      OPC=1343  
.L_119b80:                    #        0x119b86  0      OPC=0     
  popq %rbx                   #  44    0x119b86  1      OPC=1694  
  movl 0xff27259(%rip), %edi  #  45    0x119b87  6      OPC=1156  
  movl $0x1199c0, %esi        #  46    0x119b8d  5      OPC=1154  
  jmpq ._fwalk_reent          #  47    0x119b92  5      OPC=930   
  nop                         #  48    0x119b97  1      OPC=1343  
  nop                         #  49    0x119b98  1      OPC=1343  
  nop                         #  50    0x119b99  1      OPC=1343  
  nop                         #  51    0x119b9a  1      OPC=1343  
  nop                         #  52    0x119b9b  1      OPC=1343  
  nop                         #  53    0x119b9c  1      OPC=1343  
  nop                         #  54    0x119b9d  1      OPC=1343  
  nop                         #  55    0x119b9e  1      OPC=1343  
  nop                         #  56    0x119b9f  1      OPC=1343  
  nop                         #  57    0x119ba0  1      OPC=1343  
  nop                         #  58    0x119ba1  1      OPC=1343  
  nop                         #  59    0x119ba2  1      OPC=1343  
  nop                         #  60    0x119ba3  1      OPC=1343  
  nop                         #  61    0x119ba4  1      OPC=1343  
  nop                         #  62    0x119ba5  1      OPC=1343  
                                                                  
.size fflush, .-fflush

