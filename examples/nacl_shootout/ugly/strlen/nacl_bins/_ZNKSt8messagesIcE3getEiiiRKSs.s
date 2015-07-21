  .text
  .globl _ZNKSt8messagesIcE3getEiiiRKSs
  .type _ZNKSt8messagesIcE3getEiiiRKSs, @function

#! file-offset 0xb8840
#! rip-offset  0x78840
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
._ZNKSt8messagesIcE3getEiiiRKSs:  #        0x78840  0      OPC=0     
  movl %esi, %esi                 #  1     0x78840  2      OPC=1157  
  pushq %rbx                      #  2     0x78842  1      OPC=1861  
  movl %edi, %ebx                 #  3     0x78843  2      OPC=1157  
  movl %esi, %esi                 #  4     0x78845  2      OPC=1157  
  movl (%r15,%rsi,1), %eax        #  5     0x78847  4      OPC=1156  
  movl %ebx, %edi                 #  6     0x7884b  2      OPC=1157  
  movl %eax, %eax                 #  7     0x7884d  2      OPC=1157  
  movl 0xc(%r15,%rax,1), %eax     #  8     0x7884f  5      OPC=1156  
  nop                             #  9     0x78854  1      OPC=1343  
  nop                             #  10    0x78855  1      OPC=1343  
  nop                             #  11    0x78856  1      OPC=1343  
  nop                             #  12    0x78857  1      OPC=1343  
  andl $0xffffffe0, %eax          #  13    0x78858  6      OPC=131   
  nop                             #  14    0x7885e  1      OPC=1343  
  nop                             #  15    0x7885f  1      OPC=1343  
  nop                             #  16    0x78860  1      OPC=1343  
  addq %r15, %rax                 #  17    0x78861  3      OPC=72    
  callq %rax                      #  18    0x78864  2      OPC=258   
  movl %ebx, %eax                 #  19    0x78866  2      OPC=1157  
  popq %rbx                       #  20    0x78868  1      OPC=1694  
  popq %r11                       #  21    0x78869  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  22    0x7886b  7      OPC=131   
  nop                             #  23    0x78872  1      OPC=1343  
  nop                             #  24    0x78873  1      OPC=1343  
  nop                             #  25    0x78874  1      OPC=1343  
  nop                             #  26    0x78875  1      OPC=1343  
  addq %r15, %r11                 #  27    0x78876  3      OPC=72    
  jmpq %r11                       #  28    0x78879  3      OPC=928   
  nop                             #  29    0x7887c  1      OPC=1343  
  nop                             #  30    0x7887d  1      OPC=1343  
  nop                             #  31    0x7887e  1      OPC=1343  
  nop                             #  32    0x7887f  1      OPC=1343  
  nop                             #  33    0x78880  1      OPC=1343  
  nop                             #  34    0x78881  1      OPC=1343  
  nop                             #  35    0x78882  1      OPC=1343  
  nop                             #  36    0x78883  1      OPC=1343  
  nop                             #  37    0x78884  1      OPC=1343  
  nop                             #  38    0x78885  1      OPC=1343  
  nop                             #  39    0x78886  1      OPC=1343  
  nop                             #  40    0x78887  1      OPC=1343  
  nop                             #  41    0x78888  1      OPC=1343  
  nop                             #  42    0x78889  1      OPC=1343  
  nop                             #  43    0x7888a  1      OPC=1343  
  nop                             #  44    0x7888b  1      OPC=1343  
  nop                             #  45    0x7888c  1      OPC=1343  
                                                                     
.size _ZNKSt8messagesIcE3getEiiiRKSs, .-_ZNKSt8messagesIcE3getEiiiRKSs

