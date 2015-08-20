  .text
  .globl malloc_footprint_limit
  .type malloc_footprint_limit, @function

#! file-offset 0x151600
#! rip-offset  0x111600
#! capacity    32 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.malloc_footprint_limit:      #        0x111600  0      OPC=<label>           
  movl 0xff67732(%rip), %eax  #  1     0x111600  6      OPC=movl_r32_m32      
  movl $0xffffffff, %edx      #  2     0x111606  6      OPC=movl_r32_imm32_1  
  popq %r11                   #  3     0x11160c  2      OPC=popq_r64_1        
  testl %eax, %eax            #  4     0x11160e  2      OPC=testl_r32_r32     
  cmovel %edx, %eax           #  5     0x111610  3      OPC=cmovel_r32_r32    
  andl $0xffffffe0, %r11d     #  6     0x111613  7      OPC=andl_r32_imm32    
  nop                         #  7     0x11161a  1      OPC=nop               
  nop                         #  8     0x11161b  1      OPC=nop               
  nop                         #  9     0x11161c  1      OPC=nop               
  nop                         #  10    0x11161d  1      OPC=nop               
  addq %r15, %r11             #  11    0x11161e  3      OPC=addq_r64_r64      
  jmpq %r11                   #  12    0x111621  3      OPC=jmpq_r64          
  nop                         #  13    0x111624  1      OPC=nop               
  nop                         #  14    0x111625  1      OPC=nop               
  nop                         #  15    0x111626  1      OPC=nop               
  nop                         #  16    0x111627  1      OPC=nop               
                                                                              
.size malloc_footprint_limit, .-malloc_footprint_limit

