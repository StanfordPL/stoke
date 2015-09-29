  .text
  .globl Constraint_Destroy
  .type Constraint_Destroy, @function

#! file-offset 0x673c0
#! rip-offset  0x273c0
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.Constraint_Destroy:        #        0x273c0  0      OPC=<label>         
  pushq %rbx                #  1     0x273c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx           #  2     0x273c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx           #  3     0x273c3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d  #  4     0x273c5  4      OPC=movl_r32_m32    
  testl %r9d, %r9d          #  5     0x273c9  3      OPC=testl_r32_r32   
  je .L_273e0               #  6     0x273cc  2      OPC=je_label        
  movl %ebx, %ebx           #  7     0x273ce  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)  #  8     0x273d0  8      OPC=movl_m32_imm32  
  movl %ebx, %edi           #  9     0x273d8  2      OPC=movl_r32_r32    
  popq %rbx                 #  10    0x273da  1      OPC=popq_r64_1      
  jmpq .free                #  11    0x273db  5      OPC=jmpq_label_1    
.L_273e0:                   #        0x273e0  0      OPC=<label>         
  movl $0x10020bf0, %edi    #  12    0x273e0  5      OPC=movl_r32_imm32  
  nop                       #  13    0x273e5  1      OPC=nop             
  nop                       #  14    0x273e6  1      OPC=nop             
  nop                       #  15    0x273e7  1      OPC=nop             
  nop                       #  16    0x273e8  1      OPC=nop             
  nop                       #  17    0x273e9  1      OPC=nop             
  nop                       #  18    0x273ea  1      OPC=nop             
  nop                       #  19    0x273eb  1      OPC=nop             
  nop                       #  20    0x273ec  1      OPC=nop             
  nop                       #  21    0x273ed  1      OPC=nop             
  nop                       #  22    0x273ee  1      OPC=nop             
  nop                       #  23    0x273ef  1      OPC=nop             
  nop                       #  24    0x273f0  1      OPC=nop             
  nop                       #  25    0x273f1  1      OPC=nop             
  nop                       #  26    0x273f2  1      OPC=nop             
  nop                       #  27    0x273f3  1      OPC=nop             
  nop                       #  28    0x273f4  1      OPC=nop             
  nop                       #  29    0x273f5  1      OPC=nop             
  nop                       #  30    0x273f6  1      OPC=nop             
  nop                       #  31    0x273f7  1      OPC=nop             
  nop                       #  32    0x273f8  1      OPC=nop             
  nop                       #  33    0x273f9  1      OPC=nop             
  nop                       #  34    0x273fa  1      OPC=nop             
  callq .Error              #  35    0x273fb  5      OPC=callq_label     
  movl %ebx, %ebx           #  36    0x27400  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)  #  37    0x27402  8      OPC=movl_m32_imm32  
  movl %ebx, %edi           #  38    0x2740a  2      OPC=movl_r32_r32    
  popq %rbx                 #  39    0x2740c  1      OPC=popq_r64_1      
  jmpq .free                #  40    0x2740d  5      OPC=jmpq_label_1    
  nop                       #  41    0x27412  1      OPC=nop             
  nop                       #  42    0x27413  1      OPC=nop             
  nop                       #  43    0x27414  1      OPC=nop             
  nop                       #  44    0x27415  1      OPC=nop             
  nop                       #  45    0x27416  1      OPC=nop             
  nop                       #  46    0x27417  1      OPC=nop             
  nop                       #  47    0x27418  1      OPC=nop             
  nop                       #  48    0x27419  1      OPC=nop             
  nop                       #  49    0x2741a  1      OPC=nop             
  nop                       #  50    0x2741b  1      OPC=nop             
  nop                       #  51    0x2741c  1      OPC=nop             
  nop                       #  52    0x2741d  1      OPC=nop             
  nop                       #  53    0x2741e  1      OPC=nop             
  nop                       #  54    0x2741f  1      OPC=nop             
                                                                         
.size Constraint_Destroy, .-Constraint_Destroy

