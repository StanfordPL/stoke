  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0xea9e0
#! rip-offset  0xaa9e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNSs9_M_assignEPcjc:     #        0xaa9e0  0      OPC=0     
  cmpl $0x1, %esi          #  1     0xaa9e0  3      OPC=470   
  movl %edi, %edi          #  2     0xaa9e3  2      OPC=1157  
  je .L_aaa00              #  3     0xaa9e5  6      OPC=893   
  nop                      #  4     0xaa9eb  1      OPC=1343  
  nop                      #  5     0xaa9ec  1      OPC=1343  
  movsbl %dl, %eax         #  6     0xaa9ed  3      OPC=1282  
  movl %esi, %edx          #  7     0xaa9f0  2      OPC=1157  
  movl %eax, %esi          #  8     0xaa9f2  2      OPC=1157  
  jmpq .memset             #  9     0xaa9f4  5      OPC=930   
  nop                      #  10    0xaa9f9  1      OPC=1343  
  nop                      #  11    0xaa9fa  1      OPC=1343  
  nop                      #  12    0xaa9fb  1      OPC=1343  
  nop                      #  13    0xaa9fc  1      OPC=1343  
  nop                      #  14    0xaa9fd  1      OPC=1343  
  nop                      #  15    0xaa9fe  1      OPC=1343  
  nop                      #  16    0xaa9ff  1      OPC=1343  
  nop                      #  17    0xaaa00  1      OPC=1343  
  nop                      #  18    0xaaa01  1      OPC=1343  
  nop                      #  19    0xaaa02  1      OPC=1343  
  nop                      #  20    0xaaa03  1      OPC=1343  
  nop                      #  21    0xaaa04  1      OPC=1343  
  nop                      #  22    0xaaa05  1      OPC=1343  
.L_aaa00:                  #        0xaaa06  0      OPC=0     
  popq %r11                #  23    0xaaa06  2      OPC=1694  
  movl %edi, %edi          #  24    0xaaa08  2      OPC=1157  
  movb %dl, (%r15,%rdi,1)  #  25    0xaaa0a  4      OPC=1141  
  andl $0xffffffe0, %r11d  #  26    0xaaa0e  7      OPC=131   
  nop                      #  27    0xaaa15  1      OPC=1343  
  nop                      #  28    0xaaa16  1      OPC=1343  
  nop                      #  29    0xaaa17  1      OPC=1343  
  nop                      #  30    0xaaa18  1      OPC=1343  
  addq %r15, %r11          #  31    0xaaa19  3      OPC=72    
  jmpq %r11                #  32    0xaaa1c  3      OPC=928   
  nop                      #  33    0xaaa1f  1      OPC=1343  
  nop                      #  34    0xaaa20  1      OPC=1343  
  nop                      #  35    0xaaa21  1      OPC=1343  
  nop                      #  36    0xaaa22  1      OPC=1343  
  nop                      #  37    0xaaa23  1      OPC=1343  
  nop                      #  38    0xaaa24  1      OPC=1343  
  nop                      #  39    0xaaa25  1      OPC=1343  
  nop                      #  40    0xaaa26  1      OPC=1343  
  nop                      #  41    0xaaa27  1      OPC=1343  
  nop                      #  42    0xaaa28  1      OPC=1343  
  nop                      #  43    0xaaa29  1      OPC=1343  
  nop                      #  44    0xaaa2a  1      OPC=1343  
  nop                      #  45    0xaaa2b  1      OPC=1343  
  nop                      #  46    0xaaa2c  1      OPC=1343  
                                                              
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

