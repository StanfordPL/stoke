  .text
  .globl Constraint_Destroy
  .type Constraint_Destroy, @function

#! file-offset 0x66e60
#! rip-offset  0x26e60
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.Constraint_Destroy:        #        0x26e60  0      OPC=<label>         
  pushq %rbx                #  1     0x26e60  1      OPC=pushq_r64_1     
  movl %edi, %ebx           #  2     0x26e61  2      OPC=movl_r32_r32    
  movl %ebx, %ebx           #  3     0x26e63  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d  #  4     0x26e65  4      OPC=movl_r32_m32    
  testl %r9d, %r9d          #  5     0x26e69  3      OPC=testl_r32_r32   
  je .L_26e80               #  6     0x26e6c  2      OPC=je_label        
  movl %ebx, %ebx           #  7     0x26e6e  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)  #  8     0x26e70  8      OPC=movl_m32_imm32  
  movl %ebx, %edi           #  9     0x26e78  2      OPC=movl_r32_r32    
  popq %rbx                 #  10    0x26e7a  1      OPC=popq_r64_1      
  jmpq .free                #  11    0x26e7b  5      OPC=jmpq_label_1    
.L_26e80:                   #        0x26e80  0      OPC=<label>         
  movl $0x10020bf0, %edi    #  12    0x26e80  5      OPC=movl_r32_imm32  
  nop                       #  13    0x26e85  1      OPC=nop             
  nop                       #  14    0x26e86  1      OPC=nop             
  nop                       #  15    0x26e87  1      OPC=nop             
  nop                       #  16    0x26e88  1      OPC=nop             
  nop                       #  17    0x26e89  1      OPC=nop             
  nop                       #  18    0x26e8a  1      OPC=nop             
  nop                       #  19    0x26e8b  1      OPC=nop             
  nop                       #  20    0x26e8c  1      OPC=nop             
  nop                       #  21    0x26e8d  1      OPC=nop             
  nop                       #  22    0x26e8e  1      OPC=nop             
  nop                       #  23    0x26e8f  1      OPC=nop             
  nop                       #  24    0x26e90  1      OPC=nop             
  nop                       #  25    0x26e91  1      OPC=nop             
  nop                       #  26    0x26e92  1      OPC=nop             
  nop                       #  27    0x26e93  1      OPC=nop             
  nop                       #  28    0x26e94  1      OPC=nop             
  nop                       #  29    0x26e95  1      OPC=nop             
  nop                       #  30    0x26e96  1      OPC=nop             
  nop                       #  31    0x26e97  1      OPC=nop             
  nop                       #  32    0x26e98  1      OPC=nop             
  nop                       #  33    0x26e99  1      OPC=nop             
  nop                       #  34    0x26e9a  1      OPC=nop             
  callq .Error              #  35    0x26e9b  5      OPC=callq_label     
  movl %ebx, %ebx           #  36    0x26ea0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)  #  37    0x26ea2  8      OPC=movl_m32_imm32  
  movl %ebx, %edi           #  38    0x26eaa  2      OPC=movl_r32_r32    
  popq %rbx                 #  39    0x26eac  1      OPC=popq_r64_1      
  jmpq .free                #  40    0x26ead  5      OPC=jmpq_label_1    
  nop                       #  41    0x26eb2  1      OPC=nop             
  nop                       #  42    0x26eb3  1      OPC=nop             
  nop                       #  43    0x26eb4  1      OPC=nop             
  nop                       #  44    0x26eb5  1      OPC=nop             
  nop                       #  45    0x26eb6  1      OPC=nop             
  nop                       #  46    0x26eb7  1      OPC=nop             
  nop                       #  47    0x26eb8  1      OPC=nop             
  nop                       #  48    0x26eb9  1      OPC=nop             
  nop                       #  49    0x26eba  1      OPC=nop             
  nop                       #  50    0x26ebb  1      OPC=nop             
  nop                       #  51    0x26ebc  1      OPC=nop             
  nop                       #  52    0x26ebd  1      OPC=nop             
  nop                       #  53    0x26ebe  1      OPC=nop             
  nop                       #  54    0x26ebf  1      OPC=nop             
                                                                         
.size Constraint_Destroy, .-Constraint_Destroy

