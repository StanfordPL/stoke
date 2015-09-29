  .text
  .globl EditC
  .type EditC, @function

#! file-offset 0x69060
#! rip-offset  0x29060
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.EditC:                         #        0x29060  0      OPC=<label>         
  pushq %r12                    #  1     0x29060  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x29062  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x29063  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x29066  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x29069  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x2906b  5      OPC=movl_r32_imm32  
  nop                           #  7     0x29070  1      OPC=nop             
  nop                           #  8     0x29071  1      OPC=nop             
  nop                           #  9     0x29072  1      OPC=nop             
  nop                           #  10    0x29073  1      OPC=nop             
  nop                           #  11    0x29074  1      OPC=nop             
  nop                           #  12    0x29075  1      OPC=nop             
  nop                           #  13    0x29076  1      OPC=nop             
  nop                           #  14    0x29077  1      OPC=nop             
  nop                           #  15    0x29078  1      OPC=nop             
  nop                           #  16    0x29079  1      OPC=nop             
  nop                           #  17    0x2907a  1      OPC=nop             
  callq .Constraint_Create      #  18    0x2907b  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x29080  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x29083  3      OPC=movl_r32_r32    
  movl $0x1, 0x4(%r15,%r12,1)   #  21    0x29086  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d             #  22    0x2908f  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  23    0x29092  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  24    0x29097  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  25    0x2909a  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  26    0x290a0  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  27    0x290a3  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  28    0x290a9  3      OPC=movl_r32_r32    
  nop                           #  29    0x290ac  1      OPC=nop             
  nop                           #  30    0x290ad  1      OPC=nop             
  nop                           #  31    0x290ae  1      OPC=nop             
  nop                           #  32    0x290af  1      OPC=nop             
  nop                           #  33    0x290b0  1      OPC=nop             
  nop                           #  34    0x290b1  1      OPC=nop             
  nop                           #  35    0x290b2  1      OPC=nop             
  nop                           #  36    0x290b3  1      OPC=nop             
  nop                           #  37    0x290b4  1      OPC=nop             
  nop                           #  38    0x290b5  1      OPC=nop             
  nop                           #  39    0x290b6  1      OPC=nop             
  nop                           #  40    0x290b7  1      OPC=nop             
  nop                           #  41    0x290b8  1      OPC=nop             
  nop                           #  42    0x290b9  1      OPC=nop             
  nop                           #  43    0x290ba  1      OPC=nop             
  callq .AddConstraint          #  44    0x290bb  5      OPC=callq_label     
  movl %r12d, %eax              #  45    0x290c0  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  46    0x290c3  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  47    0x290c6  3      OPC=addq_r64_r64    
  popq %rbx                     #  48    0x290c9  1      OPC=popq_r64_1      
  popq %r12                     #  49    0x290ca  2      OPC=popq_r64_1      
  popq %r11                     #  50    0x290cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  51    0x290ce  7      OPC=andl_r32_imm32  
  nop                           #  52    0x290d5  1      OPC=nop             
  nop                           #  53    0x290d6  1      OPC=nop             
  nop                           #  54    0x290d7  1      OPC=nop             
  nop                           #  55    0x290d8  1      OPC=nop             
  addq %r15, %r11               #  56    0x290d9  3      OPC=addq_r64_r64    
  jmpq %r11                     #  57    0x290dc  3      OPC=jmpq_r64        
  nop                           #  58    0x290df  1      OPC=nop             
  nop                           #  59    0x290e0  1      OPC=nop             
  nop                           #  60    0x290e1  1      OPC=nop             
  nop                           #  61    0x290e2  1      OPC=nop             
  nop                           #  62    0x290e3  1      OPC=nop             
  nop                           #  63    0x290e4  1      OPC=nop             
  nop                           #  64    0x290e5  1      OPC=nop             
  nop                           #  65    0x290e6  1      OPC=nop             
                                                                             
.size EditC, .-EditC

