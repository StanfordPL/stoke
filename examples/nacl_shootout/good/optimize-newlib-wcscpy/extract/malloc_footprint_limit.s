  .text
  .globl malloc_footprint_limit
  .type malloc_footprint_limit, @function

#! file-offset 0x151300
#! rip-offset  0x111300
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.malloc_footprint_limit:      #        0x111300  0      OPC=<label>           
  movl 0xff67a32(%rip), %eax  #  1     0x111300  6      OPC=movl_r32_m32      
  movl $0xffffffff, %edx      #  2     0x111306  6      OPC=movl_r32_imm32_1  
  popq %r11                   #  3     0x11130c  2      OPC=popq_r64_1        
  testl %eax, %eax            #  4     0x11130e  2      OPC=testl_r32_r32     
  cmovel %edx, %eax           #  5     0x111310  3      OPC=cmovel_r32_r32    
  andl $0xffffffe0, %r11d     #  6     0x111313  7      OPC=andl_r32_imm32    
  nop                         #  7     0x11131a  1      OPC=nop               
  nop                         #  8     0x11131b  1      OPC=nop               
  nop                         #  9     0x11131c  1      OPC=nop               
  nop                         #  10    0x11131d  1      OPC=nop               
  addq %r15, %r11             #  11    0x11131e  3      OPC=addq_r64_r64      
  jmpq %r11                   #  12    0x111321  3      OPC=jmpq_r64          
  nop                         #  13    0x111324  1      OPC=nop               
  nop                         #  14    0x111325  1      OPC=nop               
  nop                         #  15    0x111326  1      OPC=nop               
  nop                         #  16    0x111327  1      OPC=nop               
                                                                              
.size malloc_footprint_limit, .-malloc_footprint_limit

