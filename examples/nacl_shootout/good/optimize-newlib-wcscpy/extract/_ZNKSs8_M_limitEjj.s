  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0xea2c0
#! rip-offset  0xaa2c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode               
._ZNKSs8_M_limitEjj:        #        0xaa2c0  0      OPC=<label>          
  movl %edi, %edi           #  1     0xaa2c0  2      OPC=movl_r32_r32     
  movl %edi, %edi           #  2     0xaa2c2  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax  #  3     0xaa2c4  4      OPC=movl_r32_m32     
  popq %r11                 #  4     0xaa2c8  2      OPC=popq_r64_1       
  subl $0xc, %eax           #  5     0xaa2ca  3      OPC=subl_r32_imm8    
  movl %eax, %eax           #  6     0xaa2cd  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax  #  7     0xaa2cf  4      OPC=movl_r32_m32     
  subl %esi, %eax           #  8     0xaa2d3  2      OPC=subl_r32_r32     
  cmpl %eax, %edx           #  9     0xaa2d5  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax        #  10    0xaa2d7  3      OPC=cmovbel_r32_r32  
  nop                       #  11    0xaa2da  1      OPC=nop              
  nop                       #  12    0xaa2db  1      OPC=nop              
  nop                       #  13    0xaa2dc  1      OPC=nop              
  nop                       #  14    0xaa2dd  1      OPC=nop              
  nop                       #  15    0xaa2de  1      OPC=nop              
  nop                       #  16    0xaa2df  1      OPC=nop              
  andl $0xffffffe0, %r11d   #  17    0xaa2e0  7      OPC=andl_r32_imm32   
  nop                       #  18    0xaa2e7  1      OPC=nop              
  nop                       #  19    0xaa2e8  1      OPC=nop              
  nop                       #  20    0xaa2e9  1      OPC=nop              
  nop                       #  21    0xaa2ea  1      OPC=nop              
  addq %r15, %r11           #  22    0xaa2eb  3      OPC=addq_r64_r64     
  jmpq %r11                 #  23    0xaa2ee  3      OPC=jmpq_r64         
  nop                       #  24    0xaa2f1  1      OPC=nop              
  nop                       #  25    0xaa2f2  1      OPC=nop              
  nop                       #  26    0xaa2f3  1      OPC=nop              
  nop                       #  27    0xaa2f4  1      OPC=nop              
  nop                       #  28    0xaa2f5  1      OPC=nop              
  nop                       #  29    0xaa2f6  1      OPC=nop              
  nop                       #  30    0xaa2f7  1      OPC=nop              
  nop                       #  31    0xaa2f8  1      OPC=nop              
  nop                       #  32    0xaa2f9  1      OPC=nop              
  nop                       #  33    0xaa2fa  1      OPC=nop              
  nop                       #  34    0xaa2fb  1      OPC=nop              
  nop                       #  35    0xaa2fc  1      OPC=nop              
  nop                       #  36    0xaa2fd  1      OPC=nop              
  nop                       #  37    0xaa2fe  1      OPC=nop              
  nop                       #  38    0xaa2ff  1      OPC=nop              
  nop                       #  39    0xaa300  1      OPC=nop              
  nop                       #  40    0xaa301  1      OPC=nop              
  nop                       #  41    0xaa302  1      OPC=nop              
  nop                       #  42    0xaa303  1      OPC=nop              
  nop                       #  43    0xaa304  1      OPC=nop              
  nop                       #  44    0xaa305  1      OPC=nop              
  nop                       #  45    0xaa306  1      OPC=nop              
                                                                          
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

