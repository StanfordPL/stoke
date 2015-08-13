  .text
  .globl StayC
  .type StayC, @function

#! file-offset 0x68c20
#! rip-offset  0x28c20
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.StayC:                         #        0x28c20  0      OPC=<label>         
  pushq %r12                    #  1     0x28c20  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x28c22  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x28c23  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x28c26  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x28c29  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x28c2b  5      OPC=movl_r32_imm32  
  nop                           #  7     0x28c30  1      OPC=nop             
  nop                           #  8     0x28c31  1      OPC=nop             
  nop                           #  9     0x28c32  1      OPC=nop             
  nop                           #  10    0x28c33  1      OPC=nop             
  nop                           #  11    0x28c34  1      OPC=nop             
  nop                           #  12    0x28c35  1      OPC=nop             
  nop                           #  13    0x28c36  1      OPC=nop             
  nop                           #  14    0x28c37  1      OPC=nop             
  nop                           #  15    0x28c38  1      OPC=nop             
  nop                           #  16    0x28c39  1      OPC=nop             
  nop                           #  17    0x28c3a  1      OPC=nop             
  callq .Constraint_Create      #  18    0x28c3b  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x28c40  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x28c43  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  21    0x28c46  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  22    0x28c4b  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  23    0x28c4e  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  24    0x28c54  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  25    0x28c57  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  26    0x28c5d  3      OPC=movl_r32_r32    
  nop                           #  27    0x28c60  1      OPC=nop             
  nop                           #  28    0x28c61  1      OPC=nop             
  nop                           #  29    0x28c62  1      OPC=nop             
  nop                           #  30    0x28c63  1      OPC=nop             
  nop                           #  31    0x28c64  1      OPC=nop             
  nop                           #  32    0x28c65  1      OPC=nop             
  nop                           #  33    0x28c66  1      OPC=nop             
  nop                           #  34    0x28c67  1      OPC=nop             
  nop                           #  35    0x28c68  1      OPC=nop             
  nop                           #  36    0x28c69  1      OPC=nop             
  nop                           #  37    0x28c6a  1      OPC=nop             
  nop                           #  38    0x28c6b  1      OPC=nop             
  nop                           #  39    0x28c6c  1      OPC=nop             
  nop                           #  40    0x28c6d  1      OPC=nop             
  nop                           #  41    0x28c6e  1      OPC=nop             
  nop                           #  42    0x28c6f  1      OPC=nop             
  nop                           #  43    0x28c70  1      OPC=nop             
  nop                           #  44    0x28c71  1      OPC=nop             
  nop                           #  45    0x28c72  1      OPC=nop             
  nop                           #  46    0x28c73  1      OPC=nop             
  nop                           #  47    0x28c74  1      OPC=nop             
  nop                           #  48    0x28c75  1      OPC=nop             
  nop                           #  49    0x28c76  1      OPC=nop             
  nop                           #  50    0x28c77  1      OPC=nop             
  nop                           #  51    0x28c78  1      OPC=nop             
  nop                           #  52    0x28c79  1      OPC=nop             
  nop                           #  53    0x28c7a  1      OPC=nop             
  callq .AddConstraint          #  54    0x28c7b  5      OPC=callq_label     
  movl %r12d, %eax              #  55    0x28c80  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  56    0x28c83  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  57    0x28c86  3      OPC=addq_r64_r64    
  popq %rbx                     #  58    0x28c89  1      OPC=popq_r64_1      
  popq %r12                     #  59    0x28c8a  2      OPC=popq_r64_1      
  popq %r11                     #  60    0x28c8c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  61    0x28c8e  7      OPC=andl_r32_imm32  
  nop                           #  62    0x28c95  1      OPC=nop             
  nop                           #  63    0x28c96  1      OPC=nop             
  nop                           #  64    0x28c97  1      OPC=nop             
  nop                           #  65    0x28c98  1      OPC=nop             
  addq %r15, %r11               #  66    0x28c99  3      OPC=addq_r64_r64    
  jmpq %r11                     #  67    0x28c9c  3      OPC=jmpq_r64        
  nop                           #  68    0x28c9f  1      OPC=nop             
  nop                           #  69    0x28ca0  1      OPC=nop             
  nop                           #  70    0x28ca1  1      OPC=nop             
  nop                           #  71    0x28ca2  1      OPC=nop             
  nop                           #  72    0x28ca3  1      OPC=nop             
  nop                           #  73    0x28ca4  1      OPC=nop             
  nop                           #  74    0x28ca5  1      OPC=nop             
  nop                           #  75    0x28ca6  1      OPC=nop             
                                                                             
.size StayC, .-StayC

