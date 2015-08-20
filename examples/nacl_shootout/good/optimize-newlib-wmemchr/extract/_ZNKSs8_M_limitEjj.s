  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0xea5c0
#! rip-offset  0xaa5c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode               
._ZNKSs8_M_limitEjj:        #        0xaa5c0  0      OPC=<label>          
  movl %edi, %edi           #  1     0xaa5c0  2      OPC=movl_r32_r32     
  movl %edi, %edi           #  2     0xaa5c2  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax  #  3     0xaa5c4  4      OPC=movl_r32_m32     
  popq %r11                 #  4     0xaa5c8  2      OPC=popq_r64_1       
  subl $0xc, %eax           #  5     0xaa5ca  3      OPC=subl_r32_imm8    
  movl %eax, %eax           #  6     0xaa5cd  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax  #  7     0xaa5cf  4      OPC=movl_r32_m32     
  subl %esi, %eax           #  8     0xaa5d3  2      OPC=subl_r32_r32     
  cmpl %eax, %edx           #  9     0xaa5d5  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax        #  10    0xaa5d7  3      OPC=cmovbel_r32_r32  
  nop                       #  11    0xaa5da  1      OPC=nop              
  nop                       #  12    0xaa5db  1      OPC=nop              
  nop                       #  13    0xaa5dc  1      OPC=nop              
  nop                       #  14    0xaa5dd  1      OPC=nop              
  nop                       #  15    0xaa5de  1      OPC=nop              
  nop                       #  16    0xaa5df  1      OPC=nop              
  andl $0xffffffe0, %r11d   #  17    0xaa5e0  7      OPC=andl_r32_imm32   
  nop                       #  18    0xaa5e7  1      OPC=nop              
  nop                       #  19    0xaa5e8  1      OPC=nop              
  nop                       #  20    0xaa5e9  1      OPC=nop              
  nop                       #  21    0xaa5ea  1      OPC=nop              
  addq %r15, %r11           #  22    0xaa5eb  3      OPC=addq_r64_r64     
  jmpq %r11                 #  23    0xaa5ee  3      OPC=jmpq_r64         
  nop                       #  24    0xaa5f1  1      OPC=nop              
  nop                       #  25    0xaa5f2  1      OPC=nop              
  nop                       #  26    0xaa5f3  1      OPC=nop              
  nop                       #  27    0xaa5f4  1      OPC=nop              
  nop                       #  28    0xaa5f5  1      OPC=nop              
  nop                       #  29    0xaa5f6  1      OPC=nop              
  nop                       #  30    0xaa5f7  1      OPC=nop              
  nop                       #  31    0xaa5f8  1      OPC=nop              
  nop                       #  32    0xaa5f9  1      OPC=nop              
  nop                       #  33    0xaa5fa  1      OPC=nop              
  nop                       #  34    0xaa5fb  1      OPC=nop              
  nop                       #  35    0xaa5fc  1      OPC=nop              
  nop                       #  36    0xaa5fd  1      OPC=nop              
  nop                       #  37    0xaa5fe  1      OPC=nop              
  nop                       #  38    0xaa5ff  1      OPC=nop              
  nop                       #  39    0xaa600  1      OPC=nop              
  nop                       #  40    0xaa601  1      OPC=nop              
  nop                       #  41    0xaa602  1      OPC=nop              
  nop                       #  42    0xaa603  1      OPC=nop              
  nop                       #  43    0xaa604  1      OPC=nop              
  nop                       #  44    0xaa605  1      OPC=nop              
  nop                       #  45    0xaa606  1      OPC=nop              
                                                                          
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

