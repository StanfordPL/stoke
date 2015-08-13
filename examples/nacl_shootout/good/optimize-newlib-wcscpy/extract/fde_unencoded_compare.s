  .text
  .globl fde_unencoded_compare
  .type fde_unencoded_compare, @function

#! file-offset 0x14ea80
#! rip-offset  0x10ea80
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode               
.fde_unencoded_compare:        #        0x10ea80  0      OPC=<label>          
  movl %esi, %esi              #  1     0x10ea80  2      OPC=movl_r32_r32     
  movl %edx, %edx              #  2     0x10ea82  2      OPC=movl_r32_r32     
  movl $0x1, %eax              #  3     0x10ea84  5      OPC=movl_r32_imm32   
  movl %edx, %edx              #  4     0x10ea89  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdx,1), %edx  #  5     0x10ea8b  5      OPC=movl_r32_m32     
  movl %esi, %esi              #  6     0x10ea90  2      OPC=movl_r32_r32     
  cmpl %edx, 0x8(%r15,%rsi,1)  #  7     0x10ea92  5      OPC=cmpl_m32_r32     
  popq %r11                    #  8     0x10ea97  2      OPC=popq_r64_1       
  sbbl %ecx, %ecx              #  9     0x10ea99  2      OPC=sbbl_r32_r32     
  nop                          #  10    0x10ea9b  1      OPC=nop              
  nop                          #  11    0x10ea9c  1      OPC=nop              
  nop                          #  12    0x10ea9d  1      OPC=nop              
  nop                          #  13    0x10ea9e  1      OPC=nop              
  nop                          #  14    0x10ea9f  1      OPC=nop              
  movl %esi, %esi              #  15    0x10eaa0  2      OPC=movl_r32_r32     
  cmpl %edx, 0x8(%r15,%rsi,1)  #  16    0x10eaa2  5      OPC=cmpl_m32_r32     
  cmovbel %ecx, %eax           #  17    0x10eaa7  3      OPC=cmovbel_r32_r32  
  andl $0xffffffe0, %r11d      #  18    0x10eaaa  7      OPC=andl_r32_imm32   
  nop                          #  19    0x10eab1  1      OPC=nop              
  nop                          #  20    0x10eab2  1      OPC=nop              
  nop                          #  21    0x10eab3  1      OPC=nop              
  nop                          #  22    0x10eab4  1      OPC=nop              
  addq %r15, %r11              #  23    0x10eab5  3      OPC=addq_r64_r64     
  jmpq %r11                    #  24    0x10eab8  3      OPC=jmpq_r64         
  nop                          #  25    0x10eabb  1      OPC=nop              
  nop                          #  26    0x10eabc  1      OPC=nop              
  nop                          #  27    0x10eabd  1      OPC=nop              
  nop                          #  28    0x10eabe  1      OPC=nop              
  nop                          #  29    0x10eabf  1      OPC=nop              
  nop                          #  30    0x10eac0  1      OPC=nop              
  nop                          #  31    0x10eac1  1      OPC=nop              
  nop                          #  32    0x10eac2  1      OPC=nop              
  nop                          #  33    0x10eac3  1      OPC=nop              
  nop                          #  34    0x10eac4  1      OPC=nop              
  nop                          #  35    0x10eac5  1      OPC=nop              
  nop                          #  36    0x10eac6  1      OPC=nop              
                                                                              
.size fde_unencoded_compare, .-fde_unencoded_compare

