  .text
  .globl StayC
  .type StayC, @function

#! file-offset 0x691a0
#! rip-offset  0x291a0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.StayC:                         #        0x291a0  0      OPC=<label>         
  pushq %r12                    #  1     0x291a0  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x291a2  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x291a3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x291a6  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x291a9  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x291ab  5      OPC=movl_r32_imm32  
  nop                           #  7     0x291b0  1      OPC=nop             
  nop                           #  8     0x291b1  1      OPC=nop             
  nop                           #  9     0x291b2  1      OPC=nop             
  nop                           #  10    0x291b3  1      OPC=nop             
  nop                           #  11    0x291b4  1      OPC=nop             
  nop                           #  12    0x291b5  1      OPC=nop             
  nop                           #  13    0x291b6  1      OPC=nop             
  nop                           #  14    0x291b7  1      OPC=nop             
  nop                           #  15    0x291b8  1      OPC=nop             
  nop                           #  16    0x291b9  1      OPC=nop             
  nop                           #  17    0x291ba  1      OPC=nop             
  callq .Constraint_Create      #  18    0x291bb  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x291c0  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x291c3  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  21    0x291c6  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  22    0x291cb  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  23    0x291ce  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  24    0x291d4  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  25    0x291d7  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  26    0x291dd  3      OPC=movl_r32_r32    
  nop                           #  27    0x291e0  1      OPC=nop             
  nop                           #  28    0x291e1  1      OPC=nop             
  nop                           #  29    0x291e2  1      OPC=nop             
  nop                           #  30    0x291e3  1      OPC=nop             
  nop                           #  31    0x291e4  1      OPC=nop             
  nop                           #  32    0x291e5  1      OPC=nop             
  nop                           #  33    0x291e6  1      OPC=nop             
  nop                           #  34    0x291e7  1      OPC=nop             
  nop                           #  35    0x291e8  1      OPC=nop             
  nop                           #  36    0x291e9  1      OPC=nop             
  nop                           #  37    0x291ea  1      OPC=nop             
  nop                           #  38    0x291eb  1      OPC=nop             
  nop                           #  39    0x291ec  1      OPC=nop             
  nop                           #  40    0x291ed  1      OPC=nop             
  nop                           #  41    0x291ee  1      OPC=nop             
  nop                           #  42    0x291ef  1      OPC=nop             
  nop                           #  43    0x291f0  1      OPC=nop             
  nop                           #  44    0x291f1  1      OPC=nop             
  nop                           #  45    0x291f2  1      OPC=nop             
  nop                           #  46    0x291f3  1      OPC=nop             
  nop                           #  47    0x291f4  1      OPC=nop             
  nop                           #  48    0x291f5  1      OPC=nop             
  nop                           #  49    0x291f6  1      OPC=nop             
  nop                           #  50    0x291f7  1      OPC=nop             
  nop                           #  51    0x291f8  1      OPC=nop             
  nop                           #  52    0x291f9  1      OPC=nop             
  nop                           #  53    0x291fa  1      OPC=nop             
  callq .AddConstraint          #  54    0x291fb  5      OPC=callq_label     
  movl %r12d, %eax              #  55    0x29200  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  56    0x29203  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  57    0x29206  3      OPC=addq_r64_r64    
  popq %rbx                     #  58    0x29209  1      OPC=popq_r64_1      
  popq %r12                     #  59    0x2920a  2      OPC=popq_r64_1      
  popq %r11                     #  60    0x2920c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  61    0x2920e  7      OPC=andl_r32_imm32  
  nop                           #  62    0x29215  1      OPC=nop             
  nop                           #  63    0x29216  1      OPC=nop             
  nop                           #  64    0x29217  1      OPC=nop             
  nop                           #  65    0x29218  1      OPC=nop             
  addq %r15, %r11               #  66    0x29219  3      OPC=addq_r64_r64    
  jmpq %r11                     #  67    0x2921c  3      OPC=jmpq_r64        
  nop                           #  68    0x2921f  1      OPC=nop             
  nop                           #  69    0x29220  1      OPC=nop             
  nop                           #  70    0x29221  1      OPC=nop             
  nop                           #  71    0x29222  1      OPC=nop             
  nop                           #  72    0x29223  1      OPC=nop             
  nop                           #  73    0x29224  1      OPC=nop             
  nop                           #  74    0x29225  1      OPC=nop             
  nop                           #  75    0x29226  1      OPC=nop             
                                                                             
.size StayC, .-StayC

