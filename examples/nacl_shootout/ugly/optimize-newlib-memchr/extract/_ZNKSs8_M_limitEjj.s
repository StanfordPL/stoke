  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0xeace0
#! rip-offset  0xaace0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode               
._ZNKSs8_M_limitEjj:        #        0xaace0  0      OPC=<label>          
  movl %edi, %edi           #  1     0xaace0  2      OPC=movl_r32_r32     
  movl %edi, %edi           #  2     0xaace2  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax  #  3     0xaace4  4      OPC=movl_r32_m32     
  popq %r11                 #  4     0xaace8  2      OPC=popq_r64_1       
  subl $0xc, %eax           #  5     0xaacea  3      OPC=subl_r32_imm8    
  movl %eax, %eax           #  6     0xaaced  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax  #  7     0xaacef  4      OPC=movl_r32_m32     
  subl %esi, %eax           #  8     0xaacf3  2      OPC=subl_r32_r32     
  cmpl %eax, %edx           #  9     0xaacf5  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax        #  10    0xaacf7  3      OPC=cmovbel_r32_r32  
  nop                       #  11    0xaacfa  1      OPC=nop              
  nop                       #  12    0xaacfb  1      OPC=nop              
  nop                       #  13    0xaacfc  1      OPC=nop              
  nop                       #  14    0xaacfd  1      OPC=nop              
  nop                       #  15    0xaacfe  1      OPC=nop              
  nop                       #  16    0xaacff  1      OPC=nop              
  andl $0xffffffe0, %r11d   #  17    0xaad00  7      OPC=andl_r32_imm32   
  nop                       #  18    0xaad07  1      OPC=nop              
  nop                       #  19    0xaad08  1      OPC=nop              
  nop                       #  20    0xaad09  1      OPC=nop              
  nop                       #  21    0xaad0a  1      OPC=nop              
  addq %r15, %r11           #  22    0xaad0b  3      OPC=addq_r64_r64     
  jmpq %r11                 #  23    0xaad0e  3      OPC=jmpq_r64         
  nop                       #  24    0xaad11  1      OPC=nop              
  nop                       #  25    0xaad12  1      OPC=nop              
  nop                       #  26    0xaad13  1      OPC=nop              
  nop                       #  27    0xaad14  1      OPC=nop              
  nop                       #  28    0xaad15  1      OPC=nop              
  nop                       #  29    0xaad16  1      OPC=nop              
  nop                       #  30    0xaad17  1      OPC=nop              
  nop                       #  31    0xaad18  1      OPC=nop              
  nop                       #  32    0xaad19  1      OPC=nop              
  nop                       #  33    0xaad1a  1      OPC=nop              
  nop                       #  34    0xaad1b  1      OPC=nop              
  nop                       #  35    0xaad1c  1      OPC=nop              
  nop                       #  36    0xaad1d  1      OPC=nop              
  nop                       #  37    0xaad1e  1      OPC=nop              
  nop                       #  38    0xaad1f  1      OPC=nop              
  nop                       #  39    0xaad20  1      OPC=nop              
  nop                       #  40    0xaad21  1      OPC=nop              
  nop                       #  41    0xaad22  1      OPC=nop              
  nop                       #  42    0xaad23  1      OPC=nop              
  nop                       #  43    0xaad24  1      OPC=nop              
  nop                       #  44    0xaad25  1      OPC=nop              
  nop                       #  45    0xaad26  1      OPC=nop              
                                                                          
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

