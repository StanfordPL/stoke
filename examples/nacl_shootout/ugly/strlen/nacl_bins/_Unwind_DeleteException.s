  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x149560
#! rip-offset  0x109560
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
._Unwind_DeleteException:      #        0x109560  0      OPC=0     
  movl %edi, %esi              #  1     0x109560  2      OPC=1157  
  movl %esi, %esi              #  2     0x109562  2      OPC=1157  
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x109564  5      OPC=1156  
  testq %rax, %rax             #  4     0x109569  3      OPC=2438  
  je .L_109580                 #  5     0x10956c  6      OPC=893   
  nop                          #  6     0x109572  1      OPC=1343  
  nop                          #  7     0x109573  1      OPC=1343  
  movl $0x1, %edi              #  8     0x109574  5      OPC=1154  
  andl $0xffffffe0, %eax       #  9     0x109579  6      OPC=131   
  nop                          #  10    0x10957f  1      OPC=1343  
  nop                          #  11    0x109580  1      OPC=1343  
  nop                          #  12    0x109581  1      OPC=1343  
  addq %r15, %rax              #  13    0x109582  3      OPC=72    
  jmpq %rax                    #  14    0x109585  2      OPC=928   
  nop                          #  15    0x109587  1      OPC=1343  
  nop                          #  16    0x109588  1      OPC=1343  
  nop                          #  17    0x109589  1      OPC=1343  
  nop                          #  18    0x10958a  1      OPC=1343  
  nop                          #  19    0x10958b  1      OPC=1343  
.L_109580:                     #        0x10958c  0      OPC=0     
  popq %r11                    #  20    0x10958c  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  21    0x10958e  7      OPC=131   
  nop                          #  22    0x109595  1      OPC=1343  
  nop                          #  23    0x109596  1      OPC=1343  
  nop                          #  24    0x109597  1      OPC=1343  
  nop                          #  25    0x109598  1      OPC=1343  
  addq %r15, %r11              #  26    0x109599  3      OPC=72    
  jmpq %r11                    #  27    0x10959c  3      OPC=928   
  nop                          #  28    0x10959f  1      OPC=1343  
  nop                          #  29    0x1095a0  1      OPC=1343  
  nop                          #  30    0x1095a1  1      OPC=1343  
  nop                          #  31    0x1095a2  1      OPC=1343  
  nop                          #  32    0x1095a3  1      OPC=1343  
  nop                          #  33    0x1095a4  1      OPC=1343  
  nop                          #  34    0x1095a5  1      OPC=1343  
  nop                          #  35    0x1095a6  1      OPC=1343  
  nop                          #  36    0x1095a7  1      OPC=1343  
  nop                          #  37    0x1095a8  1      OPC=1343  
  nop                          #  38    0x1095a9  1      OPC=1343  
  nop                          #  39    0x1095aa  1      OPC=1343  
  nop                          #  40    0x1095ab  1      OPC=1343  
  nop                          #  41    0x1095ac  1      OPC=1343  
  nop                          #  42    0x1095ad  1      OPC=1343  
  nop                          #  43    0x1095ae  1      OPC=1343  
  nop                          #  44    0x1095af  1      OPC=1343  
  nop                          #  45    0x1095b0  1      OPC=1343  
  nop                          #  46    0x1095b1  1      OPC=1343  
  nop                          #  47    0x1095b2  1      OPC=1343  
                                                                   
.size _Unwind_DeleteException, .-_Unwind_DeleteException

