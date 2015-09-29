  .text
  .globl fde_unencoded_compare
  .type fde_unencoded_compare, @function

#! file-offset 0x14f4a0
#! rip-offset  0x10f4a0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode               
.fde_unencoded_compare:        #        0x10f4a0  0      OPC=<label>          
  movl %esi, %esi              #  1     0x10f4a0  2      OPC=movl_r32_r32     
  movl %edx, %edx              #  2     0x10f4a2  2      OPC=movl_r32_r32     
  movl $0x1, %eax              #  3     0x10f4a4  5      OPC=movl_r32_imm32   
  movl %edx, %edx              #  4     0x10f4a9  2      OPC=movl_r32_r32     
  movl 0x8(%r15,%rdx,1), %edx  #  5     0x10f4ab  5      OPC=movl_r32_m32     
  movl %esi, %esi              #  6     0x10f4b0  2      OPC=movl_r32_r32     
  cmpl %edx, 0x8(%r15,%rsi,1)  #  7     0x10f4b2  5      OPC=cmpl_m32_r32     
  popq %r11                    #  8     0x10f4b7  2      OPC=popq_r64_1       
  sbbl %ecx, %ecx              #  9     0x10f4b9  2      OPC=sbbl_r32_r32     
  nop                          #  10    0x10f4bb  1      OPC=nop              
  nop                          #  11    0x10f4bc  1      OPC=nop              
  nop                          #  12    0x10f4bd  1      OPC=nop              
  nop                          #  13    0x10f4be  1      OPC=nop              
  nop                          #  14    0x10f4bf  1      OPC=nop              
  movl %esi, %esi              #  15    0x10f4c0  2      OPC=movl_r32_r32     
  cmpl %edx, 0x8(%r15,%rsi,1)  #  16    0x10f4c2  5      OPC=cmpl_m32_r32     
  cmovbel %ecx, %eax           #  17    0x10f4c7  3      OPC=cmovbel_r32_r32  
  andl $0xffffffe0, %r11d      #  18    0x10f4ca  7      OPC=andl_r32_imm32   
  nop                          #  19    0x10f4d1  1      OPC=nop              
  nop                          #  20    0x10f4d2  1      OPC=nop              
  nop                          #  21    0x10f4d3  1      OPC=nop              
  nop                          #  22    0x10f4d4  1      OPC=nop              
  addq %r15, %r11              #  23    0x10f4d5  3      OPC=addq_r64_r64     
  jmpq %r11                    #  24    0x10f4d8  3      OPC=jmpq_r64         
  nop                          #  25    0x10f4db  1      OPC=nop              
  nop                          #  26    0x10f4dc  1      OPC=nop              
  nop                          #  27    0x10f4dd  1      OPC=nop              
  nop                          #  28    0x10f4de  1      OPC=nop              
  nop                          #  29    0x10f4df  1      OPC=nop              
  nop                          #  30    0x10f4e0  1      OPC=nop              
  nop                          #  31    0x10f4e1  1      OPC=nop              
  nop                          #  32    0x10f4e2  1      OPC=nop              
  nop                          #  33    0x10f4e3  1      OPC=nop              
  nop                          #  34    0x10f4e4  1      OPC=nop              
  nop                          #  35    0x10f4e5  1      OPC=nop              
  nop                          #  36    0x10f4e6  1      OPC=nop              
                                                                              
.size fde_unencoded_compare, .-fde_unencoded_compare

