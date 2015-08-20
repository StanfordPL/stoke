  .text
  .globl StayC
  .type StayC, @function

#! file-offset 0x68c40
#! rip-offset  0x28c40
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.StayC:                         #        0x28c40  0      OPC=<label>         
  pushq %r12                    #  1     0x28c40  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x28c42  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x28c43  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x28c46  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x28c49  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x28c4b  5      OPC=movl_r32_imm32  
  nop                           #  7     0x28c50  1      OPC=nop             
  nop                           #  8     0x28c51  1      OPC=nop             
  nop                           #  9     0x28c52  1      OPC=nop             
  nop                           #  10    0x28c53  1      OPC=nop             
  nop                           #  11    0x28c54  1      OPC=nop             
  nop                           #  12    0x28c55  1      OPC=nop             
  nop                           #  13    0x28c56  1      OPC=nop             
  nop                           #  14    0x28c57  1      OPC=nop             
  nop                           #  15    0x28c58  1      OPC=nop             
  nop                           #  16    0x28c59  1      OPC=nop             
  nop                           #  17    0x28c5a  1      OPC=nop             
  callq .Constraint_Create      #  18    0x28c5b  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x28c60  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x28c63  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  21    0x28c66  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  22    0x28c6b  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  23    0x28c6e  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  24    0x28c74  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  25    0x28c77  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  26    0x28c7d  3      OPC=movl_r32_r32    
  nop                           #  27    0x28c80  1      OPC=nop             
  nop                           #  28    0x28c81  1      OPC=nop             
  nop                           #  29    0x28c82  1      OPC=nop             
  nop                           #  30    0x28c83  1      OPC=nop             
  nop                           #  31    0x28c84  1      OPC=nop             
  nop                           #  32    0x28c85  1      OPC=nop             
  nop                           #  33    0x28c86  1      OPC=nop             
  nop                           #  34    0x28c87  1      OPC=nop             
  nop                           #  35    0x28c88  1      OPC=nop             
  nop                           #  36    0x28c89  1      OPC=nop             
  nop                           #  37    0x28c8a  1      OPC=nop             
  nop                           #  38    0x28c8b  1      OPC=nop             
  nop                           #  39    0x28c8c  1      OPC=nop             
  nop                           #  40    0x28c8d  1      OPC=nop             
  nop                           #  41    0x28c8e  1      OPC=nop             
  nop                           #  42    0x28c8f  1      OPC=nop             
  nop                           #  43    0x28c90  1      OPC=nop             
  nop                           #  44    0x28c91  1      OPC=nop             
  nop                           #  45    0x28c92  1      OPC=nop             
  nop                           #  46    0x28c93  1      OPC=nop             
  nop                           #  47    0x28c94  1      OPC=nop             
  nop                           #  48    0x28c95  1      OPC=nop             
  nop                           #  49    0x28c96  1      OPC=nop             
  nop                           #  50    0x28c97  1      OPC=nop             
  nop                           #  51    0x28c98  1      OPC=nop             
  nop                           #  52    0x28c99  1      OPC=nop             
  nop                           #  53    0x28c9a  1      OPC=nop             
  callq .AddConstraint          #  54    0x28c9b  5      OPC=callq_label     
  movl %r12d, %eax              #  55    0x28ca0  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  56    0x28ca3  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  57    0x28ca6  3      OPC=addq_r64_r64    
  popq %rbx                     #  58    0x28ca9  1      OPC=popq_r64_1      
  popq %r12                     #  59    0x28caa  2      OPC=popq_r64_1      
  popq %r11                     #  60    0x28cac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  61    0x28cae  7      OPC=andl_r32_imm32  
  nop                           #  62    0x28cb5  1      OPC=nop             
  nop                           #  63    0x28cb6  1      OPC=nop             
  nop                           #  64    0x28cb7  1      OPC=nop             
  nop                           #  65    0x28cb8  1      OPC=nop             
  addq %r15, %r11               #  66    0x28cb9  3      OPC=addq_r64_r64    
  jmpq %r11                     #  67    0x28cbc  3      OPC=jmpq_r64        
  nop                           #  68    0x28cbf  1      OPC=nop             
  nop                           #  69    0x28cc0  1      OPC=nop             
  nop                           #  70    0x28cc1  1      OPC=nop             
  nop                           #  71    0x28cc2  1      OPC=nop             
  nop                           #  72    0x28cc3  1      OPC=nop             
  nop                           #  73    0x28cc4  1      OPC=nop             
  nop                           #  74    0x28cc5  1      OPC=nop             
  nop                           #  75    0x28cc6  1      OPC=nop             
                                                                             
.size StayC, .-StayC

